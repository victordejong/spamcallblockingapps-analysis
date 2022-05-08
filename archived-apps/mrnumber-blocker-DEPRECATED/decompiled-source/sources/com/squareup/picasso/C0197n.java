package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.squareup.picasso.n */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/n.class */
final class C0197n extends InputStream {

    /* renamed from: f */
    private final InputStream f378f;

    /* renamed from: g */
    private long f379g;

    /* renamed from: h */
    private long f380h;

    /* renamed from: i */
    private long f381i;

    /* renamed from: j */
    private long f382j;

    /* renamed from: k */
    private boolean f383k;

    /* renamed from: l */
    private int f384l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0197n(InputStream inputStream) {
        this(inputStream, 4096);
    }

    C0197n(InputStream inputStream, int i) {
        this(inputStream, i, 1024);
    }

    private C0197n(InputStream inputStream, int i, int i2) {
        this.f382j = -1L;
        this.f383k = true;
        this.f384l = -1;
        this.f378f = !inputStream.markSupported() ? new BufferedInputStream(inputStream, i) : inputStream;
        this.f384l = i2;
    }

    /* renamed from: e */
    private void m738e(long j) {
        long j2 = this.f380h;
        long j3 = this.f379g;
        if (j2 >= j3 || j3 > this.f381i) {
            this.f380h = j3;
            this.f378f.mark((int) (j - j3));
        } else {
            this.f378f.reset();
            this.f378f.mark((int) (j - this.f380h));
            m737f(this.f380h, this.f379g);
        }
        this.f381i = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m737f(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0033
            r0 = r6
            java.io.InputStream r0 = r0.f378f
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.C0197n.m737f(long, long):void");
    }

    /* renamed from: a */
    public void m741a(boolean z) {
        this.f383k = z;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f378f.available();
    }

    /* renamed from: b */
    public void m740b(long j) throws IOException {
        if (this.f379g > this.f381i || j < this.f380h) {
            throw new IOException("Cannot reset");
        }
        this.f378f.reset();
        m737f(this.f380h, j);
        this.f379g = j;
    }

    /* renamed from: c */
    public long m739c(int i) {
        long j = this.f379g + i;
        if (this.f381i < j) {
            m738e(j);
        }
        return this.f379g;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f378f.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f382j = m739c(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f378f.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f383k) {
            long j = this.f379g;
            long j2 = this.f381i;
            if (j + 1 > j2) {
                m738e(j2 + this.f384l);
            }
        }
        int read = this.f378f.read();
        if (read != -1) {
            this.f379g++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.f383k) {
            long j = this.f379g;
            if (bArr.length + j > this.f381i) {
                m738e(j + bArr.length + this.f384l);
            }
        }
        int read = this.f378f.read(bArr);
        if (read != -1) {
            this.f379g += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f383k) {
            long j = this.f379g;
            long j2 = i2;
            if (j + j2 > this.f381i) {
                m738e(j + j2 + this.f384l);
            }
        }
        int read = this.f378f.read(bArr, i, i2);
        if (read != -1) {
            this.f379g += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        m740b(this.f382j);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.f383k) {
            long j2 = this.f379g;
            if (j2 + j > this.f381i) {
                m738e(j2 + j + this.f384l);
            }
        }
        long skip = this.f378f.skip(j);
        this.f379g += skip;
        return skip;
    }
}
