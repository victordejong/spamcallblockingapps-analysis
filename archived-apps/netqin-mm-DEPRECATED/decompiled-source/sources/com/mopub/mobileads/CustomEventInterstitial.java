package com.mopub.mobileads;

import android.content.Context;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitial.class */
public abstract class CustomEventInterstitial implements Interstitial {

    /* renamed from: a */
    public boolean f34084a = true;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener.class */
    public interface CustomEventInterstitialListener {
        void onInterstitialClicked();

        void onInterstitialDismissed();

        void onInterstitialFailed(MoPubErrorCode moPubErrorCode);

        void onInterstitialLoaded();

        void onInterstitialShown();
    }

    /* renamed from: a */
    public boolean m4402a() {
        return this.f34084a;
    }

    public abstract void loadInterstitial(Context context, CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2);

    public abstract void onInvalidate();

    public abstract void showInterstitial();
}
