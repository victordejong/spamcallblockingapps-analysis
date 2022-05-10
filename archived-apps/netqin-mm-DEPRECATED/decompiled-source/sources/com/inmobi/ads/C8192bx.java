package com.inmobi.ads;

import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.p497a.C8002n;
import java.lang.ref.WeakReference;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.inmobi.ads.bx */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bx.class */
public final class C8192bx {

    /* renamed from: d */
    public static final Executor f31952d;

    /* renamed from: e */
    public static final String f31953e = "bx";

    /* renamed from: g */
    public static final int f31954g;

    /* renamed from: h */
    public static final int f31955h;

    /* renamed from: i */
    public static final int f31956i;

    /* renamed from: j */
    public static final ThreadFactory f31957j = new ThreadFactory() { // from class: com.inmobi.ads.bx.1

        /* renamed from: a */
        public final AtomicInteger f31963a = new AtomicInteger(1);

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            return new Thread(runnable, "VastNetworkTask #" + this.f31963a.getAndIncrement());
        }
    };

    /* renamed from: k */
    public static final BlockingQueue<Runnable> f31958k = new LinkedBlockingQueue(128);

    /* renamed from: a */
    public C8383c f31959a;

    /* renamed from: b */
    public WeakReference<C8191bw> f31960b;

    /* renamed from: c */
    public long f31961c = 0;

    /* renamed from: f */
    public final CountDownLatch f31962f;

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f31954g = availableProcessors;
        f31955h = Math.max(2, Math.min(availableProcessors - 1, 4));
        f31956i = (f31954g * 2) + 1;
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f31955h, f31956i, 30L, TimeUnit.SECONDS, f31958k, f31957j);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f31952d = threadPoolExecutor;
    }

    public C8192bx(C8191bw bwVar, int i, CountDownLatch countDownLatch) {
        C8383c cVar = new C8383c("GET", bwVar.f31947a);
        this.f31959a = cVar;
        cVar.f32612q = i;
        cVar.f32621z = false;
        this.f31960b = new WeakReference<>(bwVar);
        this.f31962f = countDownLatch;
    }

    /* renamed from: a */
    public final void m6216a() {
        CountDownLatch countDownLatch = this.f31962f;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    /* renamed from: a */
    public final void m6214a(C8384d dVar) {
        new StringBuilder("Vast Media Header Request fetch failed:").append(dVar.f32624b.f32583b);
        try {
            C8002n.m6748a().m6747a(this.f31959a.m5734g());
            C8002n.m6748a().m6745b(dVar.m5729c());
        } catch (Exception e) {
            new StringBuilder("Handling Vast Media Header Request fetch failed encountered an unexpected error: ").append(e.getMessage());
        } finally {
            m6216a();
        }
    }
}
