package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpx.class */
public final class zzdpx {

    /* renamed from: a */
    private final byte[] f14451a = new byte[256];

    /* renamed from: b */
    private int f14452b;

    /* renamed from: c */
    private int f14453c;

    public zzdpx(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.f14451a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.f14451a;
            i2 = (i2 + bArr2[i3] + bArr[i3 % bArr.length]) & 255;
            byte b = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.f14452b = 0;
        this.f14453c = 0;
    }

    public final void zzt(byte[] bArr) {
        int i = this.f14452b;
        int i2 = this.f14453c;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.f14451a;
            i2 = (i2 + bArr2[i]) & 255;
            byte b = bArr2[i];
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + bArr2[i2]) & 255] ^ bArr[i3]);
        }
        this.f14452b = i;
        this.f14453c = i2;
    }
}
