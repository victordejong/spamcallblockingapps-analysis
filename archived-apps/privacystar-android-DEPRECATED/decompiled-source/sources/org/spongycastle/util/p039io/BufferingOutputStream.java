package org.spongycastle.util.p039io;

import java.io.IOException;
import java.io.OutputStream;
import org.spongycastle.util.Arrays;
/* renamed from: org.spongycastle.util.io.BufferingOutputStream */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/util/io/BufferingOutputStream.class */
public class BufferingOutputStream extends OutputStream {
    private final byte[] buf;
    private int bufOff;
    private final OutputStream other;

    public BufferingOutputStream(OutputStream outputStream) {
        this.other = outputStream;
        this.buf = new byte[4096];
    }

    public BufferingOutputStream(OutputStream outputStream, int i) {
        this.other = outputStream;
        this.buf = new byte[i];
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.other.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.other.write(this.buf, 0, this.bufOff);
        this.bufOff = 0;
        Arrays.fill(this.buf, (byte) 0);
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        byte[] bArr = this.buf;
        int i2 = this.bufOff;
        this.bufOff = i2 + 1;
        bArr[i2] = (byte) i;
        if (this.bufOff == this.buf.length) {
            flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i2 < this.buf.length - this.bufOff) {
            System.arraycopy(bArr, i, this.buf, this.bufOff, i2);
            this.bufOff += i2;
            return;
        }
        int length = this.buf.length - this.bufOff;
        System.arraycopy(bArr, i, this.buf, this.bufOff, length);
        this.bufOff += length;
        flush();
        int i3 = i + length;
        int i4 = i2 - length;
        while (i4 >= this.buf.length) {
            this.other.write(bArr, i3, this.buf.length);
            i3 += this.buf.length;
            i4 -= this.buf.length;
        }
        if (i4 > 0) {
            System.arraycopy(bArr, i3, this.buf, this.bufOff, i4);
            this.bufOff += i4;
        }
    }
}
