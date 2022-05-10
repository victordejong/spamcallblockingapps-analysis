package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbqo;
import com.google.android.gms.internal.ads.zzbqv;
import com.google.android.gms.internal.ads.zzcof;
import com.google.android.gms.internal.ads.zzdpg;
import com.google.android.gms.internal.ads.zzdyq;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzdzc;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3392bd;
import p131c.p161d.p170b.p224d.p252g.p253a.C3430cd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqv.class */
public final class zzbqv {

    /* renamed from: a */
    public final Executor f25390a;

    /* renamed from: b */
    public final ScheduledExecutorService f25391b;

    /* renamed from: c */
    public final zzdzc<zzbqu> f25392c;

    /* renamed from: d */
    public volatile boolean f25393d = true;

    public zzbqv(Executor executor, ScheduledExecutorService scheduledExecutorService, zzdzc<zzbqu> zzdzcVar) {
        this.f25390a = executor;
        this.f25391b = scheduledExecutorService;
        this.f25392c = zzdzcVar;
    }

    /* renamed from: a */
    public final /* synthetic */ zzdzc m15148a(zzdyr zzdyrVar, zzdzc zzdzcVar, zzbqo zzbqoVar) throws Exception {
        if (zzbqoVar != null) {
            zzdyrVar.onSuccess(zzbqoVar);
        }
        return zzdyq.m12994a(zzdzcVar, zzadf.f24013a.mo16862a().longValue(), TimeUnit.MILLISECONDS, this.f25391b);
    }

    /* renamed from: a */
    public final void m15149a(zzdyr<zzbqo> zzdyrVar) {
        zzdyq.m12991a(this.f25392c, new C3430cd(this, zzdyrVar), this.f25390a);
    }

    /* renamed from: a */
    public final void m15147a(List<? extends zzdzc<? extends zzbqo>> list, final zzdyr<zzbqo> zzdyrVar) {
        if (list == null || list.isEmpty()) {
            this.f25390a.execute(new Runnable(zzdyrVar) { // from class: c.d.b.d.g.a.yc

                /* renamed from: a */
                public final zzdyr f16213a;

                {
                    this.f16213a = zzdyrVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f16213a.mo12980a(new zzcof(zzdpg.NO_FILL));
                }
            });
            return;
        }
        zzdzc a = zzdyq.m12988a((Object) null);
        Iterator<? extends zzdzc<? extends zzbqo>> it = list.iterator();
        while (it.hasNext()) {
            final zzdzc zzdzcVar = (zzdzc) it.next();
            a = zzdyq.m12992a(zzdyq.m12990a(a, Throwable.class, new zzdya(zzdyrVar) { // from class: c.d.b.d.g.a.xc

                /* renamed from: a */
                public final zzdyr f16035a;

                {
                    this.f16035a = zzdyrVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdya
                /* renamed from: d */
                public final zzdzc mo13006d(Object obj) {
                    this.f16035a.mo12980a((Throwable) obj);
                    return zzdyq.m12988a((Object) null);
                }
            }, this.f25390a), new zzdya(this, zzdyrVar, zzdzcVar) { // from class: c.d.b.d.g.a.ad

                /* renamed from: a */
                public final zzbqv f12241a;

                /* renamed from: b */
                public final zzdyr f12242b;

                /* renamed from: c */
                public final zzdzc f12243c;

                {
                    this.f12241a = this;
                    this.f12242b = zzdyrVar;
                    this.f12243c = zzdzcVar;
                }

                @Override // com.google.android.gms.internal.ads.zzdya
                /* renamed from: d */
                public final zzdzc mo13006d(Object obj) {
                    return this.f12241a.m15148a(this.f12242b, this.f12243c, (zzbqo) obj);
                }
            }, this.f25390a);
        }
        zzdyq.m12991a(a, new C3392bd(this, zzdyrVar), this.f25390a);
    }

    /* renamed from: a */
    public final boolean m15152a() {
        return this.f25393d;
    }

    /* renamed from: b */
    public final void m15146b() {
        zzbbz.f24768e.execute(new Runnable(this) { // from class: c.d.b.d.g.a.zc

            /* renamed from: a */
            public final zzbqv f16431a;

            {
                this.f16431a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f16431a.m15145c();
            }
        });
    }

    /* renamed from: c */
    public final /* synthetic */ void m15145c() {
        this.f25393d = false;
    }
}
