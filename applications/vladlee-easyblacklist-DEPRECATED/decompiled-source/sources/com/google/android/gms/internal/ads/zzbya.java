package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbya.class */
public final class zzbya implements zzdxg<zzbxr> {

    /* renamed from: a */
    private final zzdxp<Context> f12680a;

    /* renamed from: b */
    private final zzdxp<zzcbn> f12681b;

    /* renamed from: c */
    private final zzdxp<zzcaj> f12682c;

    /* renamed from: d */
    private final zzdxp<zzbjq> f12683d;

    /* renamed from: e */
    private final zzdxp<zzbxa> f12684e;

    public zzbya(zzdxp<Context> zzdxpVar, zzdxp<zzcbn> zzdxpVar2, zzdxp<zzcaj> zzdxpVar3, zzdxp<zzbjq> zzdxpVar4, zzdxp<zzbxa> zzdxpVar5) {
        this.f12680a = zzdxpVar;
        this.f12681b = zzdxpVar2;
        this.f12682c = zzdxpVar3;
        this.f12683d = zzdxpVar4;
        this.f12684e = zzdxpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbxr(this.f12680a.get(), this.f12681b.get(), this.f12682c.get(), this.f12683d.get(), this.f12684e.get());
    }
}
