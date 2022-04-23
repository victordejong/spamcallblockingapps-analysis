package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrd.class */
public final class zzcrd implements zzdxg<zzcqz> {

    /* renamed from: a */
    private final zzdxp<Context> f13774a;

    /* renamed from: b */
    private final zzdxp<ScheduledExecutorService> f13775b;

    /* renamed from: c */
    private final zzdxp<Executor> f13776c;

    private zzcrd(zzdxp<Context> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<Executor> zzdxpVar3) {
        this.f13774a = zzdxpVar;
        this.f13775b = zzdxpVar2;
        this.f13776c = zzdxpVar3;
    }

    public static zzcrd zzn(zzdxp<Context> zzdxpVar, zzdxp<ScheduledExecutorService> zzdxpVar2, zzdxp<Executor> zzdxpVar3) {
        return new zzcrd(zzdxpVar, zzdxpVar2, zzdxpVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzdxp
    public final /* synthetic */ Object get() {
        return new zzcqz(this.f13774a.get(), this.f13775b.get(), this.f13776c.get());
    }
}
