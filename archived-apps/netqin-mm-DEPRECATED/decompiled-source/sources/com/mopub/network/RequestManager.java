package com.mopub.network;

import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.RequestManager.RequestFactory;
import com.mopub.volley.Request;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestManager.class */
public abstract class RequestManager<T extends RequestFactory> {

    /* renamed from: a */
    public Request<?> f35051a;

    /* renamed from: b */
    public BackoffPolicy f35052b;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/RequestManager$RequestFactory.class */
    public interface RequestFactory {
    }

    public RequestManager(Looper looper) {
        new Handler(looper);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m3777a() {
        this.f35051a = null;
        this.f35052b = null;
    }

    /* renamed from: b */
    public abstract Request<?> m3776b();

    @VisibleForTesting
    /* renamed from: c */
    public void m3775c() {
        this.f35051a = m3776b();
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (requestQueue == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubRequest queue is null. Clearing request.");
            m3777a();
        } else if (this.f35052b.getRetryCount() == 0) {
            requestQueue.add(this.f35051a);
        } else {
            requestQueue.addDelayedRequest(this.f35051a, this.f35052b.getBackoffMs());
        }
    }

    public void cancelRequest() {
        Request<?> request;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue();
        if (!(requestQueue == null || (request = this.f35051a) == null)) {
            requestQueue.cancel(request);
        }
        m3777a();
    }

    public boolean isAtCapacity() {
        return this.f35051a != null;
    }

    public void makeRequest(T t, BackoffPolicy backoffPolicy) {
        Preconditions.checkNotNull(t);
        Preconditions.checkNotNull(backoffPolicy);
        cancelRequest();
        this.f35052b = backoffPolicy;
        m3775c();
    }
}
