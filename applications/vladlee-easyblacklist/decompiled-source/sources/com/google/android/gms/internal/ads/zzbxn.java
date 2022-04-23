package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbxn.class */
public final class zzbxn implements zzdxg<zzbxj> {

    /* renamed from: a */
    private final zzdxp<Context> f12657a;

    /* renamed from: b */
    private final zzdxp<zzavu> f12658b;

    /* renamed from: c */
    private final zzdxp<zzczu> f12659c;

    /* renamed from: d */
    private final zzdxp<zzbww> f12660d;

    /* renamed from: e */
    private final zzdxp<zzbws> f12661e;

    /* renamed from: f */
    private final zzdxp<zzbxr> f12662f;

    /* renamed from: g */
    private final zzdxp<Executor> f12663g;

    /* renamed from: h */
    private final zzdxp<Executor> f12664h;

    /* renamed from: i */
    private final zzdxp<zzbwq> f12665i;

    private zzbxn(zzdxp<Context> zzdxpVar, zzdxp<zzavu> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<zzbww> zzdxpVar4, zzdxp<zzbws> zzdxpVar5, zzdxp<zzbxr> zzdxpVar6, zzdxp<Executor> zzdxpVar7, zzdxp<Executor> zzdxpVar8, zzdxp<zzbwq> zzdxpVar9) {
        this.f12657a = zzdxpVar;
        this.f12658b = zzdxpVar2;
        this.f12659c = zzdxpVar3;
        this.f12660d = zzdxpVar4;
        this.f12661e = zzdxpVar5;
        this.f12662f = zzdxpVar6;
        this.f12663g = zzdxpVar7;
        this.f12664h = zzdxpVar8;
        this.f12665i = zzdxpVar9;
    }

    public static zzbxn zza(zzdxp<Context> zzdxpVar, zzdxp<zzavu> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<zzbww> zzdxpVar4, zzdxp<zzbws> zzdxpVar5, zzdxp<zzbxr> zzdxpVar6, zzdxp<Executor> zzdxpVar7, zzdxp<Executor> zzdxpVar8, zzdxp<zzbwq> zzdxpVar9) {
        return new zzbxn(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6, zzdxpVar7, zzdxpVar8, zzdxpVar9);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbxj(this.f12657a.get(), this.f12658b.get(), this.f12659c.get(), this.f12660d.get(), this.f12661e.get(), this.f12662f.get(), this.f12663g.get(), this.f12664h.get(), this.f12665i.get());
    }
}
