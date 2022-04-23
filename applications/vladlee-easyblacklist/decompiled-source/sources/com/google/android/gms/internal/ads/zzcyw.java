package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcyw.class */
public final class zzcyw implements zzdxg<zzcyt> {

    /* renamed from: a */
    private final zzdxp<Context> f14061a;

    /* renamed from: b */
    private final zzdxp<Executor> f14062b;

    /* renamed from: c */
    private final zzdxp<zzbfx> f14063c;

    /* renamed from: d */
    private final zzdxp<zzcxt<zzcbi, zzcbb>> f14064d;

    /* renamed from: e */
    private final zzdxp<zzcxz> f14065e;

    /* renamed from: f */
    private final zzdxp<zzczw> f14066f;

    /* renamed from: g */
    private final zzdxp<zzczs> f14067g;

    public zzcyw(zzdxp<Context> zzdxpVar, zzdxp<Executor> zzdxpVar2, zzdxp<zzbfx> zzdxpVar3, zzdxp<zzcxt<zzcbi, zzcbb>> zzdxpVar4, zzdxp<zzcxz> zzdxpVar5, zzdxp<zzczw> zzdxpVar6, zzdxp<zzczs> zzdxpVar7) {
        this.f14061a = zzdxpVar;
        this.f14062b = zzdxpVar2;
        this.f14063c = zzdxpVar3;
        this.f14064d = zzdxpVar4;
        this.f14065e = zzdxpVar5;
        this.f14066f = zzdxpVar6;
        this.f14067g = zzdxpVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcyt(this.f14061a.get(), this.f14062b.get(), this.f14063c.get(), this.f14064d.get(), this.f14065e.get(), this.f14066f.get(), this.f14067g.get());
    }
}
