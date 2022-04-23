package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnv.class */
public final class zzbnv implements zzdxg<zzbnw> {

    /* renamed from: a */
    private final zzdxp<Context> f12205a;

    /* renamed from: b */
    private final zzdxp<zzczu> f12206b;

    /* renamed from: c */
    private final zzdxp<zzazb> f12207c;

    /* renamed from: d */
    private final zzdxp<zzavu> f12208d;

    /* renamed from: e */
    private final zzdxp<zzceq> f12209e;

    private zzbnv(zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2, zzdxp<zzazb> zzdxpVar3, zzdxp<zzavu> zzdxpVar4, zzdxp<zzceq> zzdxpVar5) {
        this.f12205a = zzdxpVar;
        this.f12206b = zzdxpVar2;
        this.f12207c = zzdxpVar3;
        this.f12208d = zzdxpVar4;
        this.f12209e = zzdxpVar5;
    }

    public static zzbnv zzb(zzdxp<Context> zzdxpVar, zzdxp<zzczu> zzdxpVar2, zzdxp<zzazb> zzdxpVar3, zzdxp<zzavu> zzdxpVar4, zzdxp<zzceq> zzdxpVar5) {
        return new zzbnv(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbnw(this.f12205a.get(), this.f12206b.get(), this.f12207c.get(), this.f12208d.get(), this.f12209e.get());
    }
}
