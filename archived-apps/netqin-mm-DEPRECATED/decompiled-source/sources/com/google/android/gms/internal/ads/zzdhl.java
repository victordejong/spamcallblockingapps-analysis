package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzdhl;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C4043su;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdhl.class */
public final class zzdhl implements zzdgx<zzdhi> {

    /* renamed from: a */
    public final zzaxx f27333a;

    /* renamed from: b */
    public final Context f27334b;

    /* renamed from: c */
    public final ScheduledExecutorService f27335c;

    /* renamed from: d */
    public final Executor f27336d;

    public zzdhl(zzaxx zzaxxVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f27333a = zzaxxVar;
        this.f27334b = context;
        this.f27335c = scheduledExecutorService;
        this.f27336d = executor;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdhi m13597a(Throwable th) {
        zzwm.m11170a();
        return new zzdhi(null, zzbbg.m15898b(this.f27334b));
    }

    @Override // com.google.android.gms.internal.ads.zzdgx
    /* renamed from: a */
    public final zzdzc<zzdhi> mo13576a() {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23885s0)).booleanValue()) {
            return zzdyq.m12987a((Throwable) new Exception("Did not ad Ad ID into query param."));
        }
        return zzdyl.m12999d(this.f27333a.mo16202a(this.f27334b)).m13003a(C4043su.f15322a, this.f27336d).m13004a(((Long) zzwm.m11166e().m16921a(zzabb.f23890t0)).longValue(), TimeUnit.MILLISECONDS, this.f27335c).m13001a(Throwable.class, new zzdvu(this) { // from class: c.d.b.d.g.a.tu

            /* renamed from: a */
            public final zzdhl f15426a;

            {
                this.f15426a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvu
            public final Object apply(Object obj) {
                return this.f15426a.m13597a((Throwable) obj);
            }
        }, this.f27336d);
    }
}
