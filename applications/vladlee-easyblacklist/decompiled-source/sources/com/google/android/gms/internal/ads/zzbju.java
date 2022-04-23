package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzq;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbju.class */
public final class zzbju implements zzqj {

    /* renamed from: a */
    private final ScheduledExecutorService f12000a;

    /* renamed from: b */
    private final Clock f12001b;

    /* renamed from: c */
    private ScheduledFuture<?> f12002c;

    /* renamed from: d */
    private long f12003d = -1;

    /* renamed from: e */
    private long f12004e = -1;

    /* renamed from: f */
    private Runnable f12005f = null;

    /* renamed from: g */
    private boolean f12006g = false;

    public zzbju(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.f12000a = scheduledExecutorService;
        this.f12001b = clock;
        zzq.zzkt().zza(this);
    }

    /* renamed from: a */
    private final void m4038a() {
        synchronized (this) {
            if (!this.f12006g) {
                if (this.f12002c == null || this.f12002c.isDone()) {
                    this.f12004e = -1L;
                } else {
                    this.f12002c.cancel(true);
                    this.f12004e = this.f12003d - this.f12001b.elapsedRealtime();
                }
                this.f12006g = true;
            }
        }
    }

    /* renamed from: b */
    private final void m4037b() {
        synchronized (this) {
            if (this.f12006g) {
                if (this.f12004e > 0 && this.f12002c != null && this.f12002c.isCancelled()) {
                    this.f12002c = this.f12000a.schedule(this.f12005f, this.f12004e, TimeUnit.MILLISECONDS);
                }
                this.f12006g = false;
            }
        }
    }

    public final void zza(int i, Runnable runnable) {
        synchronized (this) {
            this.f12005f = runnable;
            long j = i;
            this.f12003d = this.f12001b.elapsedRealtime() + j;
            this.f12002c = this.f12000a.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqj
    public final void zzp(boolean z) {
        if (z) {
            m4037b();
        } else {
            m4038a();
        }
    }
}
