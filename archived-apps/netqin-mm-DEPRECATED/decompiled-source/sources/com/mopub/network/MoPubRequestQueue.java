package com.mopub.network;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Network;
import com.mopub.volley.Request;
import com.mopub.volley.RequestQueue;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue.class */
public class MoPubRequestQueue extends RequestQueue {

    /* renamed from: l */
    public final Map<Request<?>, C8987c> f35028l = new HashMap(10);

    /* renamed from: com.mopub.network.MoPubRequestQueue$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$a.class */
    public class C8985a implements RequestQueue.RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Object f35029a;

        public C8985a(MoPubRequestQueue moPubRequestQueue, Object obj) {
            this.f35029a = obj;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.getTag() == this.f35029a;
        }
    }

    /* renamed from: com.mopub.network.MoPubRequestQueue$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$b.class */
    public class C8986b implements RequestQueue.RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Request f35030a;

        public C8986b(MoPubRequestQueue moPubRequestQueue, Request request) {
            this.f35030a = request;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return this.f35030a == request;
        }
    }

    /* renamed from: com.mopub.network.MoPubRequestQueue$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c.class */
    public class C8987c {

        /* renamed from: a */
        public final int f35031a;

        /* renamed from: b */
        public final Handler f35032b;

        /* renamed from: c */
        public final Runnable f35033c;

        /* renamed from: com.mopub.network.MoPubRequestQueue$c$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c$a.class */
        public class RunnableC8988a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Request f35035a;

            public RunnableC8988a(MoPubRequestQueue moPubRequestQueue, Request request) {
                this.f35035a = request;
            }

            @Override // java.lang.Runnable
            public void run() {
                MoPubRequestQueue.this.f35028l.remove(this.f35035a);
                MoPubRequestQueue.this.add(this.f35035a);
            }
        }

        public C8987c(MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
            this(request, i, new Handler());
        }

        @VisibleForTesting
        public C8987c(Request<?> request, int i, Handler handler) {
            this.f35031a = i;
            this.f35032b = handler;
            this.f35033c = new RunnableC8988a(MoPubRequestQueue.this, request);
        }

        /* renamed from: a */
        public void m3789a() {
            this.f35032b.removeCallbacks(this.f35033c);
        }

        /* renamed from: b */
        public void m3788b() {
            this.f35032b.postDelayed(this.f35033c, this.f35031a);
        }
    }

    public MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3790a(Request<?> request, C8987c cVar) {
        Preconditions.checkNotNull(cVar);
        if (this.f35028l.containsKey(request)) {
            cancel(request);
        }
        cVar.m3788b();
        this.f35028l.put(request, cVar);
    }

    public void addDelayedRequest(Request<?> request, int i) {
        Preconditions.checkNotNull(request);
        m3790a(request, new C8987c(this, request, i));
    }

    public void cancel(Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll((RequestQueue.RequestFilter) new C8986b(this, request));
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(RequestQueue.RequestFilter requestFilter) {
        Preconditions.checkNotNull(requestFilter);
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, C8987c>> it = this.f35028l.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, C8987c> next = it.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().m3789a();
                it.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(Object obj) {
        Preconditions.checkNotNull(obj);
        super.cancelAll(obj);
        cancelAll((RequestQueue.RequestFilter) new C8985a(this, obj));
    }
}
