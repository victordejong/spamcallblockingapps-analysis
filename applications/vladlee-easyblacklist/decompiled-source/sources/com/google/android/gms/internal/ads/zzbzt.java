package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbzt.class */
public final class zzbzt implements zzdxg<zzbzq> {

    /* renamed from: a */
    private final zzdxp<Executor> f12770a;

    /* renamed from: b */
    private final zzdxp<zzbjq> f12771b;

    /* renamed from: c */
    private final zzdxp<zzbst> f12772c;

    public zzbzt(zzdxp<Executor> zzdxpVar, zzdxp<zzbjq> zzdxpVar2, zzdxp<zzbst> zzdxpVar3) {
        this.f12770a = zzdxpVar;
        this.f12771b = zzdxpVar2;
        this.f12772c = zzdxpVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzbzq(this.f12770a.get(), this.f12771b.get(), this.f12772c.get());
    }
}
