package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcnm.class */
public final class zzcnm implements zzdxg<zzcng> {

    /* renamed from: a */
    private final zzdxp<Context> f13412a;

    /* renamed from: b */
    private final zzdxp<zzblg> f13413b;

    /* renamed from: c */
    private final zzdxp<zzdcr> f13414c;

    /* renamed from: d */
    private final zzdxp<zzdhd> f13415d;

    /* renamed from: e */
    private final zzdxp<zzaak> f13416e;

    public zzcnm(zzdxp<Context> zzdxpVar, zzdxp<zzblg> zzdxpVar2, zzdxp<zzdcr> zzdxpVar3, zzdxp<zzdhd> zzdxpVar4, zzdxp<zzaak> zzdxpVar5) {
        this.f13412a = zzdxpVar;
        this.f13413b = zzdxpVar2;
        this.f13414c = zzdxpVar3;
        this.f13415d = zzdxpVar4;
        this.f13416e = zzdxpVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcng(this.f13412a.get(), this.f13413b.get(), this.f13414c.get(), this.f13415d.get(), this.f13416e.get());
    }
}
