package com.mopub.volley;

import android.os.Process;
import com.mopub.volley.Cache;
import com.mopub.volley.Request;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/CacheDispatcher.class */
public class CacheDispatcher extends Thread {

    /* renamed from: g */
    public static final boolean f35062g = VolleyLog.DEBUG;

    /* renamed from: a */
    public final BlockingQueue<Request<?>> f35063a;

    /* renamed from: b */
    public final BlockingQueue<Request<?>> f35064b;

    /* renamed from: c */
    public final Cache f35065c;

    /* renamed from: d */
    public final ResponseDelivery f35066d;

    /* renamed from: e */
    public volatile boolean f35067e = false;

    /* renamed from: f */
    public final C8994b f35068f = new C8994b(this);

    /* renamed from: com.mopub.volley.CacheDispatcher$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/CacheDispatcher$a.class */
    public class RunnableC8993a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Request f35069a;

        public RunnableC8993a(Request request) {
            this.f35069a = request;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                CacheDispatcher.this.f35064b.put(this.f35069a);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
    }

    /* renamed from: com.mopub.volley.CacheDispatcher$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/CacheDispatcher$b.class */
    public static class C8994b implements Request.AbstractC8998b {

        /* renamed from: a */
        public final Map<String, List<Request<?>>> f35071a = new HashMap();

        /* renamed from: b */
        public final CacheDispatcher f35072b;

        public C8994b(CacheDispatcher cacheDispatcher) {
            this.f35072b = cacheDispatcher;
        }

        /* renamed from: a */
        public final boolean m3762a(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                if (this.f35071a.containsKey(cacheKey)) {
                    List<Request<?>> list = this.f35071a.get(cacheKey);
                    List<Request<?>> list2 = list;
                    if (list == null) {
                        list2 = new ArrayList<>();
                    }
                    request.addMarker("waiting-for-response");
                    list2.add(request);
                    this.f35071a.put(cacheKey, list2);
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m3738d("Request for cacheKey=%s is in flight, putting on hold.", cacheKey);
                    }
                    return true;
                }
                this.f35071a.put(cacheKey, null);
                request.m3752a(this);
                if (VolleyLog.DEBUG) {
                    VolleyLog.m3738d("new request, sending to network %s", cacheKey);
                }
                return false;
            }
        }

        @Override // com.mopub.volley.Request.AbstractC8998b
        public void onNoUsableResponseReceived(Request<?> request) {
            synchronized (this) {
                String cacheKey = request.getCacheKey();
                List<Request<?>> remove = this.f35071a.remove(cacheKey);
                if (remove != null && !remove.isEmpty()) {
                    if (VolleyLog.DEBUG) {
                        VolleyLog.m3735v("%d waiting requests for cacheKey=%s; resend to network", Integer.valueOf(remove.size()), cacheKey);
                    }
                    Request<?> remove2 = remove.remove(0);
                    this.f35071a.put(cacheKey, remove);
                    remove2.m3752a(this);
                    try {
                        this.f35072b.f35064b.put(remove2);
                    } catch (InterruptedException e) {
                        VolleyLog.m3737e("Couldn't add request to queue. %s", e.toString());
                        Thread.currentThread().interrupt();
                        this.f35072b.quit();
                    }
                }
            }
        }

        @Override // com.mopub.volley.Request.AbstractC8998b
        public void onResponseReceived(Request<?> request, Response<?> response) {
            List<Request<?>> remove;
            Cache.Entry entry = response.cacheEntry;
            if (entry == null || entry.isExpired()) {
                onNoUsableResponseReceived(request);
                return;
            }
            String cacheKey = request.getCacheKey();
            synchronized (this) {
                remove = this.f35071a.remove(cacheKey);
            }
            if (remove != null) {
                if (VolleyLog.DEBUG) {
                    VolleyLog.m3735v("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), cacheKey);
                }
                for (Request<?> request2 : remove) {
                    this.f35072b.f35066d.postResponse(request2, response);
                }
            }
        }
    }

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.f35063a = blockingQueue;
        this.f35064b = blockingQueue2;
        this.f35065c = cache;
        this.f35066d = responseDelivery;
    }

    /* renamed from: a */
    public final void m3767a() throws InterruptedException {
        m3765a(this.f35063a.take());
    }

    /* renamed from: a */
    public void m3765a(Request<?> request) throws InterruptedException {
        request.addMarker("cache-queue-take");
        request.m3753a(1);
        try {
            if (request.isCanceled()) {
                request.m3748a("cache-discard-canceled");
                return;
            }
            Cache.Entry entry = this.f35065c.get(request.getCacheKey());
            if (entry == null) {
                request.addMarker("cache-miss");
                if (!this.f35068f.m3762a(request)) {
                    this.f35064b.put(request);
                }
            } else if (entry.isExpired()) {
                request.addMarker("cache-hit-expired");
                request.setCacheEntry(entry);
                if (!this.f35068f.m3762a(request)) {
                    this.f35064b.put(request);
                }
            } else {
                request.addMarker("cache-hit");
                Response<?> a = request.mo3669a(new NetworkResponse(entry.data, entry.responseHeaders));
                request.addMarker("cache-hit-parsed");
                if (!entry.refreshNeeded()) {
                    this.f35066d.postResponse(request, a);
                } else {
                    request.addMarker("cache-hit-refresh-needed");
                    request.setCacheEntry(entry);
                    a.intermediate = true;
                    if (!this.f35068f.m3762a(request)) {
                        this.f35066d.postResponse(request, a, new RunnableC8993a(request));
                    } else {
                        this.f35066d.postResponse(request, a);
                    }
                }
            }
        } finally {
            request.m3753a(2);
        }
    }

    public void quit() {
        this.f35067e = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f35062g) {
            VolleyLog.m3735v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f35065c.initialize();
        while (true) {
            try {
                m3767a();
            } catch (InterruptedException e) {
                if (this.f35067e) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.m3737e("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
