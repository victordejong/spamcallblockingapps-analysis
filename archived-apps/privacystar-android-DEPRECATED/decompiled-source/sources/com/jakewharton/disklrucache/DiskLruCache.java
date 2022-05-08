package com.jakewharton.disklrucache;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/jakewharton/disklrucache/DiskLruCache.class */
public final class DiskLruCache implements Closeable {
    static final long ANY_SEQUENCE_NUMBER = -1;
    private static final String CLEAN = "CLEAN";
    private static final String DIRTY = "DIRTY";
    static final String JOURNAL_FILE = "journal";
    static final String JOURNAL_FILE_BACKUP = "journal.bkp";
    static final String JOURNAL_FILE_TEMP = "journal.tmp";
    static final String MAGIC = "libcore.io.DiskLruCache";
    private static final String READ = "READ";
    private static final String REMOVE = "REMOVE";
    static final String VERSION_1 = "1";
    private final int appVersion;
    private final File directory;
    private final File journalFile;
    private final File journalFileBackup;
    private final File journalFileTmp;
    private Writer journalWriter;
    private long maxSize;
    private int redundantOpCount;
    private final int valueCount;
    static final Pattern LEGAL_KEY_PATTERN = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream NULL_OUTPUT_STREAM = new OutputStream() { // from class: com.jakewharton.disklrucache.DiskLruCache.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };
    private long size = 0;
    private final LinkedHashMap<String, Entry> lruEntries = new LinkedHashMap<>(0, 0.75f, true);
    private long nextSequenceNumber = 0;
    final ThreadPoolExecutor executorService = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    private final Callable<Void> cleanupCallable = new Callable<Void>() { // from class: com.jakewharton.disklrucache.DiskLruCache.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (DiskLruCache.this) {
                if (DiskLruCache.this.journalWriter == null) {
                    return null;
                }
                DiskLruCache.this.trimToSize();
                if (DiskLruCache.this.journalRebuildRequired()) {
                    DiskLruCache.this.rebuildJournal();
                    DiskLruCache.this.redundantOpCount = 0;
                }
                return null;
            }
        }
    };

    /* loaded from: classes-dex2jar.jar:com/jakewharton/disklrucache/DiskLruCache$Editor.class */
    public final class Editor {
        private boolean committed;
        private final Entry entry;
        private boolean hasErrors;
        private final boolean[] written;

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes-dex2jar.jar:com/jakewharton/disklrucache/DiskLruCache$Editor$FaultHidingOutputStream.class */
        public class FaultHidingOutputStream extends FilterOutputStream {
            private FaultHidingOutputStream(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    this.out.close();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    this.out.flush();
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    this.out.write(i);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    this.out.write(bArr, i, i2);
                } catch (IOException e) {
                    Editor.this.hasErrors = true;
                }
            }
        }

        private Editor(Entry entry) {
            this.entry = entry;
            this.written = entry.readable ? null : new boolean[DiskLruCache.this.valueCount];
        }

        public void abort() throws IOException {
            DiskLruCache.this.completeEdit(this, false);
        }

        public void abortUnlessCommitted() {
            if (!this.committed) {
                try {
                    abort();
                } catch (IOException e) {
                }
            }
        }

        public void commit() throws IOException {
            if (this.hasErrors) {
                DiskLruCache.this.completeEdit(this, false);
                DiskLruCache.this.remove(this.entry.key);
            } else {
                DiskLruCache.this.completeEdit(this, true);
            }
            this.committed = true;
        }

        public String getString(int i) throws IOException {
            InputStream newInputStream = newInputStream(i);
            return newInputStream != null ? DiskLruCache.inputStreamToString(newInputStream) : null;
        }

        public InputStream newInputStream(int i) throws IOException {
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                } else if (!this.entry.readable) {
                    return null;
                } else {
                    try {
                        return new FileInputStream(this.entry.getCleanFile(i));
                    } catch (FileNotFoundException e) {
                        return null;
                    }
                }
            }
        }

        public OutputStream newOutputStream(int i) throws IOException {
            FileOutputStream fileOutputStream;
            FaultHidingOutputStream faultHidingOutputStream;
            synchronized (DiskLruCache.this) {
                if (this.entry.currentEditor != this) {
                    throw new IllegalStateException();
                }
                if (!this.entry.readable) {
                    this.written[i] = true;
                }
                File dirtyFile = this.entry.getDirtyFile(i);
                try {
                    fileOutputStream = new FileOutputStream(dirtyFile);
                } catch (FileNotFoundException e) {
                    DiskLruCache.this.directory.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(dirtyFile);
                    } catch (FileNotFoundException e2) {
                        return DiskLruCache.NULL_OUTPUT_STREAM;
                    }
                }
                faultHidingOutputStream = new FaultHidingOutputStream(fileOutputStream);
            }
            return faultHidingOutputStream;
        }

        public void set(int i, String str) throws IOException {
            Throwable th;
            OutputStreamWriter outputStreamWriter = null;
            try {
                OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(newOutputStream(i), Util.UTF_8);
                try {
                    outputStreamWriter2.write(str);
                    Util.closeQuietly(outputStreamWriter2);
                } catch (Throwable th2) {
                    th = th2;
                    outputStreamWriter = outputStreamWriter2;
                    Util.closeQuietly(outputStreamWriter);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/jakewharton/disklrucache/DiskLruCache$Entry.class */
    public final class Entry {
        private Editor currentEditor;
        private final String key;
        private final long[] lengths;
        private boolean readable;
        private long sequenceNumber;

        private Entry(String str) {
            this.key = str;
            this.lengths = new long[DiskLruCache.this.valueCount];
        }

        private IOException invalidLengths(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLengths(String[] strArr) throws IOException {
            if (strArr.length != DiskLruCache.this.valueCount) {
                throw invalidLengths(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.lengths[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    throw invalidLengths(strArr);
                }
            }
        }

        public File getCleanFile(int i) {
            File file = DiskLruCache.this.directory;
            return new File(file, this.key + "." + i);
        }

        public File getDirtyFile(int i) {
            File file = DiskLruCache.this.directory;
            return new File(file, this.key + "." + i + ".tmp");
        }

        public String getLengths() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.lengths) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/jakewharton/disklrucache/DiskLruCache$Snapshot.class */
    public final class Snapshot implements Closeable {
        private final InputStream[] ins;
        private final String key;
        private final long[] lengths;
        private final long sequenceNumber;

        private Snapshot(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.key = str;
            this.sequenceNumber = j;
            this.ins = inputStreamArr;
            this.lengths = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.ins) {
                Util.closeQuietly(inputStream);
            }
        }

        public Editor edit() throws IOException {
            return DiskLruCache.this.edit(this.key, this.sequenceNumber);
        }

        public InputStream getInputStream(int i) {
            return this.ins[i];
        }

        public long getLength(int i) {
            return this.lengths[i];
        }

        public String getString(int i) throws IOException {
            return DiskLruCache.inputStreamToString(getInputStream(i));
        }
    }

    private DiskLruCache(File file, int i, int i2, long j) {
        this.directory = file;
        this.appVersion = i;
        this.journalFile = new File(file, JOURNAL_FILE);
        this.journalFileTmp = new File(file, JOURNAL_FILE_TEMP);
        this.journalFileBackup = new File(file, JOURNAL_FILE_BACKUP);
        this.valueCount = i2;
        this.maxSize = j;
    }

    private void checkNotClosed() {
        if (this.journalWriter == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void completeEdit(Editor editor, boolean z) throws IOException {
        synchronized (this) {
            Entry entry = editor.entry;
            if (entry.currentEditor != editor) {
                throw new IllegalStateException();
            }
            int i = 0;
            if (z) {
                i = 0;
                if (!entry.readable) {
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= this.valueCount) {
                            break;
                        } else if (!editor.written[i2]) {
                            editor.abort();
                            throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                        } else if (!entry.getDirtyFile(i2).exists()) {
                            editor.abort();
                            return;
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.valueCount) {
                File dirtyFile = entry.getDirtyFile(i);
                if (!z) {
                    deleteIfExists(dirtyFile);
                } else if (dirtyFile.exists()) {
                    File cleanFile = entry.getCleanFile(i);
                    dirtyFile.renameTo(cleanFile);
                    long j = entry.lengths[i];
                    long length = cleanFile.length();
                    entry.lengths[i] = length;
                    this.size = (this.size - j) + length;
                }
                i++;
            }
            this.redundantOpCount++;
            entry.currentEditor = null;
            if (entry.readable || z) {
                entry.readable = true;
                this.journalWriter.write("CLEAN " + entry.key + entry.getLengths() + '\n');
                if (z) {
                    long j2 = this.nextSequenceNumber;
                    this.nextSequenceNumber = 1 + j2;
                    entry.sequenceNumber = j2;
                }
            } else {
                this.lruEntries.remove(entry.key);
                this.journalWriter.write("REMOVE " + entry.key + '\n');
            }
            this.journalWriter.flush();
            if (this.size > this.maxSize || journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
        }
    }

    private static void deleteIfExists(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Editor edit(String str, long j) throws IOException {
        synchronized (this) {
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (j != -1 && (entry == null || entry.sequenceNumber != j)) {
                return null;
            }
            if (entry == null) {
                entry = new Entry(str);
                this.lruEntries.put(str, entry);
            } else if (entry.currentEditor != null) {
                return null;
            }
            Editor editor = new Editor(entry);
            entry.currentEditor = editor;
            Writer writer = this.journalWriter;
            writer.write("DIRTY " + str + '\n');
            this.journalWriter.flush();
            return editor;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String inputStreamToString(InputStream inputStream) throws IOException {
        return Util.readFully(new InputStreamReader(inputStream, Util.UTF_8));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean journalRebuildRequired() {
        return this.redundantOpCount >= 2000 && this.redundantOpCount >= this.lruEntries.size();
    }

    public static DiskLruCache open(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        } else {
            File file2 = new File(file, JOURNAL_FILE_BACKUP);
            if (file2.exists()) {
                File file3 = new File(file, JOURNAL_FILE);
                if (file3.exists()) {
                    file2.delete();
                } else {
                    renameTo(file2, file3, false);
                }
            }
            DiskLruCache diskLruCache = new DiskLruCache(file, i, i2, j);
            if (diskLruCache.journalFile.exists()) {
                try {
                    diskLruCache.readJournal();
                    diskLruCache.processJournal();
                    diskLruCache.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(diskLruCache.journalFile, true), Util.US_ASCII));
                    return diskLruCache;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    diskLruCache.delete();
                }
            }
            file.mkdirs();
            DiskLruCache diskLruCache2 = new DiskLruCache(file, i, i2, j);
            diskLruCache2.rebuildJournal();
            return diskLruCache2;
        }
    }

    private void processJournal() throws IOException {
        deleteIfExists(this.journalFileTmp);
        Iterator<Entry> it = this.lruEntries.values().iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.currentEditor == null) {
                for (int i = 0; i < this.valueCount; i++) {
                    this.size += next.lengths[i];
                }
            } else {
                next.currentEditor = null;
                for (int i2 = 0; i2 < this.valueCount; i2++) {
                    deleteIfExists(next.getCleanFile(i2));
                    deleteIfExists(next.getDirtyFile(i2));
                }
                it.remove();
            }
        }
    }

    private void readJournal() throws IOException {
        StrictLineReader strictLineReader = new StrictLineReader(new FileInputStream(this.journalFile), Util.US_ASCII);
        try {
            String readLine = strictLineReader.readLine();
            String readLine2 = strictLineReader.readLine();
            String readLine3 = strictLineReader.readLine();
            String readLine4 = strictLineReader.readLine();
            String readLine5 = strictLineReader.readLine();
            if (!MAGIC.equals(readLine) || !"1".equals(readLine2) || !Integer.toString(this.appVersion).equals(readLine3) || !Integer.toString(this.valueCount).equals(readLine4) || !"".equals(readLine5)) {
                throw new IOException("unexpected journal header: [" + readLine + ", " + readLine2 + ", " + readLine4 + ", " + readLine5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    readJournalLine(strictLineReader.readLine());
                    i++;
                } catch (EOFException e) {
                    this.redundantOpCount = i - this.lruEntries.size();
                    Util.closeQuietly(strictLineReader);
                    return;
                }
            }
        } catch (Throwable th) {
            Util.closeQuietly(strictLineReader);
            throw th;
        }
    }

    private void readJournalLine(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: " + str);
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            String substring = str.substring(i);
            str2 = substring;
            if (indexOf == REMOVE.length()) {
                str2 = substring;
                if (str.startsWith(REMOVE)) {
                    this.lruEntries.remove(substring);
                    return;
                }
            }
        } else {
            str2 = str.substring(i, indexOf2);
        }
        Entry entry = this.lruEntries.get(str2);
        Entry entry2 = entry;
        if (entry == null) {
            entry2 = new Entry(str2);
            this.lruEntries.put(str2, entry2);
        }
        if (indexOf2 != -1 && indexOf == CLEAN.length() && str.startsWith(CLEAN)) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            entry2.readable = true;
            entry2.currentEditor = null;
            entry2.setLengths(split);
        } else if (indexOf2 == -1 && indexOf == DIRTY.length() && str.startsWith(DIRTY)) {
            entry2.currentEditor = new Editor(entry2);
        } else if (indexOf2 != -1 || indexOf != READ.length() || !str.startsWith(READ)) {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rebuildJournal() throws IOException {
        synchronized (this) {
            if (this.journalWriter != null) {
                this.journalWriter.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFileTmp), Util.US_ASCII));
            bufferedWriter.write(MAGIC);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write("1");
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.appVersion));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(Integer.toString(this.valueCount));
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            bufferedWriter.write(IOUtils.LINE_SEPARATOR_UNIX);
            for (Entry entry : this.lruEntries.values()) {
                if (entry.currentEditor != null) {
                    bufferedWriter.write("DIRTY " + entry.key + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + entry.key + entry.getLengths() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.journalFile.exists()) {
                renameTo(this.journalFile, this.journalFileBackup, true);
            }
            renameTo(this.journalFileTmp, this.journalFile, false);
            this.journalFileBackup.delete();
            this.journalWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.journalFile, true), Util.US_ASCII));
        }
    }

    private static void renameTo(File file, File file2, boolean z) throws IOException {
        if (z) {
            deleteIfExists(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void trimToSize() throws IOException {
        while (this.size > this.maxSize) {
            remove(this.lruEntries.entrySet().iterator().next().getKey());
        }
    }

    private void validateKey(String str) {
        if (!LEGAL_KEY_PATTERN.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.journalWriter != null) {
                Iterator it = new ArrayList(this.lruEntries.values()).iterator();
                while (it.hasNext()) {
                    Entry entry = (Entry) it.next();
                    if (entry.currentEditor != null) {
                        entry.currentEditor.abort();
                    }
                }
                trimToSize();
                this.journalWriter.close();
                this.journalWriter = null;
            }
        }
    }

    public void delete() throws IOException {
        close();
        Util.deleteContents(this.directory);
    }

    public Editor edit(String str) throws IOException {
        return edit(str, -1L);
    }

    public void flush() throws IOException {
        synchronized (this) {
            checkNotClosed();
            trimToSize();
            this.journalWriter.flush();
        }
    }

    public Snapshot get(String str) throws IOException {
        synchronized (this) {
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry == null) {
                return null;
            }
            if (!entry.readable) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.valueCount];
            for (int i = 0; i < this.valueCount; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(entry.getCleanFile(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.valueCount && inputStreamArr[i2] != null; i2++) {
                        Util.closeQuietly(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.redundantOpCount++;
            this.journalWriter.append((CharSequence) ("READ " + str + '\n'));
            if (journalRebuildRequired()) {
                this.executorService.submit(this.cleanupCallable);
            }
            return new Snapshot(str, entry.sequenceNumber, inputStreamArr, entry.lengths);
        }
    }

    public File getDirectory() {
        return this.directory;
    }

    public long getMaxSize() {
        long j;
        synchronized (this) {
            j = this.maxSize;
        }
        return j;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.journalWriter == null;
        }
        return z;
    }

    public boolean remove(String str) throws IOException {
        synchronized (this) {
            checkNotClosed();
            validateKey(str);
            Entry entry = this.lruEntries.get(str);
            if (entry != null && entry.currentEditor == null) {
                for (int i = 0; i < this.valueCount; i++) {
                    File cleanFile = entry.getCleanFile(i);
                    if (!cleanFile.exists() || cleanFile.delete()) {
                        this.size -= entry.lengths[i];
                        entry.lengths[i] = 0;
                    } else {
                        throw new IOException("failed to delete " + cleanFile);
                    }
                }
                this.redundantOpCount++;
                this.journalWriter.append((CharSequence) ("REMOVE " + str + '\n'));
                this.lruEntries.remove(str);
                if (journalRebuildRequired()) {
                    this.executorService.submit(this.cleanupCallable);
                }
                return true;
            }
            return false;
        }
    }

    public void setMaxSize(long j) {
        synchronized (this) {
            this.maxSize = j;
            this.executorService.submit(this.cleanupCallable);
        }
    }

    public long size() {
        long j;
        synchronized (this) {
            j = this.size;
        }
        return j;
    }
}
