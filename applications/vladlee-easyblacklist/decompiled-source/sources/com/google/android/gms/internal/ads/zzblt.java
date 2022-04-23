package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzblt.class */
public final class zzblt implements zzdxg<zzblo> {

    /* renamed from: a */
    private final zzdxp<zzbmg> f12105a;

    /* renamed from: b */
    private final zzdxp<zzaea> f12106b;

    /* renamed from: c */
    private final zzdxp<Runnable> f12107c;

    /* renamed from: d */
    private final zzdxp<Executor> f12108d;

    public zzblt(zzdxp<zzbmg> zzdxpVar, zzdxp<zzaea> zzdxpVar2, zzdxp<Runnable> zzdxpVar3, zzdxp<Executor> zzdxpVar4) {
        this.f12105a = zzdxpVar;
        this.f12106b = zzdxpVar2;
        this.f12107c = zzdxpVar3;
        this.f12108d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzblo(this.f12105a.get(), this.f12106b.get(), this.f12107c.get(), this.f12108d.get());
    }
}
