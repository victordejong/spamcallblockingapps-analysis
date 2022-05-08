package p010g.p018h.p019a;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
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
public final class C0230a implements Closeable {

    /* renamed from: t */
    static final Pattern f467t = Pattern.compile("[a-z0-9_-]{1,64}");

    /* renamed from: u */
    private static final OutputStream f468u = new C0232b();

    /* renamed from: f */
    private final File f469f;

    /* renamed from: g */
    private final File f470g;

    /* renamed from: h */
    private final File f471h;

    /* renamed from: i */
    private final File f472i;

    /* renamed from: j */
    private final int f473j;

    /* renamed from: k */
    private long f474k;

    /* renamed from: l */
    private final int f475l;

    /* renamed from: n */
    private Writer f477n;

    /* renamed from: p */
    private int f479p;

    /* renamed from: m */
    private long f476m = 0;

    /* renamed from: o */
    private final LinkedHashMap<String, C0235d> f478o = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: q */
    private long f480q = 0;

    /* renamed from: r */
    final ThreadPoolExecutor f481r = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: s */
    private final Callable<Void> f482s = new CallableC0231a();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g.h.a.a$a */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$a.class */
    public class CallableC0231a implements Callable<Void> {
        CallableC0231a() {
        }

        /* renamed from: a */
        public Void call() throws Exception {
            synchronized (C0230a.this) {
                if (C0230a.this.f477n == null) {
                    return null;
                }
                C0230a.this.m616m0();
                if (C0230a.this.m633K()) {
                    C0230a.this.m622g0();
                    C0230a.this.f479p = 0;
                }
                return null;
            }
        }
    }

    /* renamed from: g.h.a.a$b */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$b.class */
    static final class C0232b extends OutputStream {
        C0232b() {
        }

        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    /* renamed from: g.h.a.a$c */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$c.class */
    public final class C0233c {

        /* renamed from: a */
        private final C0235d f484a;

        /* renamed from: b */
        private final boolean[] f485b;

        /* renamed from: c */
        private boolean f486c;

        /* renamed from: g.h.a.a$c$a */
        /* loaded from: classes2-dex2jar.jar:g/h/a/a$c$a.class */
        private class C0234a extends FilterOutputStream {
            private C0234a(OutputStream outputStream) {
                super(outputStream);
            }

            /* synthetic */ C0234a(C0233c cVar, OutputStream outputStream, CallableC0231a aVar) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                ((FilterOutputStream) this).out.close();
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                ((FilterOutputStream) this).out.flush();
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                ((FilterOutputStream) this).out.write(i);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                ((FilterOutputStream) this).out.write(bArr, i, i2);
            }
        }

        private C0233c(C0235d dVar) {
            this.f484a = dVar;
            this.f485b = dVar.f491c ? null : new boolean[C0230a.this.f475l];
        }

        /* synthetic */ C0233c(C0230a aVar, C0235d dVar, CallableC0231a aVar2) {
            this(dVar);
        }

        /* renamed from: a */
        public void m609a() throws IOException {
            C0230a.this.m613r(this, false);
        }

        /* renamed from: e */
        public void m605e() throws IOException {
            if (this.f486c) {
                C0230a.this.m613r(this, false);
                C0230a.this.m621h0(this.f484a.f489a);
                return;
            }
            C0230a.this.m613r(this, true);
        }

        /* renamed from: f */
        public OutputStream m604f(int i) throws IOException {
            C0234a aVar;
            synchronized (C0230a.this) {
                if (this.f484a.f492d == this) {
                    if (!this.f484a.f491c) {
                        this.f485b[i] = true;
                    }
                    aVar = new C0234a(this, new FileOutputStream(this.f484a.m593k(i)), null);
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
    public final class C0235d {

        /* renamed from: a */
        private final String f489a;

        /* renamed from: b */
        private final long[] f490b;

        /* renamed from: c */
        private boolean f491c;

        /* renamed from: d */
        private C0233c f492d;

        /* renamed from: e */
        private long f493e;

        private C0235d(String str) {
            this.f489a = str;
            this.f490b = new long[C0230a.this.f475l];
        }

        /* synthetic */ C0235d(C0230a aVar, String str, CallableC0231a aVar2) {
            this(str);
        }

        /* renamed from: m */
        private IOException m591m(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: n */
        public void m590n(String[] strArr) throws IOException {
            if (strArr.length == C0230a.this.f475l) {
                for (int i = 0; i < strArr.length; i++) {
                    this.f490b[i] = Long.parseLong(strArr[i]);
                }
                return;
            }
            m591m(strArr);
            throw null;
        }

        /* renamed from: j */
        public File m594j(int i) {
            File file = C0230a.this.f469f;
            return new File(file, this.f489a + "." + i);
        }

        /* renamed from: k */
        public File m593k(int i) {
            File file = C0230a.this.f469f;
            return new File(file, this.f489a + "." + i + ".tmp");
        }

        /* renamed from: l */
        public String m592l() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f490b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: g.h.a.a$e */
    /* loaded from: classes2-dex2jar.jar:g/h/a/a$e.class */
    public final class C0236e implements Closeable {

        /* renamed from: f */
        private final InputStream[] f495f;

        /* renamed from: g */
        private final long[] f496g;

        private C0236e(C0230a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f495f = inputStreamArr;
            this.f496g = jArr;
        }

        /* synthetic */ C0236e(C0230a aVar, String str, long j, InputStream[] inputStreamArr, long[] jArr, CallableC0231a aVar2) {
            this(aVar, str, j, inputStreamArr, jArr);
        }

        /* renamed from: a */
        public InputStream m589a(int i) {
            return this.f495f[i];
        }

        /* renamed from: b */
        public long m588b(int i) {
            return this.f496g[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f495f) {
                C0239c.m584a(inputStream);
            }
        }
    }

    private C0230a(File file, int i, int i2, long j) {
        this.f469f = file;
        this.f473j = i;
        this.f470g = new File(file, "journal");
        this.f471h = new File(file, "journal.tmp");
        this.f472i = new File(file, "journal.bkp");
        this.f475l = i2;
        this.f474k = j;
    }

    /* renamed from: C */
    private C0233c m636C(String str, long j) throws IOException {
        C0235d dVar;
        synchronized (this) {
            m615o();
            m614o0(str);
            C0235d dVar2 = this.f478o.get(str);
            if (j != -1 && (dVar2 == null || dVar2.f493e != j)) {
                return null;
            }
            if (dVar2 == null) {
                dVar = new C0235d(this, str, null);
                this.f478o.put(str, dVar);
            } else {
                dVar = dVar2;
                if (dVar2.f492d != null) {
                    return null;
                }
            }
            C0233c cVar = new C0233c(this, dVar, null);
            dVar.f492d = cVar;
            Writer writer = this.f477n;
            writer.write("DIRTY " + str + '\n');
            this.f477n.flush();
            return cVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: K */
    public boolean m633K() {
        int i = this.f479p;
        return i >= 2000 && i >= this.f478o.size();
    }

    /* renamed from: L */
    public static C0230a m632L(File file, int i, int i2, long j) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        } else if (i2 > 0) {
            File file2 = new File(file, "journal.bkp");
            if (file2.exists()) {
                File file3 = new File(file, "journal");
                if (file3.exists()) {
                    file2.delete();
                } else {
                    m617l0(file2, file3, false);
                }
            }
            C0230a aVar = new C0230a(file, i, i2, j);
            if (aVar.f470g.exists()) {
                aVar.m630V();
                aVar.m631M();
                aVar.f477n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(aVar.f470g, true), C0239c.f503a));
                return aVar;
            }
            file.mkdirs();
            C0230a aVar2 = new C0230a(file, i, i2, j);
            aVar2.m622g0();
            return aVar2;
        } else {
            throw new IllegalArgumentException("valueCount <= 0");
        }
    }

    /* renamed from: M */
    private void m631M() throws IOException {
        m611z(this.f471h);
        Iterator<C0235d> it = this.f478o.values().iterator();
        while (it.hasNext()) {
            C0235d next = it.next();
            if (next.f492d == null) {
                for (int i = 0; i < this.f475l; i++) {
                    this.f476m += next.f490b[i];
                }
            } else {
                next.f492d = null;
                for (int i2 = 0; i2 < this.f475l; i2++) {
                    m611z(next.m594j(i2));
                    m611z(next.m593k(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: V */
    private void m630V() throws IOException {
        C0237b bVar = new C0237b(new FileInputStream(this.f470g), C0239c.f503a);
        String c = bVar.m585c();
        String c2 = bVar.m585c();
        String c3 = bVar.m585c();
        String c4 = bVar.m585c();
        String c5 = bVar.m585c();
        if (!"libcore.io.DiskLruCache".equals(c) || !"1".equals(c2) || !Integer.toString(this.f473j).equals(c3) || !Integer.toString(this.f475l).equals(c4) || !"".equals(c5)) {
            throw new IOException("unexpected journal header: [" + c + ", " + c2 + ", " + c4 + ", " + c5 + "]");
        }
        int i = 0;
        while (true) {
            m629W(bVar.m585c());
            i++;
        }
    }

    /* renamed from: W */
    private void m629W(String str) throws IOException {
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
                        this.f478o.remove(substring);
                        return;
                    }
                }
            } else {
                str2 = str.substring(i, indexOf2);
            }
            C0235d dVar = this.f478o.get(str2);
            C0235d dVar2 = dVar;
            if (dVar == null) {
                dVar2 = new C0235d(this, str2, null);
                this.f478o.put(str2, dVar2);
            }
            if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
                String[] split = str.substring(indexOf2 + 1).split(" ");
                dVar2.f491c = true;
                dVar2.f492d = null;
                dVar2.m590n(split);
            } else if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
                dVar2.f492d = new C0233c(this, dVar2, null);
            } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
                throw new IOException("unexpected journal line: " + str);
            }
        } else {
            throw new IOException("unexpected journal line: " + str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g0 */
    public void m622g0() throws IOException {
        synchronized (this) {
            Writer writer = this.f477n;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f471h), C0239c.f503a));
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f473j));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.f475l));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (C0235d dVar : this.f478o.values()) {
                if (dVar.f492d != null) {
                    bufferedWriter.write("DIRTY " + dVar.f489a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.f489a + dVar.m592l() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f470g.exists()) {
                m617l0(this.f470g, this.f472i, true);
            }
            m617l0(this.f471h, this.f470g, false);
            this.f472i.delete();
            this.f477n = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f470g, true), C0239c.f503a));
        }
    }

    /* renamed from: l0 */
    private static void m617l0(File file, File file2, boolean z) throws IOException {
        if (z) {
            m611z(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m0 */
    public void m616m0() throws IOException {
        while (this.f476m > this.f474k) {
            m621h0(this.f478o.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: o */
    private void m615o() {
        if (this.f477n == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* renamed from: o0 */
    private void m614o0(String str) {
        if (!f467t.matcher(str).matches()) {
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: r */
    public void m613r(C0233c cVar, boolean z) throws IOException {
        synchronized (this) {
            C0235d dVar = cVar.f484a;
            if (dVar.f492d == cVar) {
                int i = 0;
                if (z) {
                    i = 0;
                    if (!dVar.f491c) {
                        int i2 = 0;
                        while (true) {
                            i = 0;
                            if (i2 >= this.f475l) {
                                break;
                            } else if (!cVar.f485b[i2]) {
                                cVar.m609a();
                                throw new IllegalStateException("Newly created entry didn't create value for index " + i2);
                            } else if (!dVar.m593k(i2).exists()) {
                                cVar.m609a();
                                return;
                            } else {
                                i2++;
                            }
                        }
                    }
                }
                while (i < this.f475l) {
                    File k = dVar.m593k(i);
                    if (!z) {
                        m611z(k);
                    } else if (k.exists()) {
                        File j = dVar.m594j(i);
                        k.renameTo(j);
                        long j2 = dVar.f490b[i];
                        long length = j.length();
                        dVar.f490b[i] = length;
                        this.f476m = (this.f476m - j2) + length;
                    }
                    i++;
                }
                this.f479p++;
                dVar.f492d = null;
                if (dVar.f491c || z) {
                    dVar.f491c = true;
                    this.f477n.write("CLEAN " + dVar.f489a + dVar.m592l() + '\n');
                    if (z) {
                        long j3 = this.f480q;
                        this.f480q = 1 + j3;
                        dVar.f493e = j3;
                    }
                } else {
                    this.f478o.remove(dVar.f489a);
                    this.f477n.write("REMOVE " + dVar.f489a + '\n');
                }
                this.f477n.flush();
                if (this.f476m > this.f474k || m633K()) {
                    this.f481r.submit(this.f482s);
                }
                return;
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: z */
    private static void m611z(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    /* renamed from: A */
    public C0233c m637A(String str) throws IOException {
        return m636C(str, -1L);
    }

    /* renamed from: D */
    public C0236e m635D(String str) throws IOException {
        synchronized (this) {
            m615o();
            m614o0(str);
            C0235d dVar = this.f478o.get(str);
            if (dVar == null) {
                return null;
            }
            if (!dVar.f491c) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f475l];
            for (int i = 0; i < this.f475l; i++) {
                inputStreamArr[i] = new FileInputStream(dVar.m594j(i));
            }
            this.f479p++;
            this.f477n.append((CharSequence) ("READ " + str + '\n'));
            if (m633K()) {
                this.f481r.submit(this.f482s);
            }
            return new C0236e(this, str, dVar.f493e, inputStreamArr, dVar.f490b, null);
        }
    }

    /* renamed from: J */
    public File m634J() {
        return this.f469f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f477n != null) {
                Iterator it = new ArrayList(this.f478o.values()).iterator();
                while (it.hasNext()) {
                    C0235d dVar = (C0235d) it.next();
                    if (dVar.f492d != null) {
                        dVar.f492d.m609a();
                    }
                }
                m616m0();
                this.f477n.close();
                this.f477n = null;
            }
        }
    }

    /* renamed from: h0 */
    public boolean m621h0(String str) throws IOException {
        synchronized (this) {
            m615o();
            m614o0(str);
            C0235d dVar = this.f478o.get(str);
            if (dVar == null || dVar.f492d != null) {
                return false;
            }
            for (int i = 0; i < this.f475l; i++) {
                File j = dVar.m594j(i);
                if (!j.exists() || j.delete()) {
                    this.f476m -= dVar.f490b[i];
                    dVar.f490b[i] = 0;
                } else {
                    throw new IOException("failed to delete " + j);
                }
            }
            this.f479p++;
            this.f477n.append((CharSequence) ("REMOVE " + str + '\n'));
            this.f478o.remove(str);
            if (m633K()) {
                this.f481r.submit(this.f482s);
            }
            return true;
        }
    }

    /* renamed from: y */
    public void m612y() throws IOException {
        close();
        C0239c.m583b(this.f469f);
    }
}
