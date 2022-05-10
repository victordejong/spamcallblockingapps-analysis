package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbtd;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.C3653id;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbtd.class */
public final class zzbtd implements zzbuh, zzbuv, zzbyc, zzbzu {

    /* renamed from: a */
    public final zzbuu f25487a;

    /* renamed from: b */
    public final zzdnv f25488b;

    /* renamed from: c */
    public final ScheduledExecutorService f25489c;

    /* renamed from: d */
    public final Executor f25490d;

    /* renamed from: e */
    public zzdzj<Boolean> f25491e = zzdzj.m12970h();

    /* renamed from: f */
    public ScheduledFuture<?> f25492f;

    public zzbtd(zzbuu zzbuuVar, zzdnv zzdnvVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f25487a = zzbuuVar;
        this.f25488b = zzdnvVar;
        this.f25489c = scheduledExecutorService;
        this.f25490d = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: A */
    public final void mo13512A() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: H */
    public final void mo13511H() {
    }

    @Override // com.google.android.gms.internal.ads.zzbyc
    /* renamed from: a */
    public final void mo14069a() {
        synchronized (this) {
            if (!this.f25491e.isDone()) {
                if (this.f25492f != null) {
                    this.f25492f.cancel(true);
                }
                this.f25491e.mo12972a((zzdzj<Boolean>) true);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: a */
    public final void mo13508a(zzatw zzatwVar, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    /* renamed from: b */
    public final void mo14803b() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    /* renamed from: b */
    public final void mo13498b(zzva zzvaVar) {
        synchronized (this) {
            if (!this.f25491e.isDone()) {
                if (this.f25492f != null) {
                    this.f25492f.cancel(true);
                }
                this.f25491e.mo12971a(new Exception());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbyc
    /* renamed from: c */
    public final void mo14062c() {
    }

    @Override // com.google.android.gms.internal.ads.zzbzu
    /* renamed from: d */
    public final void mo14802d() {
        if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23729Q0)).booleanValue()) {
            zzdnv zzdnvVar = this.f25488b;
            if (zzdnvVar.f27572S != 2) {
                return;
            }
            if (zzdnvVar.f27600p == 0) {
                this.f25487a.m15032M();
                return;
            }
            zzdyq.m12991a(this.f25491e, new C3653id(this), this.f25490d);
            this.f25492f = this.f25489c.schedule(new Runnable(this) { // from class: c.d.b.d.g.a.jd

                /* renamed from: a */
                public final zzbtd f13772a;

                {
                    this.f13772a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f13772a.m15082e();
                }
            }, this.f25488b.f27600p, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: e */
    public final /* synthetic */ void m15082e() {
        synchronized (this) {
            if (!this.f25491e.isDone()) {
                this.f25491e.mo12972a((zzdzj<Boolean>) true);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: k */
    public final void mo13497k() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    public final void onRewardedVideoCompleted() {
    }

    @Override // com.google.android.gms.internal.ads.zzbuh
    /* renamed from: t */
    public final void mo13496t() {
        int i = this.f25488b.f27572S;
        if (i == 0 || i == 1) {
            this.f25487a.m15032M();
        }
    }
}
