package com.bumptech.glide.load.resource.bitmap;

import android.support.annotation.NonNull;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream.class */
public class RecyclableBufferedInputStream extends FilterInputStream {
    private volatile byte[] buf;
    private final ArrayPool byteArrayPool;
    private int count;
    private int marklimit;
    private int markpos;
    private int pos;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RecyclableBufferedInputStream$InvalidMarkException.class */
    static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        InvalidMarkException(String str) {
            super(str);
        }
    }

    public RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool) {
        this(inputStream, arrayPool, 65536);
    }

    @VisibleForTesting
    RecyclableBufferedInputStream(@NonNull InputStream inputStream, @NonNull ArrayPool arrayPool, int i) {
        super(inputStream);
        this.markpos = -1;
        this.byteArrayPool = arrayPool;
        this.buf = (byte[]) arrayPool.get(i, byte[].class);
    }

    private int fillbuf(InputStream inputStream, byte[] bArr) throws IOException {
        byte[] bArr2;
        if (this.markpos == -1 || this.pos - this.markpos >= this.marklimit) {
            int read = inputStream.read(bArr);
            if (read > 0) {
                this.markpos = -1;
                this.pos = 0;
                this.count = read;
            }
            return read;
        }
        if (this.markpos == 0 && this.marklimit > bArr.length && this.count == bArr.length) {
            int length = bArr.length * 2;
            int i = length;
            if (length > this.marklimit) {
                i = this.marklimit;
            }
            bArr2 = (byte[]) this.byteArrayPool.get(i, byte[].class);
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            this.buf = bArr2;
            this.byteArrayPool.put(bArr);
        } else {
            bArr2 = bArr;
            if (this.markpos > 0) {
                System.arraycopy(bArr, this.markpos, bArr, 0, bArr.length - this.markpos);
                bArr2 = bArr;
            }
        }
        this.pos -= this.markpos;
        this.markpos = 0;
        this.count = 0;
        int read2 = inputStream.read(bArr2, this.pos, bArr2.length - this.pos);
        this.count = read2 <= 0 ? this.pos : this.pos + read2;
        return read2;
    }

    private static IOException streamClosed() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = this.in;
            if (this.buf == null || inputStream == null) {
                throw streamClosed();
            }
            i = this.count;
            i2 = this.pos;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.buf != null) {
            this.byteArrayPool.put(this.buf);
            this.buf = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    public void fixMarkLimit() {
        synchronized (this) {
            this.marklimit = this.buf.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.marklimit = Math.max(this.marklimit, i);
            this.markpos = this.pos;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        synchronized (this) {
            byte[] bArr = this.buf;
            InputStream inputStream = this.in;
            if (bArr == null || inputStream == null) {
                throw streamClosed();
            } else if (this.pos >= this.count && fillbuf(inputStream, bArr) == -1) {
                return -1;
            } else {
                byte[] bArr2 = bArr;
                if (bArr != this.buf) {
                    byte[] bArr3 = this.buf;
                    bArr2 = bArr3;
                    if (bArr3 == null) {
                        throw streamClosed();
                    }
                }
                if (this.count - this.pos <= 0) {
                    return -1;
                }
                int i = this.pos;
                this.pos = i + 1;
                return bArr2[i] & 255;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(@NonNull byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            byte[] bArr2 = this.buf;
            if (bArr2 == null) {
                throw streamClosed();
            } else if (i2 == 0) {
                return 0;
            } else {
                InputStream inputStream = this.in;
                if (inputStream == null) {
                    throw streamClosed();
                }
                if (this.pos < this.count) {
                    int i6 = this.count - this.pos >= i2 ? i2 : this.count - this.pos;
                    System.arraycopy(bArr2, this.pos, bArr, i, i6);
                    this.pos += i6;
                    if (i6 == i2 || inputStream.available() == 0) {
                        return i6;
                    }
                    i3 = i + i6;
                    i4 = i2 - i6;
                } else {
                    i3 = i;
                    i4 = i2;
                }
                while (true) {
                    int i7 = -1;
                    if (this.markpos == -1 && i4 >= bArr2.length) {
                        int read = inputStream.read(bArr, i3, i4);
                        bArr2 = bArr2;
                        i5 = read;
                        if (read == -1) {
                            if (i4 != i2) {
                                i7 = i2 - i4;
                            }
                            return i7;
                        }
                    } else if (fillbuf(inputStream, bArr2) == -1) {
                        if (i4 != i2) {
                            i7 = i2 - i4;
                        }
                        return i7;
                    } else {
                        bArr2 = bArr2;
                        if (bArr2 != this.buf) {
                            byte[] bArr3 = this.buf;
                            bArr2 = bArr3;
                            if (bArr3 == null) {
                                throw streamClosed();
                            }
                        }
                        int i8 = this.count - this.pos >= i4 ? i4 : this.count - this.pos;
                        System.arraycopy(bArr2, this.pos, bArr, i3, i8);
                        this.pos += i8;
                        i5 = i8;
                    }
                    i4 -= i5;
                    if (i4 == 0) {
                        return i2;
                    }
                    if (inputStream.available() == 0) {
                        return i2 - i4;
                    }
                    i3 += i5;
                }
            }
        }
    }

    public void release() {
        synchronized (this) {
            if (this.buf != null) {
                this.byteArrayPool.put(this.buf);
                this.buf = null;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            if (this.buf == null) {
                throw new IOException("Stream is closed");
            } else if (-1 == this.markpos) {
                throw new InvalidMarkException("Mark has been invalidated, pos: " + this.pos + " markLimit: " + this.marklimit);
            } else {
                this.pos = this.markpos;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        synchronized (this) {
            if (j < 1) {
                return 0L;
            }
            byte[] bArr = this.buf;
            if (bArr == null) {
                throw streamClosed();
            }
            InputStream inputStream = this.in;
            if (inputStream == null) {
                throw streamClosed();
            } else if (this.count - this.pos >= j) {
                this.pos = (int) (this.pos + j);
                return j;
            } else {
                long j2 = this.count - this.pos;
                this.pos = this.count;
                if (this.markpos == -1 || j > this.marklimit) {
                    return j2 + inputStream.skip(j - j2);
                } else if (fillbuf(inputStream, bArr) == -1) {
                    return j2;
                } else {
                    if (this.count - this.pos >= j - j2) {
                        this.pos = (int) ((this.pos + j) - j2);
                        return j;
                    }
                    long j3 = this.count;
                    long j4 = this.pos;
                    this.pos = this.count;
                    return (j2 + j3) - j4;
                }
            }
        }
    }
}
