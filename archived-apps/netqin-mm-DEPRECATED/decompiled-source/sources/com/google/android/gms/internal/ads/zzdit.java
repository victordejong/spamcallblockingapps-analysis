package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3596gv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdit.class */
public final class zzdit implements zzdgx<zzdiq> {

    /* renamed from: a */
    public zzams f27388a;

    /* renamed from: b */
    public ScheduledExecutorService f27389b;

    /* renamed from: c */
    public boolean f27390c;

    /* renamed from: d */
    public ApplicationInfo f27391d;

    public zzdit(zzams zzamsVar, ScheduledExecutorService scheduledExecutorService, boolean z, ApplicationInfo applicationInfo) {
        this.f27388a = zzamsVar;
        this.f27389b = scheduledExecutorService;
        this.f27390c = z;
        this.f27391d = applicationInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdiq> mo13576a() {
        if (!zzacl.f23960b.mo16862a().booleanValue()) {
            return zzdyq.m12987a((Throwable) new Exception("Auto Collect Location by gms is disabled."));
        }
        if (!this.f27390c) {
            return zzdyq.m12987a((Throwable) new Exception("Auto Collect Location is false."));
        }
        return zzdyq.m12993a(zzdyq.m12994a(this.f27388a.mo16652a(this.f27391d), ((Long) zzwm.m11166e().m16921a(zzabb.f23700K1)).longValue(), TimeUnit.MILLISECONDS, this.f27389b), C3596gv.f13225a, zzbbz.f24764a);
    }
}
