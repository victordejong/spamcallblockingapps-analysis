package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcpo.class */
public final class zzcpo implements zzdxg<zzdhe<zzcps>> {

    /* renamed from: a */
    private final zzdxp<zzdcr> f13697a;

    /* renamed from: b */
    private final zzdxp<zzcpr> f13698b;

    /* renamed from: c */
    private final zzdxp<zzdhe<zzaqk>> f13699c;

    public zzcpo(zzdxp<zzdcr> zzdxpVar, zzdxp<zzcpr> zzdxpVar2, zzdxp<zzdhe<zzaqk>> zzdxpVar3) {
        this.f13697a = zzdxpVar;
        this.f13698b = zzdxpVar2;
        this.f13699c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        zzdcr zzdcrVar = this.f13697a.get();
        return (zzdhe) zzdxm.zza(zzdcrVar.zza((zzdcr) zzdco.GENERATE_SIGNALS, (zzdhe) this.f13699c.get()).zza(this.f13698b.get()).zza(((Integer) zzve.zzoy().zzd(zzzn.zzcox)).intValue(), TimeUnit.SECONDS).zzaqg(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
