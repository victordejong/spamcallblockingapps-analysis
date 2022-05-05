package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpj.class */
public final class zzdpj {

    /* renamed from: a */
    private final byte[] f14441a;

    private zzdpj(byte[] bArr, int i) {
        this.f14441a = new byte[i];
        System.arraycopy(bArr, 0, this.f14441a, 0, i);
    }

    public static zzdpj zzs(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        return new zzdpj(bArr, bArr.length);
    }

    public final byte[] getBytes() {
        byte[] bArr = this.f14441a;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
