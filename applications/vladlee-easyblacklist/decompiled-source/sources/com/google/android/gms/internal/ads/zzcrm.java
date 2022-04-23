package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrm.class */
public final class zzcrm implements zzdxg<zzcrk<zzcrg>> {

    /* renamed from: a */
    private final zzdxp<zzcrj> f13791a;

    /* renamed from: b */
    private final zzdxp<Clock> f13792b;

    public zzcrm(zzdxp<zzcrj> zzdxpVar, zzdxp<Clock> zzdxpVar2) {
        this.f13791a = zzdxpVar;
        this.f13792b = zzdxpVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return (zzcrk) zzdxm.zza(new zzcrk(this.f13791a.get(), 10000L, this.f13792b.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
