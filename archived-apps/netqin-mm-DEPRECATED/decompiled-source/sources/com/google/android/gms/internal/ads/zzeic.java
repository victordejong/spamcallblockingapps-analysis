package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeic.class */
public final class zzeic {

    /* renamed from: a */
    public final byte[] f28045a = new byte[256];

    /* renamed from: b */
    public int f28046b;

    /* renamed from: c */
    public int f28047c;

    public zzeic(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f28045a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f28045a;
            i2 = (i2 + bArr2[i3] + bArr[i3 % bArr.length]) & 255;
            byte b = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.f28046b = 0;
        this.f28047c = 0;
    }

    /* renamed from: a */
    public final void m12535a(byte[] bArr) {
        int i = this.f28046b;
        int i2 = this.f28047c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f28045a;
            i2 = (i2 + bArr2[i]) & 255;
            byte b = bArr2[i];
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + bArr2[i2]) & 255] ^ bArr[i3]);
        }
        this.f28046b = i;
        this.f28047c = i2;
    }
}
