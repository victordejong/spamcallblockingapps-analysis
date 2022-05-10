package com.mopub.volley;

import android.os.Handler;
import android.os.Looper;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue.class */
public class RequestQueue {

    /* renamed from: a */
    public final AtomicInteger f35108a;

    /* renamed from: b */
    public final Set<Request<?>> f35109b;

    /* renamed from: c */
    public final PriorityBlockingQueue<Request<?>> f35110c;

    /* renamed from: d */
    public final PriorityBlockingQueue<Request<?>> f35111d;

    /* renamed from: e */
    public final Cache f35112e;

    /* renamed from: f */
    public final Network f35113f;

    /* renamed from: g */
    public final ResponseDelivery f35114g;

    /* renamed from: h */
    public final NetworkDispatcher[] f35115h;

    /* renamed from: i */
    public CacheDispatcher f35116i;

    /* renamed from: j */
    public final List<RequestFinishedListener> f35117j;

    /* renamed from: k */
    public final List<RequestEventListener> f35118k;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEvent.class */
    public @interface RequestEvent {
        public static final int REQUEST_CACHE_LOOKUP_FINISHED = 2;
        public static final int REQUEST_CACHE_LOOKUP_STARTED = 1;
        public static final int REQUEST_FINISHED = 5;
        public static final int REQUEST_NETWORK_DISPATCH_FINISHED = 4;
        public static final int REQUEST_NETWORK_DISPATCH_STARTED = 3;
        public static final int REQUEST_QUEUED = 0;
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestEventListener.class */
    public interface RequestEventListener {
        void onRequestEvent(Request<?> request, int i);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFilter.class */
    public interface RequestFilter {
        boolean apply(Request<?> request);
    }

    @Deprecated
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$RequestFinishedListener.class */
    public interface RequestFinishedListener<T> {
        void onRequestFinished(Request<T> request);
    }

    /* renamed from: com.mopub.volley.RequestQueue$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/RequestQueue$a.class */
    public class C8999a implements RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Object f35119a;

        public C8999a(RequestQueue requestQueue, Object obj) {
            this.f35119a = obj;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.getTag() == this.f35119a;
        }
    }

    public RequestQueue(Cache cache, Network network) {
        this(cache, network, 4);
    }

    public RequestQueue(Cache cache, Network network, int i) {
        this(cache, network, i, new ExecutorDelivery(new Handler(Looper.getMainLooper())));
    }

    public RequestQueue(Cache cache, Network network, int i, ResponseDelivery responseDelivery) {
        this.f35108a = new AtomicInteger();
        this.f35109b = new HashSet();
        this.f35110c = new PriorityBlockingQueue<>();
        this.f35111d = new PriorityBlockingQueue<>();
        this.f35117j = new ArrayList();
        this.f35118k = new ArrayList();
        this.f35112e = cache;
        this.f35113f = network;
        this.f35115h = new NetworkDispatcher[i];
        this.f35114g = responseDelivery;
    }

    /* renamed from: a */
    public <T> void m3741a(Request<T> request) {
        synchronized (this.f35109b) {
            try {
                this.f35109b.remove(request);
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f35117j) {
            for (RequestFinishedListener requestFinishedListener : this.f35117j) {
                requestFinishedListener.onRequestFinished(request);
            }
        }
        m3740a(request, 5);
    }

    /* renamed from: a */
    public void m3740a(Request<?> request, int i) {
        synchronized (this.f35118k) {
            try {
                for (RequestEventListener requestEventListener : this.f35118k) {
                    requestEventListener.onRequestEvent(request, i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public <T> Request<T> add(Request<T> request) {
        request.setRequestQueue(this);
        synchronized (this.f35109b) {
            this.f35109b.add(request);
        }
        request.setSequence(getSequenceNumber());
        request.addMarker("add-to-queue");
        m3740a(request, 0);
        if (!request.shouldCache()) {
            this.f35111d.add(request);
            return request;
        }
        this.f35110c.add(request);
        return request;
    }

    public void addRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f35118k) {
            this.f35118k.add(requestEventListener);
        }
    }

    @Deprecated
    public <T> void addRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f35117j) {
            this.f35117j.add(requestFinishedListener);
        }
    }

    public void cancelAll(RequestFilter requestFilter) {
        synchronized (this.f35109b) {
            try {
                for (Request<?> request : this.f35109b) {
                    if (requestFilter.apply(request)) {
                        request.cancel();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void cancelAll(Object obj) {
        if (obj != null) {
            cancelAll((RequestFilter) new C8999a(this, obj));
            return;
        }
        throw new IllegalArgumentException("Cannot cancelAll with a null tag");
    }

    public Cache getCache() {
        return this.f35112e;
    }

    public int getSequenceNumber() {
        return this.f35108a.incrementAndGet();
    }

    public void removeRequestEventListener(RequestEventListener requestEventListener) {
        synchronized (this.f35118k) {
            this.f35118k.remove(requestEventListener);
        }
    }

    @Deprecated
    public <T> void removeRequestFinishedListener(RequestFinishedListener<T> requestFinishedListener) {
        synchronized (this.f35117j) {
            this.f35117j.remove(requestFinishedListener);
        }
    }

    public void start() {
        stop();
        CacheDispatcher cacheDispatcher = new CacheDispatcher(this.f35110c, this.f35111d, this.f35112e, this.f35114g);
        this.f35116i = cacheDispatcher;
        cacheDispatcher.start();
        for (int i = 0; i < this.f35115h.length; i++) {
            NetworkDispatcher networkDispatcher = new NetworkDispatcher(this.f35111d, this.f35113f, this.f35112e, this.f35114g);
            this.f35115h[i] = networkDispatcher;
            networkDispatcher.start();
        }
    }

    public void stop() {
        NetworkDispatcher[] networkDispatcherArr;
        CacheDispatcher cacheDispatcher = this.f35116i;
        if (cacheDispatcher != null) {
            cacheDispatcher.quit();
        }
        for (NetworkDispatcher networkDispatcher : this.f35115h) {
            if (networkDispatcher != null) {
                networkDispatcher.quit();
            }
        }
    }
}
