package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzckm.class */
public final class zzckm implements zzdxg<zzckk> {

    /* renamed from: a */
    private final zzdxp<Context> f13270a;

    /* renamed from: b */
    private final zzdxp<zzazb> f13271b;

    /* renamed from: c */
    private final zzdxp<zzbup> f13272c;

    /* renamed from: d */
    private final zzdxp<Executor> f13273d;

    public zzckm(zzdxp<Context> zzdxpVar, zzdxp<zzazb> zzdxpVar2, zzdxp<zzbup> zzdxpVar3, zzdxp<Executor> zzdxpVar4) {
        this.f13270a = zzdxpVar;
        this.f13271b = zzdxpVar2;
        this.f13272c = zzdxpVar3;
        this.f13273d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzckk(this.f13270a.get(), this.f13271b.get(), this.f13272c.get(), this.f13273d.get());
    }
}
