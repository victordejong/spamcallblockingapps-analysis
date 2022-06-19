package p046g.p054h.p055a;

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
public final class C1953a implements Closeable {

    /* renamed from: t */
    static final Pattern f5262t = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: u */
    private static final OutputStream f5263u = new C1955b();

    /* renamed from: f */
    private final File f5264f;

    /* renamed from: g */
    private final File f5265g;

    /* renamed from: h */
    private final File f5266h;

    /* renamed from: i */
    private final File f5267i;

    /* renamed from: j */
    private final int f5268j;

    /* renamed from: k */
    private long f5269k;

    /* renamed from: l */
    private final int f5270l;

    /* renamed from: n */
    private Writer f5272n;

    /* renamed from: p */
    private int f5274p;

    /* renamed from: m */
    private long f5271m = 0;

    /* renamed from: o */
    private final LinkedHashMap<String, C1958d> f5273o = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: q */
    private long f5275q = 0;

    /* renamed from: r */
    final ThreadPoolExecutor f5276r = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: s */
    private final Callable<Void> f5277s = new CallableC1954a();

    /* renamed from: g.h.a.a$a */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$a.class */
    public class CallableC1954a implements Callable<Void> {
        CallableC1954a() {
            C1953a.this = r4;
        }

        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (C1953a.this) {
                if (C1953a.this.f5272n == null) {
                    return null;
                }
                C1953a.this.m526q0();
                if (C1953a.this.m544L()) {
                    C1953a.this.m531k0();
                    C1953a.this.f5274p = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: g.h.a.a$b */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$b.class */
    static final class C1955b extends OutputStream {
        C1955b() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: g.h.a.a$c */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$c.class */
    public final class C1956c {

        /* renamed from: a */
        private final C1958d f5279a;

        /* renamed from: b */
        private final boolean[] f5280b;

        /* renamed from: c */
        private boolean f5281c;

        /* renamed from: g.h.a.a$c$a */
        /* loaded from: classes2-dex2jar.jar:g/h/a/a$c$a.class */
        private class C1957a extends FilterOutputStream {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            private C1957a(OutputStream outputStream) {
                super(outputStream);
                C1956c.this = r4;
            }

            /* synthetic */ C1957a(C1956c c1956c, OutputStream outputStream, CallableC1954a callableC1954a) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    C1956c.this.f5281c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    C1956c.this.f5281c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    C1956c.this.f5281c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    C1956c.this.f5281c = true;
                }
            }
        }

        private C1956c(C1958d c1958d) {
            C1953a.this = r4;
            this.f5279a = c1958d;
            this.f5280b = c1958d.f5286c ? null : new boolean[r4.f5270l];
        }

        /* synthetic */ C1956c(C1953a c1953a, C1958d c1958d, CallableC1954a callableC1954a) {
            this(c1958d);
        }

        /* renamed from: a */
        public void m520a() throws IOException {
            C1953a.this.m525r(this, false);
        }

        /* renamed from: e */
        public void m516e() throws IOException {
            if (!this.f5281c) {
                C1953a.this.m525r(this, true);
                return;
            }
            C1953a.this.m525r(this, false);
            C1953a.this.m529l0(this.f5279a.f5284a);
        }

        /* renamed from: f */
        public OutputStream m515f(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C1957a c1957a;
            synchronized (C1953a.this) {
                if (this.f5279a.f5287d != this) {
                    throw new IllegalStateException();
                }
                if (!this.f5279a.f5286c) {
                    this.f5280b[i] = true;
                }
                File m504k = this.f5279a.m504k(i);
                try {
                    fileOutputStream = new FileOutputStream(m504k);
                } catch (FileNotFoundException e) {
                    C1953a.this.f5264f.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(m504k);
                    } catch (FileNotFoundException e2) {
                        return C1953a.f5263u;
                    }
                }
                c1957a = new C1957a(this, fileOutputStream, null);
            }
            return c1957a;
        }
    }

    /* renamed from: g.h.a.a$d */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$d.class */
    public final class C1958d {

        /* renamed from: a */
        private final String f5284a;

        /* renamed from: b */
        private final long[] f5285b;

        /* renamed from: c */
        private boolean f5286c;

        /* renamed from: d */
        private C1956c f5287d;

        /* renamed from: e */
        private long f5288e;

        private C1958d(String str) {
            C1953a.this = r4;
            this.f5284a = str;
            this.f5285b = new long[r4.f5270l];
        }

        /* synthetic */ C1958d(C1953a c1953a, String str, CallableC1954a callableC1954a) {
            this(str);
        }

        /* renamed from: m */
        private IOException m502m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* renamed from: n */
        public void m501n(String[] strArr) throws IOException {
            if (strArr.length != C1953a.this.f5270l) {
                m502m(strArr);
                throw null;
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f5285b[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException e) {
                    m502m(strArr);
                    throw null;
                }
            }
        }

        /* renamed from: j */
        public File m505j(int i) {
            File file = C1953a.this.f5264f;
            return new File(file, this.f5284a + "." + i);
        }

        /* renamed from: k */
        public File m504k(int i) {
            File file = C1953a.this.f5264f;
            return new File(file, this.f5284a + "." + i + ".tmp");
        }

        /* renamed from: l */
        public String m503l() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f5285b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: g.h.a.a$e */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$e.class */
    public final class C1959e implements Closeable {

        /* renamed from: f */
        private final InputStream[] f5290f;

        /* renamed from: g */
        private final long[] f5291g;

        private C1959e(C1953a c1953a, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f5290f = inputStreamArr;
            this.f5291g = jArr;
        }

        /* synthetic */ C1959e(C1953a c1953a, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC1954a callableC1954a) {
            this(c1953a, str, j, inputStreamArr, jArr);
        }

        /* renamed from: a */
        public InputStream m500a(int i) {
            return this.f5290f[i];
        }

        /* renamed from: b */
        public long m499b(int i) {
            return this.f5291g[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f5290f) {
                C1962c.m495a(inputStream);
            }
        }
    }

    private C1953a(File file, int i, int i2, long j) {
        this.f5264f = file;
        this.f5268j = i;
        this.f5265g = new File(file, "journal");
        this.f5266h = new File(file, "journal.tmp");
        this.f5267i = new File(file, "journal.bkp");
        this.f5270l = i2;
        this.f5269k = j;
    }

    /* renamed from: C */
    private C1956c m547C(String str, long j) throws IOException {
        synchronized (this) {
            m528o();
            m524s0(str);
            C1958d c1958d = this.f5273o.get(str);
            if (j == -1 || (c1958d != null && c1958d.f5288e == j)) {
                if (c1958d == null) {
                    c1958d = new C1958d(this, str, null);
                    this.f5273o.put(str, c1958d);
                } else if (c1958d.f5287d != null) {
                    return null;
                }
                C1956c c1956c = new C1956c(this, c1958d, null);
                c1958d.f5287d = c1956c;
                Writer writer = this.f5272n;
                writer.write("DIRTY " + str + '\n');
                this.f5272n.flush();
                return c1956c;
            }
            return null;
        }
    }

    /* renamed from: L */
    public boolean m544L() {
        int i = this.f5274p;
        return i >= 2000 && i >= this.f5273o.size();
    }

    /* renamed from: M */
    public static C1953a m543M(File file, int i, int i2, long j) throws IOException {
        if (j > 0) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("valueCount <= 0");
            }
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m527p0(file2, file3, false);
                }
            }
            C1953a c1953a = new C1953a(file, i, i2, j);
            if (c1953a.f5265g.exists()) {
                try {
                    c1953a.m541X();
                    c1953a.m542N();
                    c1953a.f5272n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(c1953a.f5265g, true), C1962c.f5298a));
                    return c1953a;
                } catch (IOException e) {
                    PrintStream printStream = System.out;
                    printStream.println("DiskLruCache " + file + " is corrupt: " + e.getMessage() + ", removing");
                    c1953a.m523y();
                }
            }
            file.mkdirs();
            C1953a c1953a2 = new C1953a(file, i, i2, j);
            c1953a2.m531k0();
            return c1953a2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: N */
    private void m542N() throws IOException {
        m522z(this.f5266h);
        Iterator<C1958d> it = this.f5273o.values().iterator();
        while (it.hasNext()) {
            C1958d next = it.next();
            if (next.f5287d == null) {
                for (int i = 0; i < this.f5270l; i++) {
                    this.f5271m += next.f5285b[i];
                }
            } else {
                next.f5287d = null;
                for (int i2 = 0; i2 < this.f5270l; i2++) {
                    m522z(next.m505j(i2));
                    m522z(next.m504k(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: X */
    private void m541X() throws IOException {
        C1960b c1960b = new C1960b(new FileInputStream(this.f5265g), C1962c.f5298a);
        try {
            String m496c = c1960b.m496c();
            String m496c2 = c1960b.m496c();
            String m496c3 = c1960b.m496c();
            String m496c4 = c1960b.m496c();
            String m496c5 = c1960b.m496c();
            if (!"libcore.io.DiskLruCache".equals(m496c) || !"1".equals(m496c2) || !Integer.toString(this.f5268j).equals(m496c3) || !Integer.toString(this.f5270l).equals(m496c4) || !"".equals(m496c5)) {
                throw new IOException("unexpected journal header: [" + m496c + ", " + m496c2 + ", " + m496c4 + ", " + m496c5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m540Y(c1960b.m496c());
                    i++;
                } catch (EOFException e) {
                    this.f5274p = i - this.f5273o.size();
                    C1962c.m495a(c1960b);
                    return;
                }
            }
        } catch (Throwable th) {
            C1962c.m495a(c1960b);
            throw th;
        }
    }

    /* renamed from: Y */
    private void m540Y(String str) throws IOException {
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
            if (indexOf == 6) {
                str2 = substring;
                if (str.startsWith("REMOVE")) {
                    this.f5273o.remove(substring);
                    return;
                }
            }
        } else {
            str2 = str.substring(i, indexOf2);
        }
        C1958d c1958d = this.f5273o.get(str2);
        C1958d c1958d2 = c1958d;
        if (c1958d == null) {
            c1958d2 = new C1958d(this, str2, null);
            this.f5273o.put(str2, c1958d2);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            c1958d2.f5286c = true;
            c1958d2.f5287d = null;
            c1958d2.m501n(split);
        } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            c1958d2.f5287d = new C1956c(this, c1958d2, null);
        } else if (indexOf2 == -1 && indexOf == 4 && str.startsWith("READ")) {
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* renamed from: k0 */
    public void m531k0() throws IOException {
        synchronized (this) {
            Writer writer = this.f5272n;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f5266h), C1962c.f5298a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f5268j));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f5270l));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C1958d c1958d : this.f5273o.values()) {
                if (c1958d.f5287d != null) {
                    bufferedWriter.write("DIRTY " + c1958d.f5284a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + c1958d.f5284a + c1958d.m503l() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f5265g.exists()) {
                m527p0(this.f5265g, this.f5267i, true);
            }
            m527p0(this.f5266h, this.f5265g, false);
            this.f5267i.delete();
            this.f5272n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f5265g, true), C1962c.f5298a));
        }
    }

    /* renamed from: o */
    private void m528o() {
        if (this.f5272n != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    /* renamed from: p0 */
    private static void m527p0(File file, File file2, boolean z) throws IOException {
        if (z) {
            m522z(file2);
        }
        if (file.renameTo(file2)) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: q0 */
    public void m526q0() throws IOException {
        while (this.f5271m > this.f5269k) {
            m529l0(this.f5273o.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: r */
    public void m525r(C1956c c1956c, boolean z) throws IOException {
        synchronized (this) {
            C1958d c1958d = c1956c.f5279a;
            if (c1958d.f5287d == c1956c) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!c1958d.f5286c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f5270l) {
                                break;
                            } else if (!c1956c.f5280b[i2]) {
                                c1956c.m520a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!c1958d.m504k(i2).exists()) {
                                c1956c.m520a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f5270l) {
                    File m504k = c1958d.m504k(i);
                    if (!z) {
                        m522z(m504k);
                    } else if (m504k.exists()) {
                        File m505j = c1958d.m505j(i);
                        m504k.renameTo(m505j);
                        long j = c1958d.f5285b[i];
                        long length = m505j.length();
                        c1958d.f5285b[i] = length;
                        this.f5271m = (this.f5271m - j) + length;
                    }
                    i++;
                }
                this.f5274p++;
                c1958d.f5287d = null;
                if (c1958d.f5286c || z) {
                    c1958d.f5286c = true;
                    this.f5272n.write("CLEAN " + c1958d.f5284a + c1958d.m503l() + '\n');
                    if (z) {
                        long j2 = this.f5275q;
                        this.f5275q = 1 + j2;
                        c1958d.f5288e = j2;
                    }
                } else {
                    this.f5273o.remove(c1958d.f5284a);
                    this.f5272n.write("REMOVE " + c1958d.f5284a + '\n');
                }
                this.f5272n.flush();
                if (this.f5271m > this.f5269k || m544L()) {
                    this.f5276r.submit(this.f5277s);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: s0 */
    private void m524s0(String str) {
        if (f5262t.matcher(str).matches()) {
            return;
        }
        throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
    }

    /* renamed from: z */
    private static void m522z(File file) throws IOException {
        if (!file.exists() || file.delete()) {
            return;
        }
        throw new IOException();
    }

    /* renamed from: A */
    public C1956c m548A(String str) throws IOException {
        return m547C(str, -1L);
    }

    /* renamed from: D */
    public C1959e m546D(String str) throws IOException {
        synchronized (this) {
            m528o();
            m524s0(str);
            C1958d c1958d = this.f5273o.get(str);
            if (c1958d == null) {
                return null;
            }
            if (!c1958d.f5286c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f5270l];
            for (int i = 0; i < this.f5270l; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(c1958d.m505j(i));
                } catch (FileNotFoundException e) {
                    for (int i2 = 0; i2 < this.f5270l && inputStreamArr[i2] != null; i2++) {
                        C1962c.m495a(inputStreamArr[i2]);
                    }
                    return null;
                }
            }
            this.f5274p++;
            this.f5272n.append((CharSequence) ("READ " + str + '\n'));
            if (m544L()) {
                this.f5276r.submit(this.f5277s);
            }
            return new C1959e(this, str, c1958d.f5288e, inputStreamArr, c1958d.f5285b, null);
        }
    }

    /* renamed from: K */
    public File m545K() {
        return this.f5264f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f5272n == null) {
                return;
            }
            Iterator it = new ArrayList(this.f5273o.values()).iterator();
            while (it.hasNext()) {
                C1958d c1958d = (C1958d) it.next();
                if (c1958d.f5287d != null) {
                    c1958d.f5287d.m520a();
                }
            }
            m526q0();
            this.f5272n.close();
            this.f5272n = null;
        }
    }

    /* renamed from: l0 */
    public boolean m529l0(String str) throws IOException {
        synchronized (this) {
            m528o();
            m524s0(str);
            C1958d c1958d = this.f5273o.get(str);
            if (c1958d != null && c1958d.f5287d == null) {
                for (int i = 0; i < this.f5270l; i++) {
                    File m505j = c1958d.m505j(i);
                    if (m505j.exists() && !m505j.delete()) {
                        throw new IOException("failed to delete " + m505j);
                    }
                    this.f5271m -= c1958d.f5285b[i];
                    c1958d.f5285b[i] = 0;
                }
                this.f5274p++;
                this.f5272n.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f5273o.remove(str);
                if (m544L()) {
                    this.f5276r.submit(this.f5277s);
                }
                return true;
            }
            return false;
        }
    }

    /* renamed from: y */
    public void m523y() throws IOException {
        close();
        C1962c.m494b(this.f5264f);
    }
}
