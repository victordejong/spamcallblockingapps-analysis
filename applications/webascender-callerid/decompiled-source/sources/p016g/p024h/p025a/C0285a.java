package p016g.p024h.p025a;

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
/* renamed from: g.h.a.a */
/* loaded from: classes2-dex2jar.jar:g/h/a/a.class */
public final class C0285a implements Closeable {

    /* renamed from: t */
    static final Pattern f583t = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: u */
    private static final OutputStream f584u = new C0287b();

    /* renamed from: f */
    private final File f585f;

    /* renamed from: g */
    private final File f586g;

    /* renamed from: h */
    private final File f587h;

    /* renamed from: i */
    private final File f588i;

    /* renamed from: j */
    private final int f589j;

    /* renamed from: k */
    private long f590k;

    /* renamed from: l */
    private final int f591l;

    /* renamed from: n */
    private Writer f593n;

    /* renamed from: p */
    private int f595p;

    /* renamed from: m */
    private long f592m = 0;

    /* renamed from: o */
    private final LinkedHashMap<String, C0290d> f594o = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: q */
    private long f596q = 0;

    /* renamed from: r */
    final ThreadPoolExecutor f597r = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: s */
    private final Callable<Void> f598s = new CallableC0286a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g.h.a.a$a */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$a.class */
    public class CallableC0286a implements Callable<Void> {
        CallableC0286a() {
        }

        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (C0285a.this) {
                if (C0285a.this.f593n == null) {
                    return null;
                }
                C0285a.this.m526q0();
                if (C0285a.this.m544L()) {
                    C0285a.this.m531k0();
                    C0285a.this.f595p = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: g.h.a.a$b */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$b.class */
    static final class C0287b extends OutputStream {
        C0287b() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: g.h.a.a$c */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$c.class */
    public final class C0288c {

        /* renamed from: a */
        private final C0290d f600a;

        /* renamed from: b */
        private final boolean[] f601b;

        /* renamed from: c */
        private boolean f602c;

        /* renamed from: g.h.a.a$c$a */
        /* loaded from: classes2-dex2jar.jar:g/h/a/a$c$a.class */
        private class C0289a extends FilterOutputStream {
            private C0289a(OutputStream outputStream) {
                super(outputStream);
            }

            /* synthetic */ C0289a(C0288c cVar, OutputStream outputStream, CallableC0286a aVar) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    C0288c.this.f602c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    C0288c.this.f602c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    C0288c.this.f602c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    C0288c.this.f602c = true;
                }
            }
        }

        private C0288c(C0290d dVar) {
            this.f600a = dVar;
            this.f601b = dVar.f607c ? null : new boolean[C0285a.this.f591l];
        }

        /* synthetic */ C0288c(C0285a aVar, C0290d dVar, CallableC0286a aVar2) {
            this(dVar);
        }

        /* renamed from: a */
        public void m520a() throws IOException {
            C0285a.this.m525r(this, false);
        }

        /* renamed from: e */
        public void m516e() throws IOException {
            if (this.f602c) {
                C0285a.this.m525r(this, false);
                C0285a.this.m529l0(this.f600a.f605a);
                return;
            }
            C0285a.this.m525r(this, true);
        }

        /* renamed from: f */
        public OutputStream m515f(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C0289a aVar;
            synchronized (C0285a.this) {
                if (this.f600a.f608d == this) {
                    if (!this.f600a.f607c) {
                        this.f601b[i] = true;
                    }
                    File k = this.f600a.m504k(i);
                    try {
                        fileOutputStream = new FileOutputStream(k);
                    } catch (FileNotFoundException e) {
                        C0285a.this.f585f.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(k);
                        } catch (FileNotFoundException e2) {
                            return C0285a.f584u;
                        }
                    }
                    aVar = new C0289a(this, fileOutputStream, null);
                } else {
                    throw new IllegalStateException();
                }
            }
            return aVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g.h.a.a$d */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$d.class */
    public final class C0290d {

        /* renamed from: a */
        private final String f605a;

        /* renamed from: b */
        private final long[] f606b;

        /* renamed from: c */
        private boolean f607c;

        /* renamed from: d */
        private C0288c f608d;

        /* renamed from: e */
        private long f609e;

        private C0290d(String str) {
            this.f605a = str;
            this.f606b = new long[C0285a.this.f591l];
        }

        /* synthetic */ C0290d(C0285a aVar, String str, CallableC0286a aVar2) {
            this(str);
        }

        /* renamed from: m */
        private IOException m502m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public void m501n(String[] strArr) throws IOException {
            if (strArr.length == C0285a.this.f591l) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f606b[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        m502m(strArr);
                        throw null;
                    }
                }
                return;
            }
            m502m(strArr);
            throw null;
        }

        /* renamed from: j */
        public File m505j(int i) {
            File file = C0285a.this.f585f;
            return new File(file, this.f605a + "." + i);
        }

        /* renamed from: k */
        public File m504k(int i) {
            File file = C0285a.this.f585f;
            return new File(file, this.f605a + "." + i + ".tmp");
        }

        /* renamed from: l */
        public String m503l() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f606b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: g.h.a.a$e */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$e.class */
    public final class C0291e implements Closeable {

        /* renamed from: f */
        private final InputStream[] f611f;

        /* renamed from: g */
        private final long[] f612g;

        private C0291e(C0285a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f611f = inputStreamArr;
            this.f612g = jArr;
        }

        /* synthetic */ C0291e(C0285a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC0286a aVar2) {
            this(aVar, str, j, inputStreamArr, jArr);
        }

        /* renamed from: a */
        public InputStream m500a(int i) {
            return this.f611f[i];
        }

        /* renamed from: b */
        public long m499b(int i) {
            return this.f612g[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f611f) {
                C0294c.m495a(inputStream);
            }
        }
    }

    private C0285a(File file, int i, int i2, long j) {
        this.f585f = file;
        this.f589j = i;
        this.f586g = new File(file, "journal");
        this.f587h = new File(file, "journal.tmp");
        this.f588i = new File(file, "journal.bkp");
        this.f591l = i2;
        this.f590k = j;
    }

    /* renamed from: C */
    private C0288c m547C(String str, long j) throws IOException {
        synchronized (this) {
            m528o();
            m524s0(str);
            C0290d dVar = this.f594o.get(str);
            if (j != -1 && (dVar == null || dVar.f609e != j)) {
                return null;
            }
            if (dVar == null) {
                dVar = new C0290d(this, str, null);
                this.f594o.put(str, dVar);
            } else if (dVar.f608d != null) {
                return null;
            }
            C0288c cVar = new C0288c(this, dVar, null);
            dVar.f608d = cVar;
            Writer writer = this.f593n;
            writer.write("DIRTY " + str + '\n');
            this.f593n.flush();
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: L */
    public boolean m544L() {
        int i = this.f595p;
        return i >= 2000 && i >= this.f594o.size();
    }

    /* renamed from: M */
    public static C0285a m543M(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m527p0(file2, file3, false);
                }
            }
            C0285a aVar = new C0285a(file, i, i2, j);
            if (aVar.f586g.exists()) {
                try {
                    aVar.m541X();
                    aVar.m542N();
                    aVar.f593n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aVar.f586g, true), C0294c.f619a));
                    return aVar;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    aVar.m523y();
                }
            }
            file.mkdirs();
            C0285a aVar2 = new C0285a(file, i, i2, j);
            aVar2.m531k0();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: N */
    private void m542N() throws IOException {
        m522z(this.f587h);
        Iterator<C0290d> it = this.f594o.values().iterator();
        while (it.hasNext()) {
            C0290d next = it.next();
            if (next.f608d == null) {
                for (int i = 0; i < this.f591l; i++) {
                    this.f592m += next.f606b[i];
                }
            } else {
                next.f608d = null;
                for (int i2 = 0; i2 < this.f591l; i2++) {
                    m522z(next.m505j(i2));
                    m522z(next.m504k(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: X */
    private void m541X() throws IOException {
        C0292b bVar = new C0292b(new FileInputStream(this.f586g), C0294c.f619a);
        try {
            String c = bVar.m496c();
            String c2 = bVar.m496c();
            String c3 = bVar.m496c();
            String c4 = bVar.m496c();
            String c5 = bVar.m496c();
            if (!"libcore.io.DiskLruCache".equals(c) || !"1".equals(c2) || !Integer.toString(this.f589j).equals(c3) || !Integer.toString(this.f591l).equals(c4) || !"".equals(c5)) {
                throw new IOException("unexpected journal header: [" + c + ", " + c2 + ", " + c4 + ", " + c5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m540Y(bVar.m496c());
                    i++;
                } catch (EOFException e) {
                    this.f595p = i - this.f594o.size();
                    C0294c.m495a(bVar);
                    return;
                }
            }
        } catch (Throwable th) {
            C0294c.m495a(bVar);
            throw th;
        }
    }

    /* renamed from: Y */
    private void m540Y(String str) throws IOException {
        String str2;
        int indexOf = str.indexOf(32);
        if (indexOf != -1) {
            int i = indexOf + 1;
            int indexOf2 = str.indexOf(32, i);
            if (indexOf2 == -1) {
                String substring = str.substring(i);
                str2 = substring;
                if (indexOf == 6) {
                    str2 = substring;
                    if (str.startsWith("REMOVE")) {
                        this.f594o.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C0290d dVar = this.f594o.get(str2);
            C0290d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C0290d(this, str2, null);
                this.f594o.put(str2, dVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar2.f607c = true;
                dVar2.f608d = null;
                dVar2.m501n(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar2.f608d = new C0288c(this, dVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k0 */
    public void m531k0() throws IOException {
        synchronized (this) {
            Writer writer = this.f593n;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f587h), C0294c.f619a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f589j));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f591l));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C0290d dVar : this.f594o.values()) {
                if (dVar.f608d != null) {
                    bufferedWriter.write("DIRTY " + dVar.f605a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f605a + dVar.m503l() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f586g.exists()) {
                m527p0(this.f586g, this.f588i, true);
            }
            m527p0(this.f587h, this.f586g, false);
            this.f588i.delete();
            this.f593n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f586g, true), C0294c.f619a));
        }
    }

    /* renamed from: o */
    private void m528o() {
        if (this.f593n == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: p0 */
    private static void m527p0(File file, File file2, boolean z) throws IOException {
        if (z) {
            m522z(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: q0 */
    public void m526q0() throws IOException {
        while (this.f592m > this.f590k) {
            m529l0(this.f594o.entrySet().iterator().next().getKey());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m525r(C0288c cVar, boolean z) throws IOException {
        synchronized (this) {
            C0290d dVar = cVar.f600a;
            if (dVar.f608d == cVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!dVar.f607c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f591l) {
                                break;
                            } else if (!cVar.f601b[i2]) {
                                cVar.m520a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!dVar.m504k(i2).exists()) {
                                cVar.m520a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f591l) {
                    File k = dVar.m504k(i);
                    if (!z) {
                        m522z(k);
                    } else if (k.exists()) {
                        File j = dVar.m505j(i);
                        k.renameTo(j);
                        long j2 = dVar.f606b[i];
                        long length = j.length();
                        dVar.f606b[i] = length;
                        this.f592m = (this.f592m - j2) + length;
                    }
                    i++;
                }
                this.f595p++;
                dVar.f608d = null;
                if (dVar.f607c || z) {
                    dVar.f607c = true;
                    this.f593n.write("CLEAN " + dVar.f605a + dVar.m503l() + '\n');
                    if (z) {
                        long j3 = this.f596q;
                        this.f596q = 1 + j3;
                        dVar.f609e = j3;
                    }
                } else {
                    this.f594o.remove(dVar.f605a);
                    this.f593n.write("REMOVE " + dVar.f605a + '\n');
                }
                this.f593n.flush();
                if (this.f592m > this.f590k || m544L()) {
                    this.f597r.submit(this.f598s);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: s0 */
    private void m524s0(String str) {
        if (!f583t.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* renamed from: z */
    private static void m522z(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: A */
    public C0288c m548A(String str) throws IOException {
        return m547C(str, -1L);
    }

    /* renamed from: D */
    public C0291e m546D(String str) throws IOException {
        synchronized (this) {
            m528o();
            m524s0(str);
            C0290d dVar = this.f594o.get(str);
            if (dVar == null) {
                return null;
            }
            if (!dVar.f607c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f591l];
            for (int i = 0; i < this.f591l; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(dVar.m505j(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f591l && inputStreamArr[i2] != null; i2++) {
                        C0294c.m495a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f595p++;
            this.f593n.append((CharSequence) ("READ " + str + '\n'));
            if (m544L()) {
                this.f597r.submit(this.f598s);
            }
            return new C0291e(this, str, dVar.f609e, inputStreamArr, dVar.f606b, null);
        }
    }

    /* renamed from: K */
    public File m545K() {
        return this.f585f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f593n != null) {
                Iterator it = new ArrayList(this.f594o.values()).iterator();
                while (it.hasNext()) {
                    C0290d dVar = (C0290d) it.next();
                    if (dVar.f608d != null) {
                        dVar.f608d.m520a();
                    }
                }
                m526q0();
                this.f593n.close();
                this.f593n = null;
            }
        }
    }

    /* renamed from: l0 */
    public boolean m529l0(String str) throws IOException {
        synchronized (this) {
            m528o();
            m524s0(str);
            C0290d dVar = this.f594o.get(str);
            if (dVar != null && dVar.f608d == null) {
                for (int i = 0; i < this.f591l; i++) {
                    File j = dVar.m505j(i);
                    if (j.exists() && !j.delete()) {
                        throw new IOException("failed to delete " + j);
                    }
                    this.f592m -= dVar.f606b[i];
                    dVar.f606b[i] = 0;
                }
                this.f595p++;
                this.f593n.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f594o.remove(str);
                if (m544L()) {
                    this.f597r.submit(this.f598s);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: y */
    public void m523y() throws IOException {
        close();
        C0294c.m494b(this.f585f);
    }
}
