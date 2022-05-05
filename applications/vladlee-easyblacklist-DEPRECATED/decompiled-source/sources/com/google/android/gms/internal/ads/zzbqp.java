package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbqp.class */
public final class zzbqp extends zzbrl<zzbqt> {

    /* renamed from: a */
    private final ScheduledExecutorService f12265a;

    /* renamed from: b */
    private final Clock f12266b;

    /* renamed from: c */
    private long f12267c = -1;

    /* renamed from: d */
    private long f12268d = -1;

    /* renamed from: e */
    private boolean f12269e = false;

    /* renamed from: f */
    private ScheduledFuture<?> f12270f;

    public zzbqp(ScheduledExecutorService scheduledExecutorService, Clock clock) {
        super(Collections.emptySet());
        this.f12265a = scheduledExecutorService;
        this.f12266b = clock;
    }

    /* renamed from: a */
    private final void m3997a(long j) {
        synchronized (this) {
            if (this.f12270f != null && !this.f12270f.isDone()) {
                this.f12270f.cancel(true);
            }
            this.f12267c = this.f12266b.elapsedRealtime() + j;
            this.f12270f = this.f12265a.schedule(new RunnableC2065mn(this, (byte) 0), j, TimeUnit.MILLISECONDS);
        }
    }

    public final void onPause() {
        synchronized (this) {
            if (!this.f12269e) {
                if (this.f12270f == null || this.f12270f.isCancelled()) {
                    this.f12268d = -1L;
                } else {
                    this.f12270f.cancel(true);
                    this.f12268d = this.f12267c - this.f12266b.elapsedRealtime();
                }
                this.f12269e = true;
            }
        }
    }

    public final void onResume() {
        synchronized (this) {
            if (this.f12269e) {
                if (this.f12268d > 0 && this.f12270f.isCancelled()) {
                    m3997a(this.f12268d);
                }
                this.f12269e = false;
            }
        }
    }

    public final void zzahj() {
        synchronized (this) {
            this.f12269e = false;
            m3997a(0L);
        }
    }

    public final void zzdg(int i) {
        synchronized (this) {
            if (i > 0) {
                long millis = TimeUnit.SECONDS.toMillis(i);
                if (this.f12269e) {
                    if (this.f12268d <= 0 || millis >= this.f12268d) {
                        millis = this.f12268d;
                    }
                    this.f12268d = millis;
                    return;
                }
                if (this.f12266b.elapsedRealtime() > this.f12267c || this.f12267c - this.f12266b.elapsedRealtime() > millis) {
                    m3997a(millis);
                }
            }
        }
    }
}
