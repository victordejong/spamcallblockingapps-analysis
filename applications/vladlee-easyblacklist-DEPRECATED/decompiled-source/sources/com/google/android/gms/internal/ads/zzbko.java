package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbko.class */
public final class zzbko implements zzdxg<C2025la> {

    /* renamed from: a */
    private final zzdxp<zzbmg> f12047a;

    /* renamed from: b */
    private final zzdxp<Context> f12048b;

    /* renamed from: c */
    private final zzdxp<zzczk> f12049c;

    /* renamed from: d */
    private final zzdxp<View> f12050d;

    /* renamed from: e */
    private final zzdxp<zzbdi> f12051e;

    /* renamed from: f */
    private final zzdxp<zzbme> f12052f;

    /* renamed from: g */
    private final zzdxp<zzbwz> f12053g;

    /* renamed from: h */
    private final zzdxp<zzbsy> f12054h;

    /* renamed from: i */
    private final zzdxp<zzcok> f12055i;

    /* renamed from: j */
    private final zzdxp<Executor> f12056j;

    public zzbko(zzdxp<zzbmg> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<zzczk> zzdxpVar3, zzdxp<View> zzdxpVar4, zzdxp<zzbdi> zzdxpVar5, zzdxp<zzbme> zzdxpVar6, zzdxp<zzbwz> zzdxpVar7, zzdxp<zzbsy> zzdxpVar8, zzdxp<zzcok> zzdxpVar9, zzdxp<Executor> zzdxpVar10) {
        this.f12047a = zzdxpVar;
        this.f12048b = zzdxpVar2;
        this.f12049c = zzdxpVar3;
        this.f12050d = zzdxpVar4;
        this.f12051e = zzdxpVar5;
        this.f12052f = zzdxpVar6;
        this.f12053g = zzdxpVar7;
        this.f12054h = zzdxpVar8;
        this.f12055i = zzdxpVar9;
        this.f12056j = zzdxpVar10;
    }

    public static C2025la zza(zzbmg zzbmgVar, Context context, zzczk zzczkVar, View view, zzbdi zzbdiVar, zzbme zzbmeVar, zzbwz zzbwzVar, zzbsy zzbsyVar, zzdxa<zzcok> zzdxaVar, Executor executor) {
        return new C2025la(zzbmgVar, context, zzczkVar, view, zzbdiVar, zzbmeVar, zzbwzVar, zzbsyVar, zzdxaVar, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new C2025la(this.f12047a.get(), this.f12048b.get(), this.f12049c.get(), this.f12050d.get(), this.f12051e.get(), this.f12052f.get(), this.f12053g.get(), this.f12054h.get(), zzdxd.zzao(this.f12055i), this.f12056j.get());
    }
}
