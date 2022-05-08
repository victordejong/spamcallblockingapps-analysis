package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwu.class */
public final class zzcwu implements zzdxg<zzcwr> {

    /* renamed from: a */
    private final zzdxp<zzbfx> f14012a;

    /* renamed from: b */
    private final zzdxp<Context> f14013b;

    /* renamed from: c */
    private final zzdxp<String> f14014c;

    /* renamed from: d */
    private final zzdxp<zzcwl> f14015d;

    /* renamed from: e */
    private final zzdxp<zzcwz> f14016e;

    /* renamed from: f */
    private final zzdxp<zzazb> f14017f;

    public zzcwu(zzdxp<zzbfx> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<String> zzdxpVar3, zzdxp<zzcwl> zzdxpVar4, zzdxp<zzcwz> zzdxpVar5, zzdxp<zzazb> zzdxpVar6) {
        this.f14012a = zzdxpVar;
        this.f14013b = zzdxpVar2;
        this.f14014c = zzdxpVar3;
        this.f14015d = zzdxpVar4;
        this.f14016e = zzdxpVar5;
        this.f14017f = zzdxpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcwr(this.f14012a.get(), this.f14013b.get(), this.f14014c.get(), this.f14015d.get(), this.f14016e.get(), this.f14017f.get());
    }
}
