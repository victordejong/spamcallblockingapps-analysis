package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbk.class */
public final class zzcbk implements zzdxg<zzcio<zzcbb>> {

    /* renamed from: a */
    private final zzdxp<zzcna<zzcbb, zzdac, zzcjx>> f12870a;

    /* renamed from: b */
    private final zzdxp<zzcna<zzcbb, zzdac, zzcjy>> f12871b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12872c;

    public zzcbk(zzdxp<zzcna<zzcbb, zzdac, zzcjx>> zzdxpVar, zzdxp<zzcna<zzcbb, zzdac, zzcjy>> zzdxpVar2, zzdxp<zzczu> zzdxpVar3) {
        this.f12870a = zzdxpVar;
        this.f12871b = zzdxpVar2;
        this.f12872c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcio) zzdxm.zza(this.f12872c.get().zzgms.contains("new_rewarded") ? this.f12871b.get() : this.f12870a.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
