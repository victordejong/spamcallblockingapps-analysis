package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrp.class */
public final class zzcrp implements zzdxg<zzcrk<zzcue>> {

    /* renamed from: a */
    private final zzdxp<C2352xd> f13794a;

    /* renamed from: b */
    private final zzdxp<Clock> f13795b;

    public zzcrp(zzdxp<C2352xd> zzdxpVar, zzdxp<Clock> zzdxpVar2) {
        this.f13794a = zzdxpVar;
        this.f13795b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcrk) zzdxm.zza(new zzcrk(this.f13794a.get(), zzaau.zzcsu.get().longValue(), this.f13795b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
