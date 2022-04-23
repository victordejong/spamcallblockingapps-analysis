package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbgh.class */
public final class zzbgh implements zzdxg<zzcis<zzdac, zzcjx>> {

    /* renamed from: a */
    private final zzbga f11832a;

    /* renamed from: b */
    private final zzdxp<zzcka> f11833b;

    public zzbgh(zzbga zzbgaVar, zzdxp<zzcka> zzdxpVar) {
        this.f11832a = zzbgaVar;
        this.f11833b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcis) zzdxm.zza(new zzcmf(this.f11833b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
