package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehm.class */
public final class zzehm {

    /* renamed from: a */
    public final byte[] f28033a;

    public zzehm(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        this.f28033a = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, i2);
    }

    /* renamed from: a */
    public static zzehm m12556a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new zzehm(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public final byte[] m12557a() {
        byte[] bArr = this.f28033a;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
