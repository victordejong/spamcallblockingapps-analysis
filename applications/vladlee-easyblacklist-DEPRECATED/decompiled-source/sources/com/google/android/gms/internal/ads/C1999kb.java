package com.google.android.gms.internal.ads;

import android.content.Context;
/* renamed from: com.google.android.gms.internal.ads.kb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kb.class */
final class C1999kb implements zzcwx {

    /* renamed from: a */
    private zzdxp<Context> f9317a;

    /* renamed from: b */
    private zzdxp<String> f9318b;

    /* renamed from: c */
    private zzdxp<zzcxt<zzbka, zzbke>> f9319c;

    /* renamed from: d */
    private zzdxp<zzcwz> f9320d;

    /* renamed from: e */
    private zzdxp<zzcwl> f9321e;

    /* renamed from: f */
    private zzdxp<zzcwr> f9322f;

    /* renamed from: g */
    private final /* synthetic */ zzbgr f9323g;

    private C1999kb(zzbgr zzbgrVar, Context context, String str) {
        zzdxp zzdxpVar;
        zzdxp zzdxpVar2;
        zzdxp zzdxpVar3;
        zzdxp zzdxpVar4;
        zzdxp zzdxpVar5;
        zzdxp zzdxpVar6;
        zzdxp zzdxpVar7;
        this.f9323g = zzbgrVar;
        this.f9317a = zzdxf.zzbe(context);
        this.f9318b = zzdxf.zzbe(str);
        zzdxp<Context> zzdxpVar8 = this.f9317a;
        zzdxpVar = this.f9323g.f11856P;
        zzdxpVar2 = this.f9323g.f11857Q;
        this.f9319c = new zzcxu(zzdxpVar8, zzdxpVar, zzdxpVar2);
        zzdxpVar3 = this.f9323g.f11856P;
        this.f9320d = zzdxd.zzan(new zzcxc(zzdxpVar3));
        zzdxp<Context> zzdxpVar9 = this.f9317a;
        zzdxpVar4 = this.f9323g.f11860b;
        zzdxpVar5 = this.f9323g.f11879u;
        this.f9321e = zzdxd.zzan(new zzcwo(zzdxpVar9, zzdxpVar4, zzdxpVar5, this.f9319c, this.f9320d, zzczz.zzaot()));
        zzdxpVar6 = this.f9323g.f11879u;
        zzdxp<Context> zzdxpVar10 = this.f9317a;
        zzdxp<String> zzdxpVar11 = this.f9318b;
        zzdxp<zzcwl> zzdxpVar12 = this.f9321e;
        zzdxp<zzcwz> zzdxpVar13 = this.f9320d;
        zzdxpVar7 = this.f9323g.f11867i;
        this.f9322f = zzdxd.zzan(new zzcwu(zzdxpVar6, zzdxpVar10, zzdxpVar11, zzdxpVar12, zzdxpVar13, zzdxpVar7));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ C1999kb(zzbgr zzbgrVar, Context context, String str, byte b) {
        this(zzbgrVar, context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzcwx
    public final zzcwr zzaea() {
        return this.f9322f.get();
    }
}
