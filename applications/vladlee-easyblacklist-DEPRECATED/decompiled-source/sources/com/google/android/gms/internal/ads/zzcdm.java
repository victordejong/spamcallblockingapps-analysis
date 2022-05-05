package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdm.class */
public final class zzcdm implements zzdxg<zzcdj> {

    /* renamed from: a */
    private final zzdxp<zzcds> f12977a;

    /* renamed from: b */
    private final zzdxp<zzcdv> f12978b;

    private zzcdm(zzdxp<zzcds> zzdxpVar, zzdxp<zzcdv> zzdxpVar2) {
        this.f12977a = zzdxpVar;
        this.f12978b = zzdxpVar2;
    }

    public static zzcdm zzw(zzdxp<zzcds> zzdxpVar, zzdxp<zzcdv> zzdxpVar2) {
        return new zzcdm(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcdj(this.f12977a.get(), this.f12978b.get());
    }
}
