package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuq.class */
public final class zzbuq implements zzdxg<zzbun> {

    /* renamed from: a */
    private final zzdxp<zzbqj> f12420a;

    /* renamed from: b */
    private final zzdxp<zzbsq> f12421b;

    private zzbuq(zzdxp<zzbqj> zzdxpVar, zzdxp<zzbsq> zzdxpVar2) {
        this.f12420a = zzdxpVar;
        this.f12421b = zzdxpVar2;
    }

    public static zzbuq zzj(zzdxp<zzbqj> zzdxpVar, zzdxp<zzbsq> zzdxpVar2) {
        return new zzbuq(zzdxpVar, zzdxpVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbun(this.f12420a.get(), this.f12421b.get());
    }
}
