package com.mopub.nativeads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.flurry.android.FlurryAgentListener;
import com.flurry.android.ads.FlurryAdNative;
import com.mopub.mobileads.FlurryAgentWrapper;
import com.mopub.nativeads.CustomEventNative;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FlurryCustomEventNative.class */
public class FlurryCustomEventNative extends BaseCustomEventNative {

    /* renamed from: f */
    public static final String f9078f = "FlurryCustomEventNative";
    public static final List<FlurryAdNative> sFlurryNativeAds = new ArrayList();

    /* renamed from: e */
    public FlurryAgentListener f9079e;

    /* renamed from: com.mopub.nativeads.FlurryCustomEventNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FlurryCustomEventNative$a.class */
    public class C3954a implements FlurryAgentListener {

        /* renamed from: a */
        public final /* synthetic */ Context f9080a;

        /* renamed from: b */
        public final /* synthetic */ boolean f9081b;

        /* renamed from: c */
        public final /* synthetic */ String f9082c;

        /* renamed from: d */
        public final /* synthetic */ String f9083d;

        /* renamed from: e */
        public final /* synthetic */ long f9084e;

        /* renamed from: f */
        public final /* synthetic */ CustomEventNative.CustomEventNativeListener f9085f;

        public C3954a(Context context, boolean z, String str, String str2, long j, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f9080a = context;
            this.f9081b = z;
            this.f9082c = str;
            this.f9083d = str2;
            this.f9084e = j;
            this.f9085f = customEventNativeListener;
        }

        @Override // com.flurry.android.FlurryAgentListener
        public void onSessionStarted() {
            FlurryCustomEventNative.this.m30179a(this.f9080a, this.f9081b, this.f9082c, this.f9083d, this.f9084e, this.f9085f);
        }
    }

    /* renamed from: a */
    public final void m30179a(Context context, boolean z, String str, String str2, long j, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        FlurryAdNative flurryAdNative = new FlurryAdNative(context, str);
        FlurryStaticNativeAd flurryStaticNativeAd = new FlurryStaticNativeAd(context, z, flurryAdNative, this.f9010b, this.f9011c, this.f9009a, customEventNativeListener);
        flurryStaticNativeAd.setTestGifUrl(str2);
        flurryStaticNativeAd.setNotifyClickDelay(j);
        sFlurryNativeAds.add(flurryAdNative);
        flurryStaticNativeAd.fetchAd();
    }

    /* renamed from: c */
    public final long m30177c(Map<String, String> map) {
        if (!map.containsKey("notifyClickDelay")) {
            return 0L;
        }
        String str = map.get("notifyClickDelay");
        if (!TextUtils.isEmpty(str)) {
            return Long.valueOf(str).longValue();
        }
        return 0L;
    }

    /* renamed from: d */
    public final String m30176d(Map<String, String> map) {
        String str = map.get(FlurryAgentWrapper.PARAM_AD_SPACE_NAME);
        String str2 = map.get("new_adSpaceName");
        if (!TextUtils.isEmpty(str2) && Build.VERSION.SDK_INT >= 21) {
            return str2;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        return null;
    }

    /* renamed from: e */
    public final String m30175e(Map<String, String> map) {
        String str = map.get(FlurryAgentWrapper.PARAM_API_KEY);
        String str2 = map.get("new_apiKey");
        if (!TextUtils.isEmpty(str2) && Build.VERSION.SDK_INT >= 21) {
            return str2;
        }
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        return null;
    }

    /* renamed from: f */
    public final String m30174f(Map<String, String> map) {
        if (!map.containsKey("testGifUrl")) {
            return null;
        }
        return map.get("testGifUrl");
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            aVar.m23470a(FlurryCustomEventNative.class.getName());
        }
        String e = m30175e(map2);
        String d = m30176d(map2);
        boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
        String f = m30174f(map2);
        long c = m30177c(map2);
        if (e == null || d == null) {
            C6219a.m23549a(f9078f, this.f9010b, this.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
        } else if (FlurryAgentWrapper.getInstance().isSessionActive() || this.f9079e != null) {
            m30179a(context, isValidUsingTestAdSource, d, f, c, customEventNativeListener);
        } else {
            this.f9079e = new C3954a(context, isValidUsingTestAdSource, d, f, c, customEventNativeListener);
            FlurryAgentWrapper.getInstance().startSession(context, e, this.f9079e);
        }
    }
}
