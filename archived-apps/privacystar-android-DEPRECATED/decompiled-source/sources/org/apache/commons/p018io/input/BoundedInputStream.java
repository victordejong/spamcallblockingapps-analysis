package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: org.apache.commons.io.input.BoundedInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/BoundedInputStream.class */
public class BoundedInputStream extends InputStream {

    /* renamed from: in */
    private final InputStream f766in;
    private long mark;
    private final long max;
    private long pos;
    private boolean propagateClose;

    public BoundedInputStream(InputStream inputStream) {
        this(inputStream, -1L);
    }

    public BoundedInputStream(InputStream inputStream, long j) {
        this.pos = 0L;
        this.mark = -1L;
        this.propagateClose = true;
        this.max = j;
        this.f766in = inputStream;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        if (this.max < 0 || this.pos < this.max) {
            return this.f766in.available();
        }
        return 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.propagateClose) {
            this.f766in.close();
        }
    }

    public boolean isPropagateClose() {
        return this.propagateClose;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f766in.mark(i);
            this.mark = this.pos;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f766in.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.f766in.read();
        this.pos++;
        return read;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (this.max >= 0 && this.pos >= this.max) {
            return -1;
        }
        int read = this.f766in.read(bArr, i, (int) (this.max >= 0 ? Math.min(i2, this.max - this.pos) : i2));
        if (read == -1) {
            return -1;
        }
        this.pos += read;
        return read;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.f766in.reset();
            this.pos = this.mark;
        }
    }

    public void setPropagateClose(boolean z) {
        this.propagateClose = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1, types: [long] */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r8v0, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // java.io.InputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long skip(long r8) throws java.io.IOException {
        /*
            r7 = this;
            r0 = r8
            r10 = r0
            r0 = r7
            long r0 = r0.max
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0019
            r0 = r8
            r1 = r7
            long r1 = r1.max
            r2 = r7
            long r2 = r2.pos
            long r1 = r1 - r2
            long r0 = java.lang.Math.min(r0, r1)
            r10 = r0
        L_0x0019:
            r0 = r7
            java.io.InputStream r0 = r0.f766in
            r1 = r10
            long r0 = r0.skip(r1)
            r8 = r0
            r0 = r7
            r1 = r7
            long r1 = r1.pos
            r2 = r8
            long r1 = r1 + r2
            r0.pos = r1
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.p018io.input.BoundedInputStream.skip(long):long");
    }

    public String toString() {
        return this.f766in.toString();
    }
}
