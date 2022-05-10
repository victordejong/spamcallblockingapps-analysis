package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzw.class */
public final class zzw extends Thread {

    /* renamed from: a */
    public final BlockingQueue<zzaa<?>> f29067a;

    /* renamed from: b */
    public final zzx f29068b;

    /* renamed from: c */
    public final zzk f29069c;

    /* renamed from: d */
    public final zzak f29070d;

    /* renamed from: e */
    public volatile boolean f29071e = false;

    public zzw(BlockingQueue<zzaa<?>> blockingQueue, zzx zzxVar, zzk zzkVar, zzak zzakVar) {
        this.f29067a = blockingQueue;
        this.f29068b = zzxVar;
        this.f29069c = zzkVar;
        this.f29070d = zzakVar;
    }

    /* renamed from: a */
    public final void m11172a() throws InterruptedException {
        zzaa<?> take = this.f29067a.take();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        take.m16971a(3);
        try {
            take.m16964a("network-queue-take");
            take.m16958e();
            TrafficStats.setThreadStatsTag(take.zzd());
            zzy a = this.f29068b.mo11147a(take);
            take.m16964a("network-http-complete");
            if (!a.f29088e || !take.m16951p()) {
                zzaj<?> a2 = take.mo15542a(a);
                take.m16964a("network-parse-complete");
                if (take.m16955h() && a2.f24142b != null) {
                    this.f29069c.mo11877a(take.m16960c(), a2.f24142b);
                    take.m16964a("network-cache-written");
                }
                take.m16952o();
                this.f29070d.mo11443a(take, a2);
                take.m16967a(a2);
                return;
            }
            take.m16961b("not-modified");
            take.m16950r();
        } catch (zzao e) {
            e.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.f29070d.mo11441a(take, e);
            take.m16950r();
        } catch (Exception e2) {
            zzaq.m16460a(e2, "Unhandled exception %s", e2.toString());
            zzao zzaoVar = new zzao(e2);
            zzaoVar.zza(SystemClock.elapsedRealtime() - elapsedRealtime);
            this.f29070d.mo11441a(take, zzaoVar);
            take.m16950r();
        } finally {
            take.m16971a(4);
        }
    }

    /* renamed from: b */
    public final void m11171b() {
        this.f29071e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m11172a();
            } catch (InterruptedException e) {
                if (this.f29071e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaq.m16459b("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
