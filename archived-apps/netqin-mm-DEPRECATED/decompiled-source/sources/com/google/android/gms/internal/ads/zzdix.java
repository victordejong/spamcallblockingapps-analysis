package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3633hv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdix.class */
public final class zzdix implements zzdgx<zzdiu> {

    /* renamed from: a */
    public zzarg f27397a;

    /* renamed from: b */
    public ScheduledExecutorService f27398b;

    /* renamed from: c */
    public Context f27399c;

    public zzdix(zzarg zzargVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.f27397a = zzargVar;
        this.f27398b = scheduledExecutorService;
        this.f27399c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdiu> mo13576a() {
        return zzdyq.m12993a(zzdyq.m12994a(this.f27397a.mo16399a(this.f27399c), ((Long) zzwm.m11166e().m16921a(zzabb.f23725P1)).longValue(), TimeUnit.MILLISECONDS, this.f27398b), C3633hv.f13477a, zzbbz.f24764a);
    }
}
