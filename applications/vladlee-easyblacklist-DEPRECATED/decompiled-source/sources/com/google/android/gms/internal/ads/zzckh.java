package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckh.class */
public final class zzckh implements zzdxg<zzckc> {

    /* renamed from: a */
    private final zzdxp<Context> f13258a;

    /* renamed from: b */
    private final zzdxp<zzazb> f13259b;

    /* renamed from: c */
    private final zzdxp<zzczu> f13260c;

    /* renamed from: d */
    private final zzdxp<Executor> f13261d;

    /* renamed from: e */
    private final zzdxp<zzbup> f13262e;

    /* renamed from: f */
    private final zzdxp<zzcbn> f13263f;

    public zzckh(zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzczu> zzdxpVar3, zzdxp<Executor> zzdxpVar4, zzdxp<zzbup> zzdxpVar5, zzdxp<zzcbn> zzdxpVar6) {
        this.f13258a = zzdxpVar;
        this.f13259b = zzdxpVar2;
        this.f13260c = zzdxpVar3;
        this.f13261d = zzdxpVar4;
        this.f13262e = zzdxpVar5;
        this.f13263f = zzdxpVar6;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzckc(this.f13258a.get(), this.f13259b.get(), this.f13260c.get(), this.f13261d.get(), this.f13262e.get(), this.f13263f.get());
    }
}
