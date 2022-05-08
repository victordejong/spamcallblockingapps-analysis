package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbyf.class */
public final class zzbyf implements zzdxg<zzbxa> {

    /* renamed from: a */
    private final zzbyg f12709a;

    /* renamed from: b */
    private final zzdxp<zzbye> f12710b;

    public zzbyf(zzbyg zzbygVar, zzdxp<zzbye> zzdxpVar) {
        this.f12709a = zzbygVar;
        this.f12710b = zzdxpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzbxa) zzdxm.zza(this.f12710b.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
