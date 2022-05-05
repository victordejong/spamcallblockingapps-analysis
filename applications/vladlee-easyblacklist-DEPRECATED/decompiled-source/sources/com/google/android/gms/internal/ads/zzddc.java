package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddc.class */
public final class zzddc implements zzdxg<zzdda> {

    /* renamed from: a */
    private final zzdxp<Executor> f14210a;

    /* renamed from: b */
    private final zzdxp<zzayy> f14211b;

    /* renamed from: c */
    private final zzdxp<zzclp> f14212c;

    /* renamed from: d */
    private final zzdxp<zzazb> f14213d;

    /* renamed from: e */
    private final zzdxp<String> f14214e;

    /* renamed from: f */
    private final zzdxp<String> f14215f;

    /* renamed from: g */
    private final zzdxp<Context> f14216g;

    /* renamed from: h */
    private final zzdxp<zzczs> f14217h;

    /* renamed from: i */
    private final zzdxp<Clock> f14218i;

    /* renamed from: j */
    private final zzdxp<zzdq> f14219j;

    private zzddc(zzdxp<Executor> zzdxpVar, zzdxp<zzayy> zzdxpVar2, zzdxp<zzclp> zzdxpVar3, zzdxp<zzazb> zzdxpVar4, zzdxp<String> zzdxpVar5, zzdxp<String> zzdxpVar6, zzdxp<Context> zzdxpVar7, zzdxp<zzczs> zzdxpVar8, zzdxp<Clock> zzdxpVar9, zzdxp<zzdq> zzdxpVar10) {
        this.f14210a = zzdxpVar;
        this.f14211b = zzdxpVar2;
        this.f14212c = zzdxpVar3;
        this.f14213d = zzdxpVar4;
        this.f14214e = zzdxpVar5;
        this.f14215f = zzdxpVar6;
        this.f14216g = zzdxpVar7;
        this.f14217h = zzdxpVar8;
        this.f14218i = zzdxpVar9;
        this.f14219j = zzdxpVar10;
    }

    public static zzddc zzb(zzdxp<Executor> zzdxpVar, zzdxp<zzayy> zzdxpVar2, zzdxp<zzclp> zzdxpVar3, zzdxp<zzazb> zzdxpVar4, zzdxp<String> zzdxpVar5, zzdxp<String> zzdxpVar6, zzdxp<Context> zzdxpVar7, zzdxp<zzczs> zzdxpVar8, zzdxp<Clock> zzdxpVar9, zzdxp<zzdq> zzdxpVar10) {
        return new zzddc(zzdxpVar, zzdxpVar2, zzdxpVar3, zzdxpVar4, zzdxpVar5, zzdxpVar6, zzdxpVar7, zzdxpVar8, zzdxpVar9, zzdxpVar10);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzdda(this.f14210a.get(), this.f14211b.get(), this.f14212c.get(), this.f14213d.get(), this.f14214e.get(), this.f14215f.get(), this.f14216g.get(), this.f14217h.get(), this.f14218i.get(), this.f14219j.get());
    }
}
