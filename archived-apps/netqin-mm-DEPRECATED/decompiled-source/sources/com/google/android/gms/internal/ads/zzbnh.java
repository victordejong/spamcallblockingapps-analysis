package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbnh.class */
public final class zzbnh implements zzrh {

    /* renamed from: a */
    public final ScheduledExecutorService f25241a;

    /* renamed from: b */
    public final Clock f25242b;

    /* renamed from: c */
    public ScheduledFuture<?> f25243c;

    /* renamed from: d */
    public long f25244d = -1;

    /* renamed from: e */
    public long f25245e = -1;

    /* renamed from: f */
    public Runnable f25246f = null;

    /* renamed from: g */
    public boolean f25247g = false;

    public zzbnh(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        this.f25241a = scheduledExecutorService;
        this.f25242b = clock;
        zzp.m17966f().m11509a(this);
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m15287a() {
        synchronized (this) {
            if (!this.f25247g) {
                if (this.f25243c == null || this.f25243c.isDone()) {
                    this.f25245e = -1L;
                } else {
                    this.f25243c.cancel(true);
                    this.f25245e = this.f25244d - this.f25242b.mo17092a();
                }
                this.f25247g = true;
            }
        }
    }

    /* renamed from: a */
    public final void m15286a(int i, Runnable runnable) {
        synchronized (this) {
            this.f25246f = runnable;
            long j = i;
            this.f25244d = this.f25242b.mo17092a() + j;
            this.f25243c = this.f25241a.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrh
    /* renamed from: a */
    public final void mo11506a(boolean z) {
        if (z) {
            m15285b();
        } else {
            m15287a();
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public final void m15285b() {
        synchronized (this) {
            if (this.f25247g) {
                if (this.f25245e > 0 && this.f25243c != null && this.f25243c.isCancelled()) {
                    this.f25243c = this.f25241a.schedule(this.f25246f, this.f25245e, TimeUnit.MILLISECONDS);
                }
                this.f25247g = false;
            }
        }
    }
}
