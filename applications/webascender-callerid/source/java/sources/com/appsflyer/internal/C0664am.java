package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.am */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/am.class */
public class C0664am extends FilterInputStream {

    /* renamed from: ı */
    private byte[] f2991;

    /* renamed from: Ɩ */
    private int f2992;

    /* renamed from: ǃ */
    private long[] f2993;

    /* renamed from: ɩ */
    private final int f2994;

    /* renamed from: Ι */
    private long[] f2995;

    /* renamed from: ι */
    private short f2996;

    /* renamed from: І */
    private int f2997;

    /* renamed from: Ӏ */
    private int f2998 = Integer.MAX_VALUE;

    public C0664am(InputStream inputStream, int i, int i2, short s, int i3, int i4) throws IOException {
        super(inputStream);
        int min = Math.min(Math.max((int) s, 4), 8);
        this.f2994 = min;
        this.f2991 = new byte[min];
        this.f2993 = new long[4];
        this.f2995 = new long[4];
        this.f2992 = min;
        this.f2997 = min;
        this.f2993 = C0661aj.m4051(i ^ i4, min ^ i4);
        this.f2995 = C0661aj.m4051(i2 ^ i4, i3 ^ i4);
    }

    /* renamed from: ɩ */
    private void m4046() {
        byte[] bArr;
        C0661aj.m4050(this.f2993, this.f2995, this.f2996);
        for (int i = 0; i < this.f2994; i++) {
            this.f2991[i] = (byte) (bArr[i] ^ ((this.f2993[this.f2996] >> (i << 3)) & 255));
        }
        this.f2996 = (short) ((this.f2996 + 1) % 4);
    }

    /* renamed from: ι */
    private int m4045() throws IOException {
        int i;
        int i2;
        if (this.f2998 == Integer.MAX_VALUE) {
            this.f2998 = ((FilterInputStream) this).in.read();
        }
        if (this.f2992 == this.f2994) {
            byte[] bArr = this.f2991;
            int i3 = this.f2998;
            bArr[0] = (byte) i3;
            if (i3 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i4 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.f2991, i4, this.f2994 - i4);
                i = i4;
                if (read <= 0) {
                    break;
                }
                i = i4 + read;
                i4 = i;
            } while (i < this.f2994);
            if (i < this.f2994) {
                throw new IllegalStateException("unexpected block size");
            }
            m4046();
            int read2 = ((FilterInputStream) this).in.read();
            this.f2998 = read2;
            this.f2992 = 0;
            if (read2 < 0) {
                int i5 = this.f2994;
                i2 = i5 - (this.f2991[i5 - 1] & 255);
            } else {
                i2 = this.f2994;
            }
            this.f2997 = i2;
        }
        return this.f2997;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m4045();
        return this.f2997 - this.f2992;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m4045();
        int i = this.f2992;
        if (i >= this.f2997) {
            return -1;
        }
        byte[] bArr = this.f2991;
        this.f2992 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m4045();
            int i5 = this.f2992;
            if (i5 >= this.f2997) {
                if (i4 != i) {
                    return i2 - (i3 - i4);
                }
                return -1;
            }
            byte[] bArr2 = this.f2991;
            this.f2992 = i5 + 1;
            bArr[i4] = bArr2[i5];
        }
        return i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v9 */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        char c;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (c >= j || read() == -1) {
                break;
            }
            r0 = c + 1;
        }
        return c;
    }
}
