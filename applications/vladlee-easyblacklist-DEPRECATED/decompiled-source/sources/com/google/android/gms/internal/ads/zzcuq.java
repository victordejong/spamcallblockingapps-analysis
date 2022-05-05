package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuq.class */
public final class zzcuq implements zzdxg<zzcup> {

    /* renamed from: a */
    private final zzdxp<zzava> f13925a;

    /* renamed from: b */
    private final zzdxp<Context> f13926b;

    /* renamed from: c */
    private final zzdxp<ScheduledExecutorService> f13927c;

    /* renamed from: d */
    private final zzdxp<Executor> f13928d;

    public zzcuq(zzdxp<zzava> zzdxpVar, zzdxp<Context> zzdxpVar2, zzdxp<ScheduledExecutorService> zzdxpVar3, zzdxp<Executor> zzdxpVar4) {
        this.f13925a = zzdxpVar;
        this.f13926b = zzdxpVar2;
        this.f13927c = zzdxpVar3;
        this.f13928d = zzdxpVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcup(this.f13925a.get(), this.f13926b.get(), this.f13927c.get(), this.f13928d.get());
    }
}
