package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.location.Location;
import com.google.android.gms.internal.ads.zzddz;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3594gt;
import p131c.p161d.p170b.p224d.p252g.p253a.C3669it;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzddz.class */
public final class zzddz implements zzdgx<zzddw> {

    /* renamed from: a */
    public zzams f27192a;

    /* renamed from: b */
    public ScheduledExecutorService f27193b;

    /* renamed from: c */
    public zzayr f27194c;

    /* renamed from: d */
    public ApplicationInfo f27195d;

    /* renamed from: e */
    public zzdok f27196e;

    public zzddz(zzams zzamsVar, ScheduledExecutorService scheduledExecutorService, zzayr zzayrVar, ApplicationInfo applicationInfo, zzdok zzdokVar) {
        this.f27192a = zzamsVar;
        this.f27193b = scheduledExecutorService;
        this.f27194c = zzayrVar;
        this.f27195d = applicationInfo;
        this.f27196e = zzdokVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzddw> mo13576a() {
        zzdzc zzdzcVar;
        if (!zzacl.f23959a.mo16862a().booleanValue()) {
            zzdzcVar = zzdyq.m12988a((Object) null);
        } else if (!this.f27194c.mo16060d()) {
            zzdzcVar = zzdyq.m12988a((Object) null);
        } else {
            zzdzcVar = zzdyq.m12990a(zzdyq.m12994a(this.f27192a.mo16652a(this.f27195d), ((Long) zzwm.m11166e().m16921a(zzabb.f23700K1)).longValue(), TimeUnit.MILLISECONDS, this.f27193b), Throwable.class, C3669it.f13562a, zzbbz.f24769f);
        }
        return zzdyq.m12993a(zzdyq.m12993a(zzdzcVar, new zzdvu(this) { // from class: c.d.b.d.g.a.jt

            /* renamed from: a */
            public final zzddz f13816a;

            {
                this.f13816a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                Location location = (Location) obj;
                return location != null ? location : this.f13816a.f27196e.f27642d.f29011k;
            }
        }, this.f27193b), C3594gt.f13223a, zzbbz.f24764a);
    }
}
