package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.internal.ads.zzayu;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: a */
    private View f6059a;

    /* renamed from: b */
    private CustomEventBanner f6060b;

    /* renamed from: c */
    private CustomEventInterstitial f6061c;

    /* renamed from: d */
    private CustomEventNative f6062d;

    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a.class */
    static final class C1555a implements CustomEventBannerListener {

        /* renamed from: a */
        private final CustomEventAdapter f6063a;

        /* renamed from: b */
        private final MediationBannerListener f6064b;

        public C1555a(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.f6063a = customEventAdapter;
            this.f6064b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzayu.zzea("Custom event adapter called onAdClicked.");
            this.f6064b.onAdClicked(this.f6063a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzayu.zzea("Custom event adapter called onAdClosed.");
            this.f6064b.onAdClosed(this.f6063a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzayu.zzea("Custom event adapter called onAdFailedToLoad.");
            this.f6064b.onAdFailedToLoad(this.f6063a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzayu.zzea("Custom event adapter called onAdLeftApplication.");
            this.f6064b.onAdLeftApplication(this.f6063a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventBannerListener
        public final void onAdLoaded(View view) {
            zzayu.zzea("Custom event adapter called onAdLoaded.");
            this.f6063a.f6059a = view;
            this.f6064b.onAdLoaded(this.f6063a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzayu.zzea("Custom event adapter called onAdOpened.");
            this.f6064b.onAdOpened(this.f6063a);
        }
    }

    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b.class */
    static final class C1556b implements CustomEventNativeListener {

        /* renamed from: a */
        private final CustomEventAdapter f6065a;

        /* renamed from: b */
        private final MediationNativeListener f6066b;

        public C1556b(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
            this.f6065a = customEventAdapter;
            this.f6066b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzayu.zzea("Custom event adapter called onAdClicked.");
            this.f6066b.onAdClicked(this.f6065a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzayu.zzea("Custom event adapter called onAdClosed.");
            this.f6066b.onAdClosed(this.f6065a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzayu.zzea("Custom event adapter called onAdFailedToLoad.");
            this.f6066b.onAdFailedToLoad(this.f6065a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdImpression() {
            zzayu.zzea("Custom event adapter called onAdImpression.");
            this.f6066b.onAdImpression(this.f6065a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzayu.zzea("Custom event adapter called onAdLeftApplication.");
            this.f6066b.onAdLeftApplication(this.f6065a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(NativeAdMapper nativeAdMapper) {
            zzayu.zzea("Custom event adapter called onAdLoaded.");
            this.f6066b.onAdLoaded(this.f6065a, nativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventNativeListener
        public final void onAdLoaded(UnifiedNativeAdMapper unifiedNativeAdMapper) {
            zzayu.zzea("Custom event adapter called onAdLoaded.");
            this.f6066b.onAdLoaded(this.f6065a, unifiedNativeAdMapper);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzayu.zzea("Custom event adapter called onAdOpened.");
            this.f6066b.onAdOpened(this.f6065a);
        }
    }

    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$c.class */
    final class C1557c implements CustomEventInterstitialListener {

        /* renamed from: a */
        private final CustomEventAdapter f6067a;

        /* renamed from: b */
        private final MediationInterstitialListener f6068b;

        public C1557c(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.f6067a = customEventAdapter;
            this.f6068b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClicked() {
            zzayu.zzea("Custom event adapter called onAdClicked.");
            this.f6068b.onAdClicked(this.f6067a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdClosed() {
            zzayu.zzea("Custom event adapter called onAdClosed.");
            this.f6068b.onAdClosed(this.f6067a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdFailedToLoad(int i) {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f6068b.onAdFailedToLoad(this.f6067a, i);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdLeftApplication() {
            zzayu.zzea("Custom event adapter called onAdLeftApplication.");
            this.f6068b.onAdLeftApplication(this.f6067a);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onAdLoaded() {
            zzayu.zzea("Custom event adapter called onReceivedAd.");
            this.f6068b.onAdLoaded(CustomEventAdapter.this);
        }

        @Override // com.google.android.gms.ads.mediation.customevent.CustomEventListener
        public final void onAdOpened() {
            zzayu.zzea("Custom event adapter called onAdOpened.");
            this.f6068b.onAdOpened(this.f6067a);
        }
    }

    /* renamed from: a */
    private static <T> T m6028a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzayu.zzez(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f6059a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.f6060b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f6061c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.f6062d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.f6060b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.f6061c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.f6062d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.f6060b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.f6061c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.f6062d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f6060b = (CustomEventBanner) m6028a(bundle.getString("class_name"));
        if (this.f6060b == null) {
            mediationBannerListener.onAdFailedToLoad(this, 0);
        } else {
            this.f6060b.requestBannerAd(context, new C1555a(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f6061c = (CustomEventInterstitial) m6028a(bundle.getString("class_name"));
        if (this.f6061c == null) {
            mediationInterstitialListener.onAdFailedToLoad(this, 0);
        } else {
            this.f6061c.requestInterstitialAd(context, new C1557c(this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.f6062d = (CustomEventNative) m6028a(bundle.getString("class_name"));
        if (this.f6062d == null) {
            mediationNativeListener.onAdFailedToLoad(this, 0);
        } else {
            this.f6062d.requestNativeAd(context, new C1556b(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f6061c.showInterstitial();
    }
}
