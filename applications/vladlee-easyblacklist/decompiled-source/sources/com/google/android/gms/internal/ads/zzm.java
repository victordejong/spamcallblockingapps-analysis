package com.google.android.gms.internal.ads;

import android.net.TrafficStats;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzm.class */
public final class zzm extends Thread {

    /* renamed from: a */
    private final BlockingQueue<zzq<?>> f15121a;

    /* renamed from: b */
    private final zzn f15122b;

    /* renamed from: c */
    private final zza f15123c;

    /* renamed from: d */
    private final zzaa f15124d;

    /* renamed from: e */
    private volatile boolean f15125e = false;

    public zzm(BlockingQueue<zzq<?>> blockingQueue, zzn zznVar, zza zzaVar, zzaa zzaaVar) {
        this.f15121a = blockingQueue;
        this.f15122b = zznVar;
        this.f15123c = zzaVar;
        this.f15124d = zzaaVar;
    }

    public final void quit() {
        this.f15125e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                zzq<?> take = this.f15121a.take();
                long elapsedRealtime = SystemClock.elapsedRealtime();
                take.m3116a(3);
                try {
                    take.zzb("network-queue-take");
                    take.isCanceled();
                    TrafficStats.setThreadStatsTag(take.zzc());
                    zzo zzc = this.f15122b.zzc(take);
                    take.zzb("network-http-complete");
                    if (!zzc.zzac || !take.zzk()) {
                        zzz<?> a = take.mo3114a(zzc);
                        take.zzb("network-parse-complete");
                        if (take.zzg() && a.zzbh != null) {
                            this.f15123c.zza(take.zzd(), a.zzbh);
                            take.zzb("network-cache-written");
                        }
                        take.zzj();
                        this.f15124d.zzb(take, a);
                        take.m3112a(a);
                    } else {
                        take.m3110b("not-modified");
                        take.m3117a();
                    }
                } catch (zzae e) {
                    e.m4432a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.f15124d.zza(take, e);
                    take.m3117a();
                    take.m3116a(4);
                } catch (Exception e2) {
                    zzag.zza(e2, "Unhandled exception %s", e2.toString());
                    zzae zzaeVar = new zzae(e2);
                    zzaeVar.m4432a(SystemClock.elapsedRealtime() - elapsedRealtime);
                    this.f15124d.zza(take, zzaeVar);
                    take.m3117a();
                    take.m3116a(4);
                }
                take.m3116a(4);
            } catch (InterruptedException e3) {
                if (this.f15125e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzag.m4411e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
