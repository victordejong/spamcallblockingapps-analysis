package p081h.p444n.p446b;

import gogolook.callgogolook2.gson.UserProfile;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: h.n.b.e */
/* loaded from: classes2-dex2jar.jar:h/n/b/e.class */
public class C10824e {

    /* renamed from: g */
    public static final Logger f24763g = Logger.getLogger(C10824e.class.getName());

    /* renamed from: h */
    public static final byte[] f24764h = new byte[4096];

    /* renamed from: a */
    public final RandomAccessFile f24765a;

    /* renamed from: b */
    public int f24766b;

    /* renamed from: c */
    public int f24767c;

    /* renamed from: d */
    public C10826b f24768d;

    /* renamed from: e */
    public C10826b f24769e;

    /* renamed from: f */
    public final byte[] f24770f = new byte[16];

    /* renamed from: h.n.b.e$a */
    /* loaded from: classes2-dex2jar.jar:h/n/b/e$a.class */
    public class C10825a implements AbstractC10828d {

        /* renamed from: a */
        public boolean f24771a = true;

        /* renamed from: b */
        public final /* synthetic */ StringBuilder f24772b;

        public C10825a(C10824e eVar, StringBuilder sb) {
            this.f24772b = sb;
        }

        @Override // p081h.p444n.p446b.C10824e.AbstractC10828d
        /* renamed from: a */
        public void mo10524a(InputStream inputStream, int i) throws IOException {
            if (this.f24771a) {
                this.f24771a = false;
            } else {
                this.f24772b.append(UserProfile.CARD_CATE_SEPARATOR);
            }
            this.f24772b.append(i);
        }
    }

    /* renamed from: h.n.b.e$b */
    /* loaded from: classes2-dex2jar.jar:h/n/b/e$b.class */
    public static class C10826b {

        /* renamed from: c */
        public static final C10826b f24773c = new C10826b(0, 0);

        /* renamed from: a */
        public final int f24774a;

        /* renamed from: b */
        public final int f24775b;

        public C10826b(int i, int i2) {
            this.f24774a = i;
            this.f24775b = i2;
        }

        public String toString() {
            return C10826b.class.getSimpleName() + "[position = " + this.f24774a + ", length = " + this.f24775b + "]";
        }
    }

    /* renamed from: h.n.b.e$c */
    /* loaded from: classes2-dex2jar.jar:h/n/b/e$c.class */
    public final class C10827c extends InputStream {

        /* renamed from: a */
        public int f24776a;

        /* renamed from: b */
        public int f24777b;

        public C10827c(C10826b bVar) {
            this.f24776a = C10824e.this.m10528d(bVar.f24774a + 4);
            this.f24777b = bVar.f24775b;
        }

        public /* synthetic */ C10827c(C10824e eVar, C10826b bVar, C10825a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f24777b == 0) {
                return -1;
            }
            C10824e.this.f24765a.seek(this.f24776a);
            int read = C10824e.this.f24765a.read();
            this.f24776a = C10824e.this.m10528d(this.f24776a + 1);
            this.f24777b--;
            return read;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            C10824e.m10533b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f24777b;
            if (i3 <= 0) {
                return -1;
            }
            int i4 = i2;
            if (i2 > i3) {
                i4 = i3;
            }
            C10824e.this.m10546a(this.f24776a, bArr, i, i4);
            this.f24776a = C10824e.this.m10528d(this.f24776a + i4);
            this.f24777b -= i4;
            return i4;
        }
    }

    /* renamed from: h.n.b.e$d */
    /* loaded from: classes2-dex2jar.jar:h/n/b/e$d.class */
    public interface AbstractC10828d {
        /* renamed from: a */
        void mo10524a(InputStream inputStream, int i) throws IOException;
    }

    public C10824e(File file) throws IOException {
        if (!file.exists()) {
            m10542a(file);
        }
        this.f24765a = m10534b(file);
        m10529d();
    }

    /* renamed from: a */
    public static int m10540a(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static void m10542a(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile b = m10534b(file2);
        try {
            b.setLength(4096L);
            b.seek(0L);
            byte[] bArr = new byte[16];
            m10538a(bArr, 4096, 0, 0, 0);
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
    public static void m10538a(byte[] bArr, int... iArr) {
        int i = 0;
        for (int i2 : iArr) {
            m10532b(bArr, i, i2);
            i += 4;
        }
    }

    /* renamed from: b */
    public static RandomAccessFile m10534b(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    /* renamed from: b */
    public static <T> T m10533b(T t, String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    /* renamed from: b */
    public static void m10532b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: a */
    public void m10550a() throws IOException {
        synchronized (this) {
            this.f24765a.seek(0L);
            this.f24765a.write(f24764h);
            m10547a(4096, 0, 0, 0);
            this.f24767c = 0;
            this.f24768d = C10826b.f24773c;
            this.f24769e = C10826b.f24773c;
            if (this.f24766b > 4096) {
                m10530c(4096);
            }
            this.f24766b = 4096;
        }
    }

    /* renamed from: a */
    public final void m10549a(int i) throws IOException {
        int i2;
        int i3;
        int i4 = i + 4;
        int e = m10527e();
        if (e < i4) {
            int i5 = this.f24766b;
            do {
                i2 = e + i5;
                i3 = i5 << 1;
                e = i2;
                i5 = i3;
            } while (i2 < i4);
            m10530c(i3);
            C10826b bVar = this.f24769e;
            int d = m10528d(bVar.f24774a + 4 + bVar.f24775b);
            if (d <= this.f24768d.f24774a) {
                FileChannel channel = this.f24765a.getChannel();
                channel.position(this.f24766b);
                int i6 = d - 16;
                long j = i6;
                if (channel.transferTo(16L, j, channel) == j) {
                    m10548a(16, i6);
                } else {
                    throw new AssertionError("Copied insufficient number of bytes!");
                }
            }
            int i7 = this.f24769e.f24774a;
            int i8 = this.f24768d.f24774a;
            if (i7 < i8) {
                int i9 = (this.f24766b + i7) - 16;
                m10547a(i3, this.f24767c, i8, i9);
                this.f24769e = new C10826b(i9, this.f24769e.f24775b);
            } else {
                m10547a(i3, this.f24767c, i8, i7);
            }
            this.f24766b = i3;
        }
    }

    /* renamed from: a */
    public final void m10548a(int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, f24764h.length);
            m10535b(i, f24764h, 0, min);
            i2 -= min;
            i += min;
        }
    }

    /* renamed from: a */
    public final void m10547a(int i, int i2, int i3, int i4) throws IOException {
        m10538a(this.f24770f, i, i2, i3, i4);
        this.f24765a.seek(0L);
        this.f24765a.write(this.f24770f);
    }

    /* renamed from: a */
    public final void m10546a(int i, byte[] bArr, int i2, int i3) throws IOException {
        int d = m10528d(i);
        int i4 = this.f24766b;
        if (d + i3 <= i4) {
            this.f24765a.seek(d);
            this.f24765a.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - d;
        this.f24765a.seek(d);
        this.f24765a.readFully(bArr, i2, i5);
        this.f24765a.seek(16L);
        this.f24765a.readFully(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: a */
    public void m10545a(AbstractC10828d dVar) throws IOException {
        synchronized (this) {
            int i = this.f24768d.f24774a;
            for (int i2 = 0; i2 < this.f24767c; i2++) {
                C10826b b = m10536b(i);
                dVar.mo10524a(new C10827c(this, b, null), b.f24775b);
                i = m10528d(b.f24774a + 4 + b.f24775b);
            }
        }
    }

    /* renamed from: a */
    public void m10539a(byte[] bArr, int i, int i2) throws IOException {
        synchronized (this) {
            m10533b(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            m10549a(i2);
            boolean b = m10537b();
            C10826b bVar = new C10826b(b ? 16 : m10528d(this.f24769e.f24774a + 4 + this.f24769e.f24775b), i2);
            m10532b(this.f24770f, 0, i2);
            m10535b(bVar.f24774a, this.f24770f, 0, 4);
            m10535b(bVar.f24774a + 4, bArr, i, i2);
            m10547a(this.f24766b, this.f24767c + 1, b ? bVar.f24774a : this.f24768d.f24774a, bVar.f24774a);
            this.f24769e = bVar;
            this.f24767c++;
            if (b) {
                this.f24768d = this.f24769e;
            }
        }
    }

    /* renamed from: b */
    public final C10826b m10536b(int i) throws IOException {
        if (i == 0) {
            return C10826b.f24773c;
        }
        m10546a(i, this.f24770f, 0, 4);
        return new C10826b(i, m10540a(this.f24770f, 0));
    }

    /* renamed from: b */
    public final void m10535b(int i, byte[] bArr, int i2, int i3) throws IOException {
        int d = m10528d(i);
        int i4 = this.f24766b;
        if (d + i3 <= i4) {
            this.f24765a.seek(d);
            this.f24765a.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - d;
        this.f24765a.seek(d);
        this.f24765a.write(bArr, i2, i5);
        this.f24765a.seek(16L);
        this.f24765a.write(bArr, i2 + i5, i3 - i5);
    }

    /* renamed from: b */
    public boolean m10537b() {
        boolean z;
        synchronized (this) {
            z = this.f24767c == 0;
        }
        return z;
    }

    /* renamed from: c */
    public final void m10530c(int i) throws IOException {
        this.f24765a.setLength(i);
        this.f24765a.getChannel().force(true);
    }

    /* renamed from: c */
    public byte[] m10531c() throws IOException {
        synchronized (this) {
            if (m10537b()) {
                return null;
            }
            int i = this.f24768d.f24775b;
            byte[] bArr = new byte[i];
            m10546a(this.f24768d.f24774a + 4, bArr, 0, i);
            return bArr;
        }
    }

    /* renamed from: d */
    public final int m10528d(int i) {
        int i2 = this.f24766b;
        if (i >= i2) {
            i = (i + 16) - i2;
        }
        return i;
    }

    /* renamed from: d */
    public final void m10529d() throws IOException {
        this.f24765a.seek(0L);
        this.f24765a.readFully(this.f24770f);
        this.f24766b = m10540a(this.f24770f, 0);
        if (this.f24766b > this.f24765a.length()) {
            throw new IOException("File is truncated. Expected length: " + this.f24766b + ", Actual length: " + this.f24765a.length());
        } else if (this.f24766b != 0) {
            this.f24767c = m10540a(this.f24770f, 4);
            int a = m10540a(this.f24770f, 8);
            int a2 = m10540a(this.f24770f, 12);
            this.f24768d = m10536b(a);
            this.f24769e = m10536b(a2);
        } else {
            throw new IOException("File is corrupt; length stored in header is 0.");
        }
    }

    /* renamed from: e */
    public final int m10527e() {
        return this.f24766b - m10525g();
    }

    /* renamed from: f */
    public void m10526f() throws IOException {
        synchronized (this) {
            if (m10537b()) {
                throw new NoSuchElementException();
            } else if (this.f24767c == 1) {
                m10550a();
            } else {
                int i = this.f24768d.f24775b + 4;
                m10548a(this.f24768d.f24774a, i);
                int d = m10528d(this.f24768d.f24774a + i);
                m10546a(d, this.f24770f, 0, 4);
                int a = m10540a(this.f24770f, 0);
                m10547a(this.f24766b, this.f24767c - 1, d, this.f24769e.f24774a);
                this.f24767c--;
                this.f24768d = new C10826b(d, a);
            }
        }
    }

    /* renamed from: g */
    public final int m10525g() {
        if (this.f24767c == 0) {
            return 16;
        }
        C10826b bVar = this.f24769e;
        int i = bVar.f24774a;
        int i2 = this.f24768d.f24774a;
        return i >= i2 ? (i - i2) + 4 + bVar.f24775b + 16 : (((i + 4) + bVar.f24775b) + this.f24766b) - i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(C10824e.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f24766b);
        sb.append(", size=");
        sb.append(this.f24767c);
        sb.append(", first=");
        sb.append(this.f24768d);
        sb.append(", last=");
        sb.append(this.f24769e);
        sb.append(", element lengths=[");
        try {
            m10545a(new C10825a(this, sb));
        } catch (IOException e) {
            f24763g.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }
}
