package com.mopub.network;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubError;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.MultiAdRequest;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader.class */
public class AdLoader {

    /* renamed from: b */
    public final WeakReference<Context> f34972b;

    /* renamed from: c */
    public final Listener f34973c;

    /* renamed from: d */
    public MultiAdRequest f34974d;

    /* renamed from: e */
    public MultiAdResponse f34975e;

    /* renamed from: h */
    public ContentDownloadAnalytics f34978h;

    /* renamed from: k */
    public boolean f34981k;

    /* renamed from: f */
    public final Object f34976f = new Object();

    /* renamed from: g */
    public AdResponse f34977g = null;

    /* renamed from: l */
    public Handler f34982l = new Handler();

    /* renamed from: a */
    public final MultiAdRequest.Listener f34971a = new C8979a();

    /* renamed from: i */
    public volatile boolean f34979i = false;

    /* renamed from: j */
    public volatile boolean f34980j = false;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$Listener.class */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    /* renamed from: com.mopub.network.AdLoader$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$a.class */
    public class C8979a implements MultiAdRequest.Listener {
        public C8979a() {
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            MoPubLog.log(MoPubLog.AdLogEvent.RESPONSE_RECEIVED, volleyError.getMessage());
            AdLoader.this.f34980j = true;
            AdLoader.this.f34979i = false;
            AdLoader.this.m3840a(volleyError);
        }

        @Override // com.mopub.network.MultiAdRequest.Listener
        public void onSuccessResponse(MultiAdResponse multiAdResponse) {
            synchronized (AdLoader.this.f34976f) {
                AdLoader.this.f34979i = false;
                AdLoader.this.f34975e = multiAdResponse;
                if (AdLoader.this.f34975e.hasNext()) {
                    AdLoader.this.m3842a(AdLoader.this.f34975e.next());
                }
            }
        }
    }

    /* renamed from: com.mopub.network.AdLoader$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$b.class */
    public class RunnableC8980b implements Runnable {
        public RunnableC8980b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3840a(new MoPubNetworkError(MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$c.class */
    public class RunnableC8981c implements Runnable {
        public RunnableC8981c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3840a(new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
        }
    }

    /* renamed from: com.mopub.network.AdLoader$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$d.class */
    public class RunnableC8982d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdResponse f34986a;

        public RunnableC8982d(AdResponse adResponse) {
            this.f34986a = adResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3842a(this.f34986a);
        }
    }

    /* renamed from: com.mopub.network.AdLoader$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdLoader$e.class */
    public class RunnableC8983e implements Runnable {
        public RunnableC8983e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdLoader.this.m3840a(new MoPubNetworkError(MoPubNetworkError.Reason.NO_FILL));
        }
    }

    public AdLoader(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        Preconditions.checkArgument(!TextUtils.isEmpty(str));
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(listener);
        this.f34972b = new WeakReference<>(context);
        this.f34973c = listener;
        this.f34974d = new MultiAdRequest(str, adFormat, str2, context, this.f34971a);
    }

    /* renamed from: a */
    public final Request<?> m3841a(MultiAdRequest multiAdRequest, Context context) {
        Preconditions.checkNotNull(multiAdRequest);
        if (context == null) {
            return null;
        }
        MoPubLog.log(MoPubLog.AdLogEvent.REQUESTED, multiAdRequest.getUrl(), multiAdRequest.getBody() != null ? new String(multiAdRequest.getBody()) : "<no body>");
        this.f34979i = true;
        MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
        this.f34974d = multiAdRequest;
        requestQueue.add(multiAdRequest);
        return multiAdRequest;
    }

    /* renamed from: a */
    public final void m3847a(MoPubError moPubError) {
        if (moPubError == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Must provide error code to report creative download error");
            return;
        }
        Context context = this.f34972b.get();
        if (context == null || this.f34977g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send creative mFailed analytics.");
            return;
        }
        ContentDownloadAnalytics contentDownloadAnalytics = this.f34978h;
        if (contentDownloadAnalytics != null) {
            contentDownloadAnalytics.m3808a(context, moPubError);
            this.f34978h.m3804b(context, moPubError);
        }
    }

    /* renamed from: a */
    public final void m3842a(AdResponse adResponse) {
        Preconditions.checkNotNull(adResponse);
        Context context = this.f34972b.get();
        ContentDownloadAnalytics contentDownloadAnalytics = new ContentDownloadAnalytics(adResponse);
        this.f34978h = contentDownloadAnalytics;
        contentDownloadAnalytics.m3805b(context);
        Listener listener = this.f34973c;
        if (listener != null) {
            this.f34977g = adResponse;
            listener.onSuccess(adResponse);
        }
    }

    /* renamed from: a */
    public final void m3840a(VolleyError volleyError) {
        Preconditions.checkNotNull(volleyError);
        this.f34977g = null;
        Listener listener = this.f34973c;
        if (listener == null) {
            return;
        }
        if (volleyError instanceof MoPubNetworkError) {
            listener.onErrorResponse(volleyError);
        } else {
            listener.onErrorResponse(new MoPubNetworkError(volleyError.getMessage(), volleyError.getCause(), MoPubNetworkError.Reason.UNSPECIFIED));
        }
    }

    public void creativeDownloadSuccess() {
        this.f34981k = true;
        if (this.f34978h == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Response analytics should not be null here");
            return;
        }
        Context context = this.f34972b.get();
        if (context == null || this.f34977g == null) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "Cannot send 'x-after-load-url' analytics.");
            return;
        }
        this.f34978h.m3808a(context, (MoPubError) null);
        this.f34978h.m3809a(context);
    }

    public boolean hasMoreAds() {
        boolean z = false;
        if (this.f34980j || this.f34981k) {
            return false;
        }
        MultiAdResponse multiAdResponse = this.f34975e;
        if (multiAdResponse == null || multiAdResponse.hasNext() || !multiAdResponse.m3785a()) {
            z = true;
        }
        return z;
    }

    public boolean isFailed() {
        return this.f34980j;
    }

    public boolean isRunning() {
        return this.f34979i;
    }

    public Request<?> loadNextAd(MoPubError moPubError) {
        if (this.f34979i) {
            return this.f34974d;
        }
        if (this.f34980j) {
            this.f34982l.post(new RunnableC8980b());
            return null;
        }
        synchronized (this.f34976f) {
            if (this.f34975e != null) {
                if (moPubError != null) {
                    m3847a(moPubError);
                }
                if (this.f34975e.hasNext()) {
                    this.f34982l.post(new RunnableC8982d(this.f34975e.next()));
                    return this.f34974d;
                } else if (!this.f34975e.m3785a()) {
                    MultiAdRequest multiAdRequest = new MultiAdRequest(this.f34975e.getFailURL(), this.f34974d.f35037s, this.f34974d.f35038t, this.f34972b.get(), this.f34971a);
                    this.f34974d = multiAdRequest;
                    return m3841a(multiAdRequest, this.f34972b.get());
                } else {
                    this.f34982l.post(new RunnableC8983e());
                    return null;
                }
            } else if (RequestRateTracker.getInstance().m3770b(this.f34974d.f35038t)) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, this.f34974d.f35038t + " is blocked by request rate limiting.");
                this.f34980j = true;
                this.f34982l.post(new RunnableC8981c());
                return null;
            } else {
                return m3841a(this.f34974d, this.f34972b.get());
            }
        }
    }
}
