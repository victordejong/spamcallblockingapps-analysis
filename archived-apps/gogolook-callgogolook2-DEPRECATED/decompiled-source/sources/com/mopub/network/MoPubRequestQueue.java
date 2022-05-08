package com.mopub.network;

import android.os.Handler;
import androidx.annotation.NonNull;
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
    @NonNull

    /* renamed from: l */
    public final Map<Request<?>, C4034c> f9432l = new HashMap(10);

    /* renamed from: com.mopub.network.MoPubRequestQueue$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$a.class */
    public class C4032a implements RequestQueue.RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Object f9433a;

        public C4032a(MoPubRequestQueue moPubRequestQueue, Object obj) {
            this.f9433a = obj;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return request.getTag() == this.f9433a;
        }
    }

    /* renamed from: com.mopub.network.MoPubRequestQueue$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$b.class */
    public class C4033b implements RequestQueue.RequestFilter {

        /* renamed from: a */
        public final /* synthetic */ Request f9434a;

        public C4033b(MoPubRequestQueue moPubRequestQueue, Request request) {
            this.f9434a = request;
        }

        @Override // com.mopub.volley.RequestQueue.RequestFilter
        public boolean apply(Request<?> request) {
            return this.f9434a == request;
        }
    }

    /* renamed from: com.mopub.network.MoPubRequestQueue$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c.class */
    public class C4034c {

        /* renamed from: a */
        public final int f9435a;
        @NonNull

        /* renamed from: b */
        public final Handler f9436b;
        @NonNull

        /* renamed from: c */
        public final Runnable f9437c;

        /* renamed from: com.mopub.network.MoPubRequestQueue$c$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/network/MoPubRequestQueue$c$a.class */
        public class RunnableC4035a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Request f9439a;

            public RunnableC4035a(MoPubRequestQueue moPubRequestQueue, Request request) {
                this.f9439a = request;
            }

            @Override // java.lang.Runnable
            public void run() {
                MoPubRequestQueue.this.f9432l.remove(this.f9439a);
                MoPubRequestQueue.this.add(this.f9439a);
            }
        }

        public C4034c(@NonNull MoPubRequestQueue moPubRequestQueue, Request<?> request, int i) {
            this(request, i, new Handler());
        }

        @VisibleForTesting
        public C4034c(@NonNull Request<?> request, int i, @NonNull Handler handler) {
            this.f9435a = i;
            this.f9436b = handler;
            this.f9437c = new RunnableC4035a(MoPubRequestQueue.this, request);
        }

        /* renamed from: a */
        public void m29991a() {
            this.f9436b.removeCallbacks(this.f9437c);
        }

        /* renamed from: b */
        public void m29990b() {
            this.f9436b.postDelayed(this.f9437c, this.f9435a);
        }
    }

    public MoPubRequestQueue(Cache cache, Network network) {
        super(cache, network);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m29992a(@NonNull Request<?> request, @NonNull C4034c cVar) {
        Preconditions.checkNotNull(cVar);
        if (this.f9432l.containsKey(request)) {
            cancel(request);
        }
        cVar.m29990b();
        this.f9432l.put(request, cVar);
    }

    public void addDelayedRequest(@NonNull Request<?> request, int i) {
        Preconditions.checkNotNull(request);
        m29992a(request, new C4034c(this, request, i));
    }

    public void cancel(@NonNull Request<?> request) {
        Preconditions.checkNotNull(request);
        cancelAll((RequestQueue.RequestFilter) new C4033b(this, request));
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(@NonNull RequestQueue.RequestFilter requestFilter) {
        Preconditions.checkNotNull(requestFilter);
        super.cancelAll(requestFilter);
        Iterator<Map.Entry<Request<?>, C4034c>> it = this.f9432l.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<Request<?>, C4034c> next = it.next();
            if (requestFilter.apply(next.getKey())) {
                next.getKey().cancel();
                next.getValue().m29991a();
                it.remove();
            }
        }
    }

    @Override // com.mopub.volley.RequestQueue
    public void cancelAll(@NonNull Object obj) {
        Preconditions.checkNotNull(obj);
        super.cancelAll(obj);
        cancelAll((RequestQueue.RequestFilter) new C4032a(this, obj));
    }
}
