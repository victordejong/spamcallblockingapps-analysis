package com.google.android.gms.internal.ads;

import android.os.Process;
import java.util.concurrent.BlockingQueue;
import p131c.p161d.p170b.p224d.p252g.p253a.ue0;
import p131c.p161d.p170b.p224d.p252g.p253a.we0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzm.class */
public final class zzm extends Thread {

    /* renamed from: g */
    public static final boolean f28618g = zzaq.f24250b;

    /* renamed from: a */
    public final BlockingQueue<zzaa<?>> f28619a;

    /* renamed from: b */
    public final BlockingQueue<zzaa<?>> f28620b;

    /* renamed from: c */
    public final zzk f28621c;

    /* renamed from: d */
    public final zzak f28622d;

    /* renamed from: e */
    public volatile boolean f28623e = false;

    /* renamed from: f */
    public final ue0 f28624f = new ue0(this);

    public zzm(BlockingQueue<zzaa<?>> blockingQueue, BlockingQueue<zzaa<?>> blockingQueue2, zzk zzkVar, zzak zzakVar) {
        this.f28619a = blockingQueue;
        this.f28620b = blockingQueue2;
        this.f28621c = zzkVar;
        this.f28622d = zzakVar;
    }

    /* renamed from: a */
    public final void m11812a() throws InterruptedException {
        zzaa<?> take = this.f28619a.take();
        take.m16964a("cache-queue-take");
        take.m16971a(1);
        try {
            take.m16958e();
            zzn a = this.f28621c.mo11878a(take.m16960c());
            if (a == null) {
                take.m16964a("cache-miss");
                if (!ue0.m26239a(this.f28624f, take)) {
                    this.f28620b.put(take);
                }
            } else if (a.m11797a()) {
                take.m16964a("cache-hit-expired");
                take.m16965a(a);
                if (!ue0.m26239a(this.f28624f, take)) {
                    this.f28620b.put(take);
                }
            } else {
                take.m16964a("cache-hit");
                zzaj<?> a2 = take.mo15542a(new zzy(a.f28648a, a.f28654g));
                take.m16964a("cache-hit-parsed");
                if (!a2.m16732a()) {
                    take.m16964a("cache-parsing-failed");
                    this.f28621c.mo11876a(take.m16960c(), true);
                    take.m16965a((zzn) null);
                    if (!ue0.m26239a(this.f28624f, take)) {
                        this.f28620b.put(take);
                    }
                    return;
                }
                if (!(a.f28653f < System.currentTimeMillis())) {
                    this.f28622d.mo11443a(take, a2);
                } else {
                    take.m16964a("cache-hit-refresh-needed");
                    take.m16965a(a);
                    a2.f24144d = true;
                    if (!ue0.m26239a(this.f28624f, take)) {
                        this.f28622d.mo11442a(take, a2, new we0(this, take));
                    } else {
                        this.f28622d.mo11443a(take, a2);
                    }
                }
            }
        } finally {
            take.m16971a(2);
        }
    }

    /* renamed from: b */
    public final void m11810b() {
        this.f28623e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        if (f28618g) {
            zzaq.m16458c("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f28621c.initialize();
        while (true) {
            try {
                m11812a();
            } catch (InterruptedException e) {
                if (this.f28623e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                zzaq.m16459b("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
