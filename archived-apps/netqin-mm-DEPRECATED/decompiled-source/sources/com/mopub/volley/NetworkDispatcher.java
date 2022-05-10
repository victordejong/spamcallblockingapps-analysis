package com.mopub.volley;

import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/NetworkDispatcher.class */
public class NetworkDispatcher extends Thread {

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f35084a;

    /* renamed from: b */
    public final Network f35085b;

    /* renamed from: c */
    public final Cache f35086c;

    /* renamed from: d */
    public final ResponseDelivery f35087d;

    /* renamed from: e */
    public volatile boolean f35088e = false;

    public NetworkDispatcher(BlockingQueue<Request<?>> blockingQueue, Network network, Cache cache, ResponseDelivery responseDelivery) {
        this.f35084a = blockingQueue;
        this.f35085b = network;
        this.f35086c = cache;
        this.f35087d = responseDelivery;
    }

    /* renamed from: a */
    public final void m3760a() throws InterruptedException {
        m3757b(this.f35084a.take());
    }

    /* renamed from: a */
    public final void m3759a(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.getTrafficStatsTag());
        }
    }

    /* renamed from: a */
    public final void m3758a(Request<?> request, VolleyError volleyError) {
        request.m3749a(volleyError);
        this.f35087d.postError(request, volleyError);
    }

    /* renamed from: b */
    public void m3757b(Request<?> request) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        request.m3753a(3);
        try {
            try {
                request.addMarker("network-queue-take");
            } catch (VolleyError e) {
                e.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                m3758a(request, e);
                request.m3742f();
            } catch (Exception e2) {
                VolleyLog.m3736e(e2, "Unhandled exception %s", e2.toString());
                VolleyError volleyError = new VolleyError(e2);
                volleyError.setNetworkTimeMs(SystemClock.elapsedRealtime() - elapsedRealtime);
                this.f35087d.postError(request, volleyError);
                request.m3742f();
            }
            if (request.isCanceled()) {
                request.m3748a("network-discard-cancelled");
                request.m3742f();
                return;
            }
            m3759a(request);
            NetworkResponse performRequest = this.f35085b.performRequest(request);
            request.addMarker("network-http-complete");
            if (!performRequest.notModified || !request.hasHadResponseDelivered()) {
                Response<?> a = request.mo3669a(performRequest);
                request.addMarker("network-parse-complete");
                if (request.shouldCache() && a.cacheEntry != null) {
                    this.f35086c.put(request.getCacheKey(), a.cacheEntry);
                    request.addMarker("network-cache-written");
                }
                request.markDelivered();
                this.f35087d.postResponse(request, a);
                request.m3750a(a);
                return;
            }
            request.m3748a("not-modified");
            request.m3742f();
        } finally {
            request.m3753a(4);
        }
    }

    public void quit() {
        this.f35088e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                m3760a();
            } catch (InterruptedException e) {
                if (this.f35088e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m3737e("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
