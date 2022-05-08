package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblh.class */
public final class zzblh implements zzdxg<zzcio<zzbkk>> {

    /* renamed from: a */
    private final zzdxp<Boolean> f12086a;

    /* renamed from: b */
    private final zzdxp<zzclj> f12087b;

    /* renamed from: c */
    private final zzdxp<zzcna<zzbkk, zzdac, zzcjy>> f12088c;

    public zzblh(zzdxp<Boolean> zzdxpVar, zzdxp<zzclj> zzdxpVar2, zzdxp<zzcna<zzbkk, zzdac, zzcjy>> zzdxpVar3) {
        this.f12086a = zzdxpVar;
        this.f12087b = zzdxpVar2;
        this.f12088c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        boolean booleanValue = this.f12086a.get().booleanValue();
        r6 = this.f12087b.get();
        zzcna<zzbkk, zzdac, zzcjy> zzcnaVar = this.f12088c.get();
        if (booleanValue) {
        }
        return (zzcio) zzdxm.zza(zzcnaVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
