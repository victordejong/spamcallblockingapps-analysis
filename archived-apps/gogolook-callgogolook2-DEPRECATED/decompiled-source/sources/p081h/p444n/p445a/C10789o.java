package p081h.p444n.p445a;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.n.a.o */
/* loaded from: classes2-dex2jar.jar:h/n/a/o.class */
public final class C10789o extends InputStream {

    /* renamed from: a */
    public final InputStream f24624a;

    /* renamed from: b */
    public long f24625b;

    /* renamed from: c */
    public long f24626c;

    /* renamed from: d */
    public long f24627d;

    /* renamed from: e */
    public long f24628e;

    /* renamed from: f */
    public boolean f24629f;

    /* renamed from: g */
    public int f24630g;

    public C10789o(InputStream inputStream) {
        this(inputStream, 4096);
    }

    public C10789o(InputStream inputStream, int i) {
        this(inputStream, i, 1024);
    }

    public C10789o(InputStream inputStream, int i, int i2) {
        this.f24628e = -1L;
        this.f24629f = true;
        this.f24630g = -1;
        this.f24624a = !inputStream.markSupported() ? new BufferedInputStream(inputStream, i) : inputStream;
        this.f24630g = i2;
    }

    /* renamed from: a */
    public long m10626a(int i) {
        long j = this.f24625b + i;
        if (this.f24627d < j) {
            m10622h(j);
        }
        return this.f24625b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10625a(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0033
            r0 = r6
            java.io.InputStream r0 = r0.f24624a
            r1 = r9
            r2 = r7
            long r1 = r1 - r2
            long r0 = r0.skip(r1)
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r11
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x002b
            r0 = r6
            int r0 = r0.read()
            r1 = -1
            if (r0 != r1) goto L_0x0028
            goto L_0x0033
        L_0x0028:
            r0 = 1
            r13 = r0
        L_0x002b:
            r0 = r7
            r1 = r13
            long r0 = r0 + r1
            r7 = r0
            goto L_0x0000
        L_0x0033:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p444n.p445a.C10789o.m10625a(long, long):void");
    }

    /* renamed from: a */
    public void m10624a(boolean z) {
        this.f24629f = z;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f24624a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f24624a.close();
    }

    /* renamed from: g */
    public void m10623g(long j) throws IOException {
        if (this.f24625b > this.f24627d || j < this.f24626c) {
            throw new IOException("Cannot reset");
        }
        this.f24624a.reset();
        m10625a(this.f24626c, j);
        this.f24625b = j;
    }

    /* renamed from: h */
    public final void m10622h(long j) {
        try {
            if (this.f24626c >= this.f24625b || this.f24625b > this.f24627d) {
                this.f24626c = this.f24625b;
                this.f24624a.mark((int) (j - this.f24625b));
            } else {
                this.f24624a.reset();
                this.f24624a.mark((int) (j - this.f24626c));
                m10625a(this.f24626c, this.f24625b);
            }
            this.f24627d = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f24628e = m10626a(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f24624a.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f24629f) {
            long j = this.f24625b;
            long j2 = this.f24627d;
            if (j + 1 > j2) {
                m10622h(j2 + this.f24630g);
            }
        }
        int read = this.f24624a.read();
        if (read != -1) {
            this.f24625b++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.f24629f) {
            long j = this.f24625b;
            if (bArr.length + j > this.f24627d) {
                m10622h(j + bArr.length + this.f24630g);
            }
        }
        int read = this.f24624a.read(bArr);
        if (read != -1) {
            this.f24625b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f24629f) {
            long j = this.f24625b;
            long j2 = i2;
            if (j + j2 > this.f24627d) {
                m10622h(j + j2 + this.f24630g);
            }
        }
        int read = this.f24624a.read(bArr, i, i2);
        if (read != -1) {
            this.f24625b += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        m10623g(this.f24628e);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.f24629f) {
            long j2 = this.f24625b;
            if (j2 + j > this.f24627d) {
                m10622h(j2 + j + this.f24630g);
            }
        }
        long skip = this.f24624a.skip(j);
        this.f24625b += skip;
        return skip;
    }
}
