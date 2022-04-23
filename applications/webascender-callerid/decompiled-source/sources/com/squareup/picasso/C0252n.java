package com.squareup.picasso;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.squareup.picasso.n */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/n.class */
final class C0252n extends InputStream {

    /* renamed from: f */
    private final InputStream f493f;

    /* renamed from: g */
    private long f494g;

    /* renamed from: h */
    private long f495h;

    /* renamed from: i */
    private long f496i;

    /* renamed from: j */
    private long f497j;

    /* renamed from: k */
    private boolean f498k;

    /* renamed from: l */
    private int f499l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0252n(InputStream inputStream) {
        this(inputStream, 4096);
    }

    C0252n(InputStream inputStream, int i) {
        this(inputStream, i, 1024);
    }

    private C0252n(InputStream inputStream, int i, int i2) {
        this.f497j = -1L;
        this.f498k = true;
        this.f499l = -1;
        this.f493f = !inputStream.markSupported() ? new BufferedInputStream(inputStream, i) : inputStream;
        this.f499l = i2;
    }

    /* renamed from: e */
    private void m659e(long j) {
        try {
            long j2 = this.f495h;
            long j3 = this.f494g;
            if (j2 >= j3 || j3 > this.f496i) {
                this.f495h = j3;
                this.f493f.mark((int) (j - j3));
            } else {
                this.f493f.reset();
                this.f493f.mark((int) (j - this.f495h));
                m658f(this.f495h, this.f494g);
            }
            this.f496i = j;
        } catch (IOException e) {
            throw new IllegalStateException("Unable to mark: " + e);
        }
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
    private void m658f(long r7, long r9) throws java.io.IOException {
        /*
            r6 = this;
        L_0x0000:
            r0 = r7
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0033
            r0 = r6
            java.io.InputStream r0 = r0.f493f
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
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.picasso.C0252n.m658f(long, long):void");
    }

    /* renamed from: a */
    public void m662a(boolean z) {
        this.f498k = z;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f493f.available();
    }

    /* renamed from: b */
    public void m661b(long j) throws IOException {
        if (this.f494g > this.f496i || j < this.f495h) {
            throw new IOException("Cannot reset");
        }
        this.f493f.reset();
        m658f(this.f495h, j);
        this.f494g = j;
    }

    /* renamed from: c */
    public long m660c(int i) {
        long j = this.f494g + i;
        if (this.f496i < j) {
            m659e(j);
        }
        return this.f494g;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f493f.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f497j = m660c(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f493f.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (!this.f498k) {
            long j = this.f494g;
            long j2 = this.f496i;
            if (j + 1 > j2) {
                m659e(j2 + this.f499l);
            }
        }
        int read = this.f493f.read();
        if (read != -1) {
            this.f494g++;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        if (!this.f498k) {
            long j = this.f494g;
            if (bArr.length + j > this.f496i) {
                m659e(j + bArr.length + this.f499l);
            }
        }
        int read = this.f493f.read(bArr);
        if (read != -1) {
            this.f494g += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (!this.f498k) {
            long j = this.f494g;
            long j2 = i2;
            if (j + j2 > this.f496i) {
                m659e(j + j2 + this.f499l);
            }
        }
        int read = this.f493f.read(bArr, i, i2);
        if (read != -1) {
            this.f494g += read;
        }
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        m661b(this.f497j);
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        if (!this.f498k) {
            long j2 = this.f494g;
            if (j2 + j > this.f496i) {
                m659e(j2 + j + this.f499l);
            }
        }
        long skip = this.f493f.skip(j);
        this.f494g += skip;
        return skip;
    }
}
