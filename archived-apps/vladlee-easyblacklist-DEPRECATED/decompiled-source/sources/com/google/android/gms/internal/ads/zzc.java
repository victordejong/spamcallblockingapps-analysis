package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzc.class */
public final class zzc extends Thread {

    /* renamed from: a */
    private static final boolean f12785a = zzag.DEBUG;

    /* renamed from: b */
    private final BlockingQueue<zzq<?>> f12786b;

    /* renamed from: c */
    private final BlockingQueue<zzq<?>> f12787c;

    /* renamed from: d */
    private final zza f12788d;

    /* renamed from: e */
    private final zzaa f12789e;

    /* renamed from: f */
    private volatile boolean f12790f = false;

    /* renamed from: g */
    private final alm f12791g = new alm(this);

    public zzc(BlockingQueue<zzq<?>> blockingQueue, BlockingQueue<zzq<?>> blockingQueue2, zza zzaVar, zzaa zzaaVar) {
        this.f12786b = blockingQueue;
        this.f12787c = blockingQueue2;
        this.f12788d = zzaVar;
        this.f12789e = zzaaVar;
    }

    public final void quit() {
        this.f12790f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        zzq<?> take;
        zzd zza;
        zzaa zzaaVar;
        BlockingQueue<zzq<?>> blockingQueue;
        if (f12785a) {
            zzag.m4410v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f12788d.initialize();
        while (true) {
            try {
                take = this.f12786b.take();
                take.zzb("cache-queue-take");
                take.m3116a(1);
                take.isCanceled();
                zza = this.f12788d.zza(take.zzd());
            } catch (InterruptedException e) {
                if (this.f12790f) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzag.m4411e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
            if (zza == null) {
                take.zzb("cache-miss");
                if (!alm.m4943a(this.f12791g, take)) {
                    blockingQueue = this.f12787c;
                    blockingQueue.put(take);
                }
                take.m3116a(2);
            } else {
                if (zza.isExpired()) {
                    take.zzb("cache-hit-expired");
                    take.zza(zza);
                    if (!alm.m4943a(this.f12791g, take)) {
                        blockingQueue = this.f12787c;
                        blockingQueue.put(take);
                    }
                } else {
                    take.zzb("cache-hit");
                    zzz<?> a = take.mo3114a(new zzo(zza.data, zza.zzl));
                    take.zzb("cache-hit-parsed");
                    if (!(zza.zzk < System.currentTimeMillis())) {
                        zzaaVar = this.f12789e;
                    } else {
                        take.zzb("cache-hit-refresh-needed");
                        take.zza(zza);
                        a.zzbj = true;
                        if (!alm.m4943a(this.f12791g, take)) {
                            this.f12789e.zza(take, a, new alz(this, take));
                        } else {
                            zzaaVar = this.f12789e;
                        }
                    }
                    zzaaVar.zzb(take, a);
                }
                take.m3116a(2);
            }
        }
    }
}
