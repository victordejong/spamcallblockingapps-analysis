package p081h.p430l.p435d;

import android.content.Context;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
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
/* renamed from: h.l.d.b */
/* loaded from: classes2-dex2jar.jar:h/l/d/b.class */
public final class C10726b {
    @Nullable

    /* renamed from: c */
    public CustomEventNative f24447c;
    @NonNull

    /* renamed from: d */
    public CustomEventNative.CustomEventNativeListener f24448d;

    /* renamed from: e */
    public volatile boolean f24449e = false;
    @NonNull

    /* renamed from: a */
    public final Handler f24445a = new Handler();
    @NonNull

    /* renamed from: b */
    public final Runnable f24446b = new RunnableC10727a();

    /* renamed from: h.l.d.b$a */
    /* loaded from: classes2-dex2jar.jar:h/l/d/b$a.class */
    public class RunnableC10727a implements Runnable {
        public RunnableC10727a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C10726b.this.f24449e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "CustomEventNativeAdapter() failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
                C10726b.this.m10803c();
                C10726b.this.f24448d.onNativeAdFailed(NativeErrorCode.NETWORK_TIMEOUT);
            }
        }
    }

    /* renamed from: h.l.d.b$b */
    /* loaded from: classes2-dex2jar.jar:h/l/d/b$b.class */
    public class C10728b implements CustomEventNative.CustomEventNativeListener {
        public C10728b() {
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            if (!C10726b.this.f24449e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "onNativeAdFailed with code " + nativeErrorCode.getIntCode() + " and message " + nativeErrorCode);
                C10726b.this.m10805b();
                C10726b.this.f24448d.onNativeAdFailed(nativeErrorCode);
            }
        }

        @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
        public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
            if (!C10726b.this.f24449e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onNativeAdLoaded");
                C10726b.this.m10805b();
                C10726b.this.f24448d.onNativeAdLoaded(baseNativeAd);
            }
        }
    }

    public C10726b(@NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        Preconditions.checkNotNull(customEventNativeListener);
        this.f24448d = customEventNativeListener;
    }

    @NonNull
    /* renamed from: a */
    public final CustomEventNative.CustomEventNativeListener m10807a() {
        return new C10728b();
    }

    /* renamed from: b */
    public final void m10805b() {
        synchronized (this) {
            if (!this.f24449e) {
                this.f24449e = true;
                this.f24445a.removeCallbacks(this.f24446b);
                this.f24447c = null;
            }
        }
    }

    /* renamed from: c */
    public void m10803c() {
        try {
            if (this.f24447c != null) {
                this.f24447c.onInvalidate();
            }
        } catch (Exception e) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.toString());
        }
        m10805b();
    }

    public void loadNativeAd(@NonNull Context context, @NonNull Map<String, Object> map, @NonNull AdResponse adResponse) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(adResponse);
        String customEventClassName = adResponse.getCustomEventClassName();
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, adResponse.getDspCreativeId());
        try {
            this.f24447c = CustomEventNativeFactory.create(customEventClassName);
            if (adResponse.hasJson()) {
                map.put(DataKeys.JSON_BODY_KEY, adResponse.getJsonBody());
            }
            map.put(DataKeys.CLICK_TRACKING_URL_KEY, adResponse.getClickTrackingUrl());
            try {
                this.f24447c.loadNativeAd(context, m10807a(), map, adResponse.getServerExtras());
                this.f24445a.postDelayed(this.f24446b, adResponse.getAdTimeoutMillis(30000).intValue());
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
                this.f24448d.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
            }
        } catch (Exception e2) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "loadNativeAd() failed with code " + MoPubErrorCode.ADAPTER_NOT_FOUND.getIntCode() + " and message " + MoPubErrorCode.ADAPTER_NOT_FOUND);
            this.f24448d.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
        }
    }
}
