package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqj.class */
public final class zzcqj implements zzdxg<zzcqh> {

    /* renamed from: a */
    private final zzdxp<zzcrk<zzcue>> f13735a;

    /* renamed from: b */
    private final zzdxp<zzczu> f13736b;

    /* renamed from: c */
    private final zzdxp<Context> f13737c;

    /* renamed from: d */
    private final zzdxp<zzave> f13738d;

    private zzcqj(zzdxp<zzcrk<zzcue>> zzdxpVar, zzdxp<zzczu> zzdxpVar2, zzdxp<Context> zzdxpVar3, zzdxp<zzave> zzdxpVar4) {
        this.f13735a = zzdxpVar;
        this.f13736b = zzdxpVar2;
        this.f13737c = zzdxpVar3;
        this.f13738d = zzdxpVar4;
    }

    public static zzcqj zze(zzdxp<zzcrk<zzcue>> zzdxpVar, zzdxp<zzczu> zzdxpVar2, zzdxp<Context> zzdxpVar3, zzdxp<zzave> zzdxpVar4) {
        return new zzcqj(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcqh(this.f13735a.get(), this.f13736b.get(), this.f13737c.get(), this.f13738d.get());
    }
}
