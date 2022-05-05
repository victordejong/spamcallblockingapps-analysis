package p000a.p001a.p002a.p003a.p004a.p006b;

import com.crashlytics.android.core.CodedOutputStream;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: a.a.a.a.a.b.aa */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/aa.class */
public class C0008aa implements Closeable {

    /* renamed from: b */
    private static final Logger f6b = Logger.getLogger(C0008aa.class.getName());

    /* renamed from: a */
    int f7a;

    /* renamed from: c */
    private final RandomAccessFile f8c;

    /* renamed from: d */
    private int f9d;

    /* renamed from: e */
    private C0009a f10e;

    /* renamed from: f */
    private C0009a f11f;

    /* renamed from: g */
    private final byte[] f12g = new byte[16];

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a.a.a.a.a.b.aa$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/aa$a.class */
    public static final class C0009a {

        /* renamed from: a */
        static final C0009a f13a = new C0009a(0, 0);

        /* renamed from: b */
        final int f14b;

        /* renamed from: c */
        final int f15c;

        C0009a(int i, int i2) {
            this.f14b = i;
            this.f15c = i2;
        }

        public final String toString() {
            return getClass().getSimpleName() + "[position = " + this.f14b + ", length = " + this.f15c + "]";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a.a.a.a.a.b.aa$b */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/aa$b.class */
    public final class C0010b extends InputStream {

        /* renamed from: b */
        private int f17b;

        /* renamed from: c */
        private int f18c;

        private C0010b(C0009a aVar) {
            this.f17b = C0008aa.this.m10386b(aVar.f14b + 4);
            this.f18c = aVar.f15c;
        }

        /* synthetic */ C0010b(C0008aa aaVar, C0009a aVar, byte b) {
            this(aVar);
        }

        @Override // java.io.InputStream
        public final int read() {
            if (this.f18c == 0) {
                return -1;
            }
            C0008aa.this.f8c.seek(this.f17b);
            int read = C0008aa.this.f8c.read();
            this.f17b = C0008aa.this.m10386b(this.f17b + 1);
            this.f18c--;
            return read;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            C0008aa.m10385b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f18c;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C0008aa.this.m10398a(this.f17b, bArr, i, i4);
            this.f17b = C0008aa.this.m10386b(this.f17b + i4);
            this.f18c -= i4;
            return i4;
        }
    }

    /* renamed from: a.a.a.a.a.b.aa$c */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/aa$c.class */
    public interface AbstractC0011c {
        void read(InputStream inputStream, int i);
    }

    /* JADX WARN: Finally extract failed */
    public C0008aa(File file) {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile a = m10393a(file2);
            try {
                a.setLength(4096L);
                a.seek(0L);
                byte[] bArr = new byte[16];
                m10388a(bArr, CodedOutputStream.DEFAULT_BUFFER_SIZE, 0, 0, 0);
                a.write(bArr);
                a.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                a.close();
                throw th;
            }
        }
        this.f8c = m10393a(file);
        this.f8c.seek(0L);
        this.f8c.readFully(this.f12g);
        this.f7a = m10390a(this.f12g, 0);
        if (this.f7a <= this.f8c.length()) {
            this.f9d = m10390a(this.f12g, 4);
            int a2 = m10390a(this.f12g, 8);
            int a3 = m10390a(this.f12g, 12);
            this.f10e = m10402a(a2);
            this.f11f = m10402a(a3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.f7a + ", Actual length: " + this.f8c.length());
    }

    /* renamed from: a */
    private static int m10390a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: a */
    private C0009a m10402a(int i) {
        if (i == 0) {
            return C0009a.f13a;
        }
        this.f8c.seek(i);
        return new C0009a(i, this.f8c.readInt());
    }

    /* renamed from: a */
    private static RandomAccessFile m10393a(File file) {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: a */
    private void m10400a(int i, int i2, int i3, int i4) {
        m10388a(this.f12g, i, i2, i3, i4);
        this.f8c.seek(0L);
        this.f8c.write(this.f12g);
    }

    /* renamed from: a */
    private void m10399a(int i, byte[] bArr, int i2) {
        int b = m10386b(i);
        int i3 = this.f7a;
        if (b + i2 <= i3) {
            this.f8c.seek(b);
            this.f8c.write(bArr, 0, i2);
            return;
        }
        int i4 = i3 - b;
        this.f8c.seek(b);
        this.f8c.write(bArr, 0, i4);
        this.f8c.seek(16L);
        this.f8c.write(bArr, i4 + 0, i2 - i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m10398a(int i, byte[] bArr, int i2, int i3) {
        RandomAccessFile randomAccessFile;
        int b = m10386b(i);
        int i4 = this.f7a;
        if (b + i3 <= i4) {
            this.f8c.seek(b);
            randomAccessFile = this.f8c;
        } else {
            int i5 = i4 - b;
            this.f8c.seek(b);
            this.f8c.readFully(bArr, i2, i5);
            this.f8c.seek(16L);
            randomAccessFile = this.f8c;
            i2 += i5;
            i3 -= i5;
        }
        randomAccessFile.readFully(bArr, i2, i3);
    }

    /* renamed from: a */
    private static void m10389a(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: a */
    private static void m10388a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            m10389a(bArr, i, iArr[i2]);
            i += 4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public int m10386b(int i) {
        int i2 = this.f7a;
        return i < i2 ? i : (i + 16) - i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public static <T> T m10385b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: b */
    private void m10384b(byte[] bArr, int i) {
        synchronized (this) {
            m10385b(bArr, "buffer");
            if ((i | 0) < 0 || i > bArr.length - 0) {
                throw new IndexOutOfBoundsException();
            }
            m10382c(i);
            boolean b = m10387b();
            C0009a aVar = new C0009a(b ? 16 : m10386b(this.f11f.f14b + 4 + this.f11f.f15c), i);
            m10389a(this.f12g, 0, i);
            m10399a(aVar.f14b, this.f12g, 4);
            m10399a(aVar.f14b + 4, bArr, i);
            m10400a(this.f7a, this.f9d + 1, b ? aVar.f14b : this.f10e.f14b, aVar.f14b);
            this.f11f = aVar;
            this.f9d++;
            if (b) {
                this.f10e = this.f11f;
            }
        }
    }

    /* renamed from: c */
    private void m10382c(int i) {
        int i2;
        int i3;
        int i4 = i + 4;
        int a = this.f7a - m10403a();
        if (a < i4) {
            int i5 = this.f7a;
            do {
                i2 = a + i5;
                i3 = i5 << 1;
                a = i2;
                i5 = i3;
            } while (i2 < i4);
            m10380d(i3);
            int b = m10386b(this.f11f.f14b + 4 + this.f11f.f15c);
            if (b < this.f10e.f14b) {
                FileChannel channel = this.f8c.getChannel();
                channel.position(this.f7a);
                long j = b - 4;
                if (channel.transferTo(16L, j, channel) != j) {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            if (this.f11f.f14b < this.f10e.f14b) {
                int i6 = (this.f7a + this.f11f.f14b) - 16;
                m10400a(i3, this.f9d, this.f10e.f14b, i6);
                this.f11f = new C0009a(i6, this.f11f.f15c);
            } else {
                m10400a(i3, this.f9d, this.f10e.f14b, this.f11f.f14b);
            }
            this.f7a = i3;
        }
    }

    /* renamed from: d */
    private void m10381d() {
        synchronized (this) {
            m10400a(CodedOutputStream.DEFAULT_BUFFER_SIZE, 0, 0, 0);
            this.f9d = 0;
            this.f10e = C0009a.f13a;
            this.f11f = C0009a.f13a;
            if (this.f7a > 4096) {
                m10380d(CodedOutputStream.DEFAULT_BUFFER_SIZE);
            }
            this.f7a = CodedOutputStream.DEFAULT_BUFFER_SIZE;
        }
    }

    /* renamed from: d */
    private void m10380d(int i) {
        this.f8c.setLength(i);
        this.f8c.getChannel().force(true);
    }

    /* renamed from: a */
    public final int m10403a() {
        if (this.f9d == 0) {
            return 16;
        }
        return this.f11f.f14b >= this.f10e.f14b ? (this.f11f.f14b - this.f10e.f14b) + 4 + this.f11f.f15c + 16 : (((this.f11f.f14b + 4) + this.f11f.f15c) + this.f7a) - this.f10e.f14b;
    }

    /* renamed from: a */
    public final void m10397a(AbstractC0011c cVar) {
        synchronized (this) {
            int i = this.f10e.f14b;
            for (int i2 = 0; i2 < this.f9d; i2++) {
                C0009a a = m10402a(i);
                cVar.read(new C0010b(this, a, (byte) 0), a.f15c);
                i = m10386b(a.f14b + 4 + a.f15c);
            }
        }
    }

    /* renamed from: a */
    public final void m10391a(byte[] bArr) {
        m10384b(bArr, bArr.length);
    }

    /* renamed from: a */
    public final boolean m10401a(int i, int i2) {
        return (m10403a() + 4) + i <= i2;
    }

    /* renamed from: b */
    public final boolean m10387b() {
        boolean z;
        synchronized (this) {
            z = this.f9d == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final void m10383c() {
        synchronized (this) {
            if (m10387b()) {
                throw new NoSuchElementException();
            } else if (this.f9d == 1) {
                m10381d();
            } else {
                int b = m10386b(this.f10e.f14b + 4 + this.f10e.f15c);
                m10398a(b, this.f12g, 0, 4);
                int a = m10390a(this.f12g, 0);
                m10400a(this.f7a, this.f9d - 1, b, this.f11f.f14b);
                this.f9d--;
                this.f10e = new C0009a(b, a);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            this.f8c.close();
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f7a);
        sb.append(", size=");
        sb.append(this.f9d);
        sb.append(", first=");
        sb.append(this.f10e);
        sb.append(", last=");
        sb.append(this.f11f);
        sb.append(", element lengths=[");
        try {
            m10397a(new C0012ab(this, sb));
        } catch (IOException e) {
            f6b.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}
