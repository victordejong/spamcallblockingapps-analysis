package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.squareup.picasso.n */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/n.class */
final class C1920n extends InputStream {

    /* renamed from: f */
    private final InputStream f5172f;

    /* renamed from: g */
    private long f5173g;

    /* renamed from: h */
    private long f5174h;

    /* renamed from: i */
    private long f5175i;

    /* renamed from: j */
    private long f5176j;

    /* renamed from: k */
    private boolean f5177k;

    /* renamed from: l */
    private int f5178l;

    public C1920n(InputStream inputStream) {
        this(inputStream, 4096);
    }

    C1920n(InputStream inputStream, int i) {
        this(inputStream, i, 1024);
    }

    private C1920n(InputStream inputStream, int i, int i2) {
        this.f5176j = -1L;
        this.f5177k = true;
        this.f5178l = -1;
        this.f5172f = !inputStream.markSupported() ? new BufferedInputStream(inputStream, i) : inputStream;
        this.f5178l = i2;
    }

    /* renamed from: e */
    private void m659e(long j) {
        try {
            long j2 = this.f5174h;
            long j3 = this.f5173g;
            if (j2 >= j3 || j3 > this.f5175i) {
                this.f5174h = j3;
                this.f5172f.mark((int) (j - j3));
            } else {
                this.f5172f.reset();
                this.f5172f.mark((int) (j - this.f5174h));
                m658f(this.f5174h, this.f5173g);
            }
            this.f5175i = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r7 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m658f(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
        L0:
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L33
            r0 = r6
            java.io.InputStream r0 = r0.f5172f
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
            if (r0 != 0) goto L2b
            r0 = r6
            int r0 = r0.read()
            r1 = -1
            if (r0 != r1) goto L28
            goto L33
        L28:
            r0 = 1
            r13 = r0
        L2b:
            r0 = r7
            r1 = r13
            long r0 = r0 + r1
            r7 = r0
            goto L0
        L33:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.C1920n.m658f(long, long):void");
    }

    /* renamed from: a */
    public void m662a(boolean z) {
        this.f5177k = z;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f5172f.available();
    }

    /* renamed from: b */
    public void m661b(long j) throws IOException {
        if (this.f5173g > this.f5175i || j < this.f5174h) {
            throw new IOException("Cannot reset");
        }
        this.f5172f.reset();
        m658f(this.f5174h, j);
        this.f5173g = j;
    }

    /* renamed from: c */
    public long m660c(int i) {
        long j = this.f5173g + i;
        if (this.f5175i < j) {
            m659e(j);
        }
        return this.f5173g;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5172f.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f5176j = m660c(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f5172f.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f5177k) {
            long j = this.f5173g;
            long j2 = this.f5175i;
            if (j + 1 > j2) {
                m659e(j2 + this.f5178l);
            }
        }
        int read = this.f5172f.read();
        if (read != -1) {
            this.f5173g++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.f5177k) {
            long j = this.f5173g;
            if (bArr.length + j > this.f5175i) {
                m659e(j + bArr.length + this.f5178l);
            }
        }
        int read = this.f5172f.read(bArr);
        if (read != -1) {
            this.f5173g += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f5177k) {
            long j = this.f5173g;
            long j2 = i2;
            if (j + j2 > this.f5175i) {
                m659e(j + j2 + this.f5178l);
            }
        }
        int read = this.f5172f.read(bArr, i, i2);
        if (read != -1) {
            this.f5173g += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        m661b(this.f5176j);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.f5177k) {
            long j2 = this.f5173g;
            if (j2 + j > this.f5175i) {
                m659e(j2 + j + this.f5178l);
            }
        }
        long skip = this.f5172f.skip(j);
        this.f5173g += skip;
        return skip;
    }
}
