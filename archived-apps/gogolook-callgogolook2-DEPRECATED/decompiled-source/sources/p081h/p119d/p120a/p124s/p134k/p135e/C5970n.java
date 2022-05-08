package p081h.p119d.p120a.p124s.p134k.p135e;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.d.a.s.k.e.n */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/n.class */
public class C5970n extends FilterInputStream {

    /* renamed from: a */
    public volatile byte[] f14903a;

    /* renamed from: b */
    public int f14904b;

    /* renamed from: c */
    public int f14905c;

    /* renamed from: d */
    public int f14906d = -1;

    /* renamed from: e */
    public int f14907e;

    /* renamed from: h.d.a.s.k.e.n$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/e/n$a.class */
    public static class C5971a extends RuntimeException {
        public C5971a(String str) {
            super(str);
        }
    }

    public C5970n(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("buffer is null or empty");
        }
        this.f14903a = bArr;
    }

    /* renamed from: b */
    public static IOException m24099b() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    /* renamed from: a */
    public final int m24100a(InputStream inputStream, byte[] bArr) throws IOException {
        byte[] bArr2;
        int i = this.f14906d;
        if (i != -1) {
            int i2 = this.f14907e;
            int i3 = this.f14905c;
            if (i2 - i < i3) {
                if (i == 0 && i3 > bArr.length && this.f14904b == bArr.length) {
                    int length = bArr.length * 2;
                    int i4 = length;
                    if (length > i3) {
                        i4 = i3;
                    }
                    if (Log.isLoggable("BufferedIs", 3)) {
                        String str = "allocate buffer of length: " + i4;
                    }
                    bArr2 = new byte[i4];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f14903a = bArr2;
                } else {
                    int i5 = this.f14906d;
                    bArr2 = bArr;
                    if (i5 > 0) {
                        System.arraycopy(bArr, i5, bArr, 0, bArr.length - i5);
                        bArr2 = bArr;
                    }
                }
                this.f14907e -= this.f14906d;
                this.f14906d = 0;
                this.f14904b = 0;
                int i6 = this.f14907e;
                int read = inputStream.read(bArr2, i6, bArr2.length - i6);
                int i7 = this.f14907e;
                if (read > 0) {
                    i7 += read;
                }
                this.f14904b = i7;
                return read;
            }
        }
        int read2 = inputStream.read(bArr);
        if (read2 > 0) {
            this.f14906d = -1;
            this.f14907e = 0;
            this.f14904b = read2;
        }
        return read2;
    }

    /* renamed from: a */
    public void m24101a() {
        synchronized (this) {
            this.f14905c = this.f14903a.length;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i;
        int i2;
        int available;
        synchronized (this) {
            InputStream inputStream = ((FilterInputStream) this).in;
            if (this.f14903a == null || inputStream == null) {
                m24099b();
                throw null;
            }
            i = this.f14904b;
            i2 = this.f14907e;
            available = inputStream.available();
        }
        return (i - i2) + available;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14903a = null;
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f14905c = Math.max(this.f14905c, i);
            this.f14906d = this.f14907e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        synchronized (this) {
            byte[] bArr = this.f14903a;
            InputStream inputStream = ((FilterInputStream) this).in;
            if (bArr == null || inputStream == null) {
                m24099b();
                throw null;
            } else if (this.f14907e >= this.f14904b && m24100a(inputStream, bArr) == -1) {
                return -1;
            } else {
                byte[] bArr2 = bArr;
                if (bArr != this.f14903a) {
                    bArr2 = this.f14903a;
                    if (bArr2 == null) {
                        m24099b();
                        throw null;
                    }
                }
                if (this.f14904b - this.f14907e <= 0) {
                    return -1;
                }
                int i = this.f14907e;
                this.f14907e = i + 1;
                return bArr2[i] & 255;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4;
        int i5;
        synchronized (this) {
            byte[] bArr2 = this.f14903a;
            if (bArr2 == null) {
                m24099b();
                throw null;
            } else if (i2 == 0) {
                return 0;
            } else {
                InputStream inputStream = ((FilterInputStream) this).in;
                if (inputStream != null) {
                    if (this.f14907e < this.f14904b) {
                        int i6 = this.f14904b - this.f14907e >= i2 ? i2 : this.f14904b - this.f14907e;
                        System.arraycopy(bArr2, this.f14907e, bArr, i, i6);
                        this.f14907e += i6;
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
                        if (this.f14906d == -1 && i4 >= bArr2.length) {
                            int read = inputStream.read(bArr, i3, i4);
                            bArr2 = bArr2;
                            i5 = read;
                            if (read == -1) {
                                if (i4 != i2) {
                                    i7 = i2 - i4;
                                }
                                return i7;
                            }
                        } else if (m24100a(inputStream, bArr2) == -1) {
                            if (i4 != i2) {
                                i7 = i2 - i4;
                            }
                            return i7;
                        } else {
                            bArr2 = bArr2;
                            if (bArr2 != this.f14903a) {
                                bArr2 = this.f14903a;
                                if (bArr2 == null) {
                                    m24099b();
                                    throw null;
                                }
                            }
                            int i8 = this.f14904b - this.f14907e >= i4 ? i4 : this.f14904b - this.f14907e;
                            System.arraycopy(bArr2, this.f14907e, bArr, i3, i8);
                            this.f14907e += i8;
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
                } else {
                    m24099b();
                    throw null;
                }
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            if (this.f14903a == null) {
                throw new IOException("Stream is closed");
            } else if (-1 != this.f14906d) {
                this.f14907e = this.f14906d;
            } else {
                throw new C5971a("Mark has been invalidated");
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        synchronized (this) {
            byte[] bArr = this.f14903a;
            InputStream inputStream = ((FilterInputStream) this).in;
            if (bArr == null) {
                m24099b();
                throw null;
            } else if (j < 1) {
                return 0L;
            } else {
                if (inputStream == null) {
                    m24099b();
                    throw null;
                } else if (this.f14904b - this.f14907e >= j) {
                    this.f14907e = (int) (this.f14907e + j);
                    return j;
                } else {
                    long j2 = this.f14904b - this.f14907e;
                    this.f14907e = this.f14904b;
                    if (this.f14906d == -1 || j > this.f14905c) {
                        return j2 + inputStream.skip(j - j2);
                    } else if (m24100a(inputStream, bArr) == -1) {
                        return j2;
                    } else {
                        long j3 = j - j2;
                        if (this.f14904b - this.f14907e >= j3) {
                            this.f14907e = (int) (this.f14907e + j3);
                            return j;
                        }
                        long j4 = this.f14904b;
                        long j5 = this.f14907e;
                        this.f14907e = this.f14904b;
                        return (j2 + j4) - j5;
                    }
                }
            }
        }
    }
}
