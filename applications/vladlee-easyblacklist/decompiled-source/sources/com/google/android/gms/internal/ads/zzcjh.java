package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcjh.class */
public final class zzcjh implements zzdxg<zzcjf> {

    /* renamed from: a */
    private final zzdxp<Context> f13218a;

    /* renamed from: b */
    private final zzdxp<zzazb> f13219b;

    /* renamed from: c */
    private final zzdxp<zzblg> f13220c;

    /* renamed from: d */
    private final zzdxp<Executor> f13221d;

    public zzcjh(zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzblg> zzdxpVar3, zzdxp<Executor> zzdxpVar4) {
        this.f13218a = zzdxpVar;
        this.f13219b = zzdxpVar2;
        this.f13220c = zzdxpVar3;
        this.f13221d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcjf(this.f13218a.get(), this.f13219b.get(), this.f13220c.get(), this.f13221d.get());
    }
}
