package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbvf.class */
public final class zzbvf implements zzdxg<C2095nq> {

    /* renamed from: a */
    private final zzdxp<Map<String, zzcio<zzbmj>>> f12457a;

    /* renamed from: b */
    private final zzdxp<Map<String, zzcio<zzbwk>>> f12458b;

    /* renamed from: c */
    private final zzdxp<Map<String, zzckr<zzbwk>>> f12459c;

    /* renamed from: d */
    private final zzdxp<zzbmi<zzbkk>> f12460d;

    /* renamed from: e */
    private final zzdxp<zzbwz> f12461e;

    public zzbvf(zzdxp<Map<String, zzcio<zzbmj>>> zzdxpVar, zzdxp<Map<String, zzcio<zzbwk>>> zzdxpVar2, zzdxp<Map<String, zzckr<zzbwk>>> zzdxpVar3, zzdxp<zzbmi<zzbkk>> zzdxpVar4, zzdxp<zzbwz> zzdxpVar5) {
        this.f12457a = zzdxpVar;
        this.f12458b = zzdxpVar2;
        this.f12459c = zzdxpVar3;
        this.f12460d = zzdxpVar4;
        this.f12461e = zzdxpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new C2095nq(this.f12457a.get(), this.f12458b.get(), this.f12459c.get(), this.f12460d, this.f12461e.get());
    }
}
