package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbbq;
@KeepForSdkWithMembers
@KeepName
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {
    @VisibleForTesting

    /* renamed from: e */
    public static final AdError f22901e = new AdError(0, "Could not instantiate custom event adapter", "com.google.android.gms.ads");

    /* renamed from: a */
    public View f22902a;
    @VisibleForTesting

    /* renamed from: b */
    public CustomEventBanner f22903b;
    @VisibleForTesting

    /* renamed from: c */
    public CustomEventInterstitial f22904c;
    @VisibleForTesting

    /* renamed from: d */
    public CustomEventNative f22905d;

    @VisibleForTesting
    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$a.class */
    public static final class C7218a implements CustomEventBannerListener {
        public C7218a(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$b.class */
    public static final class C7219b implements CustomEventNativeListener {
        public C7219b(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.android.gms.ads.mediation.customevent.CustomEventAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/mediation/customevent/CustomEventAdapter$c.class */
    public final class C7220c implements CustomEventInterstitialListener {
        public C7220c(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
        }
    }

    /* renamed from: a */
    public static <T> T m17923a(String str) {
        try {
            return (T) Class.forName(str).newInstance();
        } catch (Throwable th) {
            String message = th.getMessage();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(message).length());
            sb.append("Could not instantiate custom event adapter: ");
            sb.append(str);
            sb.append(". ");
            sb.append(message);
            zzbbq.m15852d(sb.toString());
            return null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f22902a;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onDestroy() {
        CustomEventBanner customEventBanner = this.f22903b;
        if (customEventBanner != null) {
            customEventBanner.onDestroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f22904c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onDestroy();
        }
        CustomEventNative customEventNative = this.f22905d;
        if (customEventNative != null) {
            customEventNative.onDestroy();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onPause() {
        CustomEventBanner customEventBanner = this.f22903b;
        if (customEventBanner != null) {
            customEventBanner.onPause();
        }
        CustomEventInterstitial customEventInterstitial = this.f22904c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onPause();
        }
        CustomEventNative customEventNative = this.f22905d;
        if (customEventNative != null) {
            customEventNative.onPause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public final void onResume() {
        CustomEventBanner customEventBanner = this.f22903b;
        if (customEventBanner != null) {
            customEventBanner.onResume();
        }
        CustomEventInterstitial customEventInterstitial = this.f22904c;
        if (customEventInterstitial != null) {
            customEventInterstitial.onResume();
        }
        CustomEventNative customEventNative = this.f22905d;
        if (customEventNative != null) {
            customEventNative.onResume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public final void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventBanner customEventBanner = (CustomEventBanner) m17923a(bundle.getString("class_name"));
        this.f22903b = customEventBanner;
        if (customEventBanner == null) {
            mediationBannerListener.mo16624a(this, f22901e);
        } else {
            this.f22903b.requestBannerAd(context, new C7218a(this, mediationBannerListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), adSize, mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        CustomEventInterstitial customEventInterstitial = (CustomEventInterstitial) m17923a(bundle.getString("class_name"));
        this.f22904c = customEventInterstitial;
        if (customEventInterstitial == null) {
            mediationInterstitialListener.mo16620a(this, f22901e);
        } else {
            this.f22904c.requestInterstitialAd(context, new C7220c(this, this, mediationInterstitialListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), mediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public final void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        CustomEventNative customEventNative = (CustomEventNative) m17923a(bundle.getString("class_name"));
        this.f22905d = customEventNative;
        if (customEventNative == null) {
            mediationNativeListener.mo16617a(this, f22901e);
        } else {
            this.f22905d.requestNativeAd(context, new C7219b(this, mediationNativeListener), bundle.getString(MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD), nativeMediationAdRequest, bundle2 == null ? null : bundle2.getBundle(bundle.getString("class_name")));
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f22904c.showInterstitial();
    }
}
