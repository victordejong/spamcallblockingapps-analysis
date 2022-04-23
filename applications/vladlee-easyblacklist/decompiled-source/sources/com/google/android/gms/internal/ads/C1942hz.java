package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.hz */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hz.class */
final class C1942hz extends zzbc {

    /* renamed from: a */
    static final C1942hz f8587a = new C1942hz();

    C1942hz() {
    }

    @Override // com.google.android.gms.internal.ads.zzbc
    public final zzbf zza(String str, byte[] bArr, String str2) {
        return "moov".equals(str) ? new zzbh() : "mvhd".equals(str) ? new zzbk() : new zzbj(str);
    }
}
