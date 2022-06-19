package com.appsflyer.internal;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.appsflyer.internal.an */
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/an.class */
public class C0665an extends FilterInputStream {

    /* renamed from: ı */
    private final int f2999;

    /* renamed from: ǃ */
    private byte[] f3001;

    /* renamed from: ι */
    private C0663al f3005;

    /* renamed from: і */
    private int f3007;

    /* renamed from: Ӏ */
    private int f3008 = Integer.MAX_VALUE;

    /* renamed from: Ι */
    private byte[] f3004 = new byte[8];

    /* renamed from: ɩ */
    private byte[] f3002 = new byte[8];

    /* renamed from: І */
    private int[] f3006 = new int[2];

    /* renamed from: ɹ */
    private int f3003 = 8;

    /* renamed from: Ɩ */
    private int f3000 = 8;

    public C0665an(InputStream inputStream, int[] iArr, byte[] bArr, int i, boolean z, int i2) throws IOException {
        super(inputStream);
        int min = Math.min(Math.max(i, 3), 16);
        this.f2999 = min;
        byte[] bArr2 = new byte[8];
        this.f3001 = bArr2;
        this.f3007 = i2;
        if (i2 == 2) {
            System.arraycopy(bArr, 0, bArr2, 0, 8);
        }
        this.f3005 = new C0663al(iArr, min, true, z);
    }

    /* renamed from: ǃ */
    private int m4044() throws IOException {
        int i;
        if (this.f3008 == Integer.MAX_VALUE) {
            this.f3008 = ((FilterInputStream) this).in.read();
        }
        if (this.f3003 == 8) {
            byte[] bArr = this.f3004;
            int i2 = this.f3008;
            bArr[0] = (byte) i2;
            if (i2 < 0) {
                throw new IllegalStateException("unexpected block size");
            }
            int i3 = 1;
            do {
                int read = ((FilterInputStream) this).in.read(this.f3004, i3, 8 - i3);
                i = i3;
                if (read <= 0) {
                    break;
                }
                i = i3 + read;
                i3 = i;
            } while (i < 8);
            if (i < 8) {
                throw new IllegalStateException("unexpected block size");
            }
            m4043();
            int read2 = ((FilterInputStream) this).in.read();
            this.f3008 = read2;
            this.f3003 = 0;
            int i4 = 8;
            if (read2 < 0) {
                i4 = 8 - (this.f3004[7] & 255);
            }
            this.f3000 = i4;
        }
        return this.f3000;
    }

    /* renamed from: ɩ */
    private void m4043() {
        byte[] bArr;
        if (this.f3007 == 2) {
            byte[] bArr2 = this.f3004;
            System.arraycopy(bArr2, 0, this.f3002, 0, bArr2.length);
        }
        byte[] bArr3 = this.f3004;
        byte b = bArr3[0];
        byte b2 = bArr3[1];
        byte b3 = bArr3[2];
        byte b4 = bArr3[3];
        byte b5 = bArr3[4];
        byte b6 = bArr3[5];
        byte b7 = bArr3[6];
        byte b8 = bArr3[7];
        int i = this.f2999;
        C0663al c0663al = this.f3005;
        C0662ak.m4049(((b << 24) & (-16777216)) + ((b2 << 16) & 16711680) + ((b3 << 8) & 65280) + (b4 & 255), ((-16777216) & (b5 << 24)) + (16711680 & (b6 << 16)) + (65280 & (b7 << 8)) + (b8 & 255), false, i, c0663al.f2989, c0663al.f2990, this.f3006);
        int[] iArr = this.f3006;
        int i2 = iArr[0];
        int i3 = iArr[1];
        byte[] bArr4 = this.f3004;
        bArr4[0] = (byte) (i2 >> 24);
        bArr4[1] = (byte) (i2 >> 16);
        bArr4[2] = (byte) (i2 >> 8);
        bArr4[3] = (byte) i2;
        bArr4[4] = (byte) (i3 >> 24);
        bArr4[5] = (byte) (i3 >> 16);
        bArr4[6] = (byte) (i3 >> 8);
        bArr4[7] = (byte) i3;
        if (this.f3007 == 2) {
            for (int i4 = 0; i4 < 8; i4++) {
                this.f3004[i4] = (byte) (bArr[i4] ^ this.f3001[i4]);
            }
            byte[] bArr5 = this.f3002;
            System.arraycopy(bArr5, 0, this.f3001, 0, bArr5.length);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        m4044();
        return this.f3000 - this.f3003;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        m4044();
        int i = this.f3003;
        if (i >= this.f3000) {
            return -1;
        }
        byte[] bArr = this.f3004;
        this.f3003 = i + 1;
        return bArr[i] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = i + i2;
        for (int i4 = i; i4 < i3; i4++) {
            m4044();
            int i5 = this.f3003;
            if (i5 >= this.f3000) {
                if (i4 != i) {
                    return i2 - (i3 - i4);
                }
                return -1;
            }
            byte[] bArr2 = this.f3004;
            this.f3003 = i5 + 1;
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
