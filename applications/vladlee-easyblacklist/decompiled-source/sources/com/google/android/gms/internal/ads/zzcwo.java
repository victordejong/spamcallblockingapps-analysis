package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcwo.class */
public final class zzcwo implements zzdxg<zzcwl> {

    /* renamed from: a */
    private final zzdxp<Context> f13996a;

    /* renamed from: b */
    private final zzdxp<Executor> f13997b;

    /* renamed from: c */
    private final zzdxp<zzbfx> f13998c;

    /* renamed from: d */
    private final zzdxp<zzcxt<zzbka, zzbke>> f13999d;

    /* renamed from: e */
    private final zzdxp<zzcwz> f14000e;

    /* renamed from: f */
    private final zzdxp<zzczw> f14001f;

    public zzcwo(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzbfx> zzdxpVar3, zzdxp<zzcxt<zzbka, zzbke>> zzdxpVar4, zzdxp<zzcwz> zzdxpVar5, zzdxp<zzczw> zzdxpVar6) {
        this.f13996a = zzdxpVar;
        this.f13997b = zzdxpVar2;
        this.f13998c = zzdxpVar3;
        this.f13999d = zzdxpVar4;
        this.f14000e = zzdxpVar5;
        this.f14001f = zzdxpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcwl(this.f13996a.get(), this.f13997b.get(), this.f13998c.get(), this.f13999d.get(), this.f14000e.get(), this.f14001f.get());
    }
}
