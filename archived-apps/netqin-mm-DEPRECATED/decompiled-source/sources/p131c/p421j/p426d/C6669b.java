package p131c.p421j.p426d;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.factories.CustomEventNativeFactory;
import com.mopub.network.AdResponse;
import java.util.Map;
/* renamed from: c.j.d.b */
/* loaded from: classes2-dex2jar.jar:c/j/d/b.class */
public final class C6669b {

    /* renamed from: c */
    public CustomEventNative f20584c;

    /* renamed from: d */
    public CustomEventNative.CustomEventNativeListener f20585d;

    /* renamed from: e */
    public volatile boolean f20586e = false;

    /* renamed from: a */
    public final Handler f20582a = new Handler();

    /* renamed from: b */
    public final Runnable f20583b = new RunnableC6670a();

    /* renamed from: c.j.d.b$a */
    /* loaded from: classes2-dex2jar.jar:c/j/d/b$a.class */
    public class RunnableC6670a implements Runnable {
        public RunnableC6670a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C6669b.this.f20586e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "CustomEventNativeAdapter() failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
                C6669b.this.m20103c();
                C6669b.this.f20585d.onNativeAdFailed(NativeErrorCode.NETWORK_TIMEOUT);
            }
        }
    }

    /* renamed from: c.j.d.b$b */
    /* loaded from: classes2-dex2jar.jar:c/j/d/b$b.class */
    public class C6671b implements CustomEventNative.CustomEventNativeListener {
        public C6671b() {
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            if (!C6669b.this.f20586e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "onNativeAdFailed with code " + nativeErrorCode.getIntCode() + " and message " + nativeErrorCode);
                C6669b.this.m20105b();
                C6669b.this.f20585d.onNativeAdFailed(nativeErrorCode);
            }
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
            if (!C6669b.this.f20586e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onNativeAdLoaded");
                C6669b.this.m20105b();
                C6669b.this.f20585d.onNativeAdLoaded(baseNativeAd);
            }
        }
    }

    public C6669b(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        Preconditions.checkNotNull(customEventNativeListener);
        this.f20585d = customEventNativeListener;
    }

    /* renamed from: a */
    public final CustomEventNative.CustomEventNativeListener m20107a() {
        return new C6671b();
    }

    /* renamed from: b */
    public final void m20105b() {
        synchronized (this) {
            if (!this.f20586e) {
                this.f20586e = true;
                this.f20582a.removeCallbacks(this.f20583b);
                this.f20584c = null;
            }
        }
    }

    /* renamed from: c */
    public void m20103c() {
        try {
            if (this.f20584c != null) {
                this.f20584c.mo3993a();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
        }
        m20105b();
    }

    public void loadNativeAd(Context context, Map<String, Object> map, AdResponse adResponse) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(adResponse);
        String customEventClassName = adResponse.getCustomEventClassName();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, adResponse.getDspCreativeId());
        try {
            this.f20584c = CustomEventNativeFactory.create(customEventClassName);
            if (adResponse.hasJson()) {
                map.put(DataKeys.JSON_BODY_KEY, adResponse.getJsonBody());
            }
            map.put(DataKeys.CLICK_TRACKING_URL_KEY, adResponse.getClickTrackingUrl());
            try {
                this.f20584c.mo3992a(context, m20107a(), map, adResponse.getServerExtras());
                this.f20582a.postDelayed(this.f20583b, adResponse.getAdTimeoutMillis(30000).intValue());
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
                this.f20585d.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
            }
        } catch (Exception e2) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
            this.f20585d.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
        }
    }
}
