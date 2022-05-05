package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbux.class */
public final class zzbux implements zzdxg<zzbuy> {

    /* renamed from: a */
    private final zzdxp<Context> f12429a;

    /* renamed from: b */
    private final zzdxp<zzbdi> f12430b;

    /* renamed from: c */
    private final zzdxp<zzczl> f12431c;

    /* renamed from: d */
    private final zzdxp<zzazb> f12432d;

    /* renamed from: e */
    private final zzdxp<Integer> f12433e;

    private zzbux(zzdxp<Context> zzdxpVar, zzdxp<zzbdi> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzazb> zzdxpVar4, zzdxp<Integer> zzdxpVar5) {
        this.f12429a = zzdxpVar;
        this.f12430b = zzdxpVar2;
        this.f12431c = zzdxpVar3;
        this.f12432d = zzdxpVar4;
        this.f12433e = zzdxpVar5;
    }

    public static zzbux zzc(zzdxp<Context> zzdxpVar, zzdxp<zzbdi> zzdxpVar2, zzdxp<zzczl> zzdxpVar3, zzdxp<zzazb> zzdxpVar4, zzdxp<Integer> zzdxpVar5) {
        return new zzbux(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbuy(this.f12429a.get(), this.f12430b.get(), this.f12431c.get(), this.f12432d.get(), this.f12433e.get().intValue());
    }
}
