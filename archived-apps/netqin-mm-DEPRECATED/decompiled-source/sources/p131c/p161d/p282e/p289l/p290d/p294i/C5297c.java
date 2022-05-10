package p131c.p161d.p282e.p289l.p290d.p294i;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: c.d.e.l.d.i.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/c.class */
public class C5297c implements Closeable {

    /* renamed from: g */
    public static final Logger f18079g = Logger.getLogger(C5297c.class.getName());

    /* renamed from: a */
    public final RandomAccessFile f18080a;

    /* renamed from: b */
    public int f18081b;

    /* renamed from: c */
    public int f18082c;

    /* renamed from: d */
    public C5299b f18083d;

    /* renamed from: e */
    public C5299b f18084e;

    /* renamed from: f */
    public final byte[] f18085f = new byte[16];

    /* renamed from: c.d.e.l.d.i.c$a */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/c$a.class */
    public class C5298a implements AbstractC5301d {

        /* renamed from: a */
        public boolean f18086a = true;

        /* renamed from: b */
        public final /* synthetic */ StringBuilder f18087b;

        public C5298a(StringBuilder sb) {
            this.f18087b = sb;
        }

        @Override // p131c.p161d.p282e.p289l.p290d.p294i.C5297c.AbstractC5301d
        /* renamed from: a */
        public void mo23995a(InputStream inputStream, int i) throws IOException {
            if (this.f18086a) {
                this.f18086a = false;
            } else {
                this.f18087b.append(", ");
            }
            this.f18087b.append(i);
        }
    }

    /* renamed from: c.d.e.l.d.i.c$b */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/c$b.class */
    public static class C5299b {

        /* renamed from: c */
        public static final C5299b f18089c = new C5299b(0, 0);

        /* renamed from: a */
        public final int f18090a;

        /* renamed from: b */
        public final int f18091b;

        public C5299b(int i, int i2) {
            this.f18090a = i;
            this.f18091b = i2;
        }

        public String toString() {
            return C5299b.class.getSimpleName() + "[position = " + this.f18090a + ", length = " + this.f18091b + "]";
        }
    }

    /* renamed from: c.d.e.l.d.i.c$c */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/c$c.class */
    public final class C5300c extends InputStream {

        /* renamed from: a */
        public int f18092a;

        /* renamed from: b */
        public int f18093b;

        public C5300c(C5299b bVar) {
            this.f18092a = C5297c.this.m24006d(bVar.f18090a + 4);
            this.f18093b = bVar.f18091b;
        }

        public /* synthetic */ C5300c(C5297c cVar, C5299b bVar, C5298a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f18093b == 0) {
                return -1;
            }
            C5297c.this.f18080a.seek(this.f18092a);
            int read = C5297c.this.f18080a.read();
            this.f18092a = C5297c.this.m24006d(this.f18092a + 1);
            this.f18093b--;
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            C5297c.m24012b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f18093b;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C5297c.this.m24026a(this.f18092a, bArr, i, i4);
            this.f18092a = C5297c.this.m24006d(this.f18092a + i4);
            this.f18093b -= i4;
            return i4;
        }
    }

    /* renamed from: c.d.e.l.d.i.c$d */
    /* loaded from: classes2-dex2jar.jar:c/d/e/l/d/i/c$d.class */
    public interface AbstractC5301d {
        /* renamed from: a */
        void mo23995a(InputStream inputStream, int i) throws IOException;
    }

    public C5297c(File file) throws IOException {
        if (!file.exists()) {
            m24021a(file);
        }
        this.f18080a = m24013b(file);
        m24010c();
    }

    /* renamed from: a */
    public static int m24018a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m24021a(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile b = m24013b(file2);
        try {
            b.setLength(4096L);
            b.seek(0L);
            byte[] bArr = new byte[16];
            m24017a(bArr, 4096, 0, 0, 0);
            b.write(bArr);
            b.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            b.close();
            throw th;
        }
    }

    /* renamed from: a */
    public static void m24017a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            m24008c(bArr, i, i2);
            i += 4;
        }
    }

    /* renamed from: b */
    public static RandomAccessFile m24013b(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: b */
    public static <T> T m24012b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: c */
    public static void m24008c(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: a */
    public void m24029a() throws IOException {
        synchronized (this) {
            m24027a(4096, 0, 0, 0);
            this.f18082c = 0;
            this.f18083d = C5299b.f18089c;
            this.f18084e = C5299b.f18089c;
            if (this.f18081b > 4096) {
                m24009c(4096);
            }
            this.f18081b = 4096;
        }
    }

    /* renamed from: a */
    public final void m24028a(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int d = m24007d();
        if (d < i4) {
            int i5 = this.f18081b;
            do {
                i2 = d + i5;
                i3 = i5 << 1;
                d = i2;
                i5 = i3;
            } while (i2 < i4);
            m24009c(i3);
            C5299b bVar = this.f18084e;
            int d2 = m24006d(bVar.f18090a + 4 + bVar.f18091b);
            if (d2 < this.f18083d.f18090a) {
                FileChannel channel = this.f18080a.getChannel();
                channel.position(this.f18081b);
                long j = d2 - 4;
                if (channel.transferTo(16L, j, channel) != j) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            int i6 = this.f18084e.f18090a;
            int i7 = this.f18083d.f18090a;
            if (i6 < i7) {
                int i8 = (this.f18081b + i6) - 16;
                m24027a(i3, this.f18082c, i7, i8);
                this.f18084e = new C5299b(i8, this.f18084e.f18091b);
            } else {
                m24027a(i3, this.f18082c, i7, i6);
            }
            this.f18081b = i3;
        }
    }

    /* renamed from: a */
    public final void m24027a(int i, int i2, int i3, int i4) throws IOException {
        m24017a(this.f18085f, i, i2, i3, i4);
        this.f18080a.seek(0L);
        this.f18080a.write(this.f18085f);
    }

    /* renamed from: a */
    public final void m24026a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int d = m24006d(i);
        int i4 = this.f18081b;
        if (d + i3 <= i4) {
            this.f18080a.seek(d);
            this.f18080a.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - d;
        this.f18080a.seek(d);
        this.f18080a.readFully(bArr, i2, i5);
        this.f18080a.seek(16L);
        this.f18080a.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: a */
    public void m24025a(AbstractC5301d dVar) throws IOException {
        synchronized (this) {
            int i = this.f18083d.f18090a;
            for (int i2 = 0; i2 < this.f18082c; i2++) {
                C5299b b = m24015b(i);
                dVar.mo23995a(new C5300c(this, b, null), b.f18091b);
                i = m24006d(b.f18090a + 4 + b.f18091b);
            }
        }
    }

    /* renamed from: a */
    public void m24019a(byte[] bArr) throws IOException {
        m24011b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public final C5299b m24015b(int i) throws IOException {
        if (i == 0) {
            return C5299b.f18089c;
        }
        this.f18080a.seek(i);
        return new C5299b(i, this.f18080a.readInt());
    }

    /* renamed from: b */
    public final void m24014b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int d = m24006d(i);
        int i4 = this.f18081b;
        if (d + i3 <= i4) {
            this.f18080a.seek(d);
            this.f18080a.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - d;
        this.f18080a.seek(d);
        this.f18080a.write(bArr, i2, i5);
        this.f18080a.seek(16L);
        this.f18080a.write(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: b */
    public void m24011b(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            m24012b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            m24028a(i2);
            boolean b = m24016b();
            C5299b bVar = new C5299b(b ? 16 : m24006d(this.f18084e.f18090a + 4 + this.f18084e.f18091b), i2);
            m24008c(this.f18085f, 0, i2);
            m24014b(bVar.f18090a, this.f18085f, 0, 4);
            m24014b(bVar.f18090a + 4, bArr, i, i2);
            m24027a(this.f18081b, this.f18082c + 1, b ? bVar.f18090a : this.f18083d.f18090a, bVar.f18090a);
            this.f18084e = bVar;
            this.f18082c++;
            if (b) {
                this.f18083d = bVar;
            }
        }
    }

    /* renamed from: b */
    public boolean m24016b() {
        boolean z;
        synchronized (this) {
            z = this.f18082c == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final void m24010c() throws IOException {
        this.f18080a.seek(0L);
        this.f18080a.readFully(this.f18085f);
        int a = m24018a(this.f18085f, 0);
        this.f18081b = a;
        if (a <= this.f18080a.length()) {
            this.f18082c = m24018a(this.f18085f, 4);
            int a2 = m24018a(this.f18085f, 8);
            int a3 = m24018a(this.f18085f, 12);
            this.f18083d = m24015b(a2);
            this.f18084e = m24015b(a3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f18081b + ", Actual length: " + this.f18080a.length());
    }

    /* renamed from: c */
    public final void m24009c(int i) throws IOException {
        this.f18080a.setLength(i);
        this.f18080a.getChannel().force(true);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            this.f18080a.close();
        }
    }

    /* renamed from: d */
    public final int m24007d() {
        return this.f18081b - m24004f();
    }

    /* renamed from: d */
    public final int m24006d(int i) {
        int i2 = this.f18081b;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: e */
    public void m24005e() throws IOException {
        synchronized (this) {
            if (m24016b()) {
                throw new NoSuchElementException();
            } else if (this.f18082c == 1) {
                m24029a();
            } else {
                int d = m24006d(this.f18083d.f18090a + 4 + this.f18083d.f18091b);
                m24026a(d, this.f18085f, 0, 4);
                int a = m24018a(this.f18085f, 0);
                m24027a(this.f18081b, this.f18082c - 1, d, this.f18084e.f18090a);
                this.f18082c--;
                this.f18083d = new C5299b(d, a);
            }
        }
    }

    /* renamed from: f */
    public int m24004f() {
        if (this.f18082c == 0) {
            return 16;
        }
        C5299b bVar = this.f18084e;
        int i = bVar.f18090a;
        int i2 = this.f18083d.f18090a;
        return i >= i2 ? (i - i2) + 4 + bVar.f18091b + 16 : (((i + 4) + bVar.f18091b) + this.f18081b) - i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C5297c.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f18081b);
        sb.append(", size=");
        sb.append(this.f18082c);
        sb.append(", first=");
        sb.append(this.f18083d);
        sb.append(", last=");
        sb.append(this.f18084e);
        sb.append(", element lengths=[");
        try {
            m24025a(new C5298a(sb));
        } catch (IOException e) {
            f18079g.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}
