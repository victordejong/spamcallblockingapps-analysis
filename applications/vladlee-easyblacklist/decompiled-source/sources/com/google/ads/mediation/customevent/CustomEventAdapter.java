package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.internal.ads.zzayu;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter.class */
public final class CustomEventAdapter implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters> {

    /* renamed from: a */
    private View f5802a;

    /* renamed from: b */
    private CustomEventBanner f5803b;

    /* renamed from: c */
    private CustomEventInterstitial f5804c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$a.class */
    public final class C1535a implements CustomEventInterstitialListener {

        /* renamed from: a */
        private final CustomEventAdapter f5805a;

        /* renamed from: b */
        private final MediationInterstitialListener f5806b;

        public C1535a(CustomEventAdapter customEventAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.f5805a = customEventAdapter;
            this.f5806b = mediationInterstitialListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            zzayu.zzea("Custom event adapter called onDismissScreen.");
            this.f5806b.onDismissScreen(this.f5805a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f5806b.onFailedToReceiveAd(this.f5805a, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            zzayu.zzea("Custom event adapter called onLeaveApplication.");
            this.f5806b.onLeaveApplication(this.f5805a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            zzayu.zzea("Custom event adapter called onPresentScreen.");
            this.f5806b.onPresentScreen(this.f5805a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventInterstitialListener
        public final void onReceivedAd() {
            zzayu.zzea("Custom event adapter called onReceivedAd.");
            this.f5806b.onReceivedAd(CustomEventAdapter.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.ads.mediation.customevent.CustomEventAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/customevent/CustomEventAdapter$b.class */
    public static final class C1536b implements CustomEventBannerListener {

        /* renamed from: a */
        private final CustomEventAdapter f5808a;

        /* renamed from: b */
        private final MediationBannerListener f5809b;

        public C1536b(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
            this.f5808a = customEventAdapter;
            this.f5809b = mediationBannerListener;
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onClick() {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f5809b.onClick(this.f5808a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onDismissScreen() {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f5809b.onDismissScreen(this.f5808a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onFailedToReceiveAd() {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f5809b.onFailedToReceiveAd(this.f5808a, AdRequest.ErrorCode.NO_FILL);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onLeaveApplication() {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f5809b.onLeaveApplication(this.f5808a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventListener
        public final void onPresentScreen() {
            zzayu.zzea("Custom event adapter called onFailedToReceiveAd.");
            this.f5809b.onPresentScreen(this.f5808a);
        }

        @Override // com.google.ads.mediation.customevent.CustomEventBannerListener
        public final void onReceivedAd(View view) {
            zzayu.zzea("Custom event adapter called onReceivedAd.");
            this.f5808a.f5802a = view;
            this.f5809b.onReceivedAd(this.f5808a);
        }
    }

    /* renamed from: a */
    private static <T> T m6106a(String str) {
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

    @Override // com.google.ads.mediation.MediationAdapter
    public final void destroy() {
        CustomEventBanner customEventBanner = this.f5803b;
        if (customEventBanner != null) {
            customEventBanner.destroy();
        }
        CustomEventInterstitial customEventInterstitial = this.f5804c;
        if (customEventInterstitial != null) {
            customEventInterstitial.destroy();
        }
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventExtras> getAdditionalParametersType() {
        return CustomEventExtras.class;
    }

    @Override // com.google.ads.mediation.MediationBannerAdapter
    public final View getBannerView() {
        return this.f5802a;
    }

    @Override // com.google.ads.mediation.MediationAdapter
    public final Class<CustomEventServerParameters> getServerParametersType() {
        return CustomEventServerParameters.class;
    }

    public final void requestBannerAd(MediationBannerListener mediationBannerListener, Activity activity, CustomEventServerParameters customEventServerParameters, AdSize adSize, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.f5803b = (CustomEventBanner) m6106a(customEventServerParameters.className);
        if (this.f5803b == null) {
            mediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.f5803b.requestBannerAd(new C1536b(this, mediationBannerListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, adSize, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    public final void requestInterstitialAd(MediationInterstitialListener mediationInterstitialListener, Activity activity, CustomEventServerParameters customEventServerParameters, MediationAdRequest mediationAdRequest, CustomEventExtras customEventExtras) {
        this.f5804c = (CustomEventInterstitial) m6106a(customEventServerParameters.className);
        if (this.f5804c == null) {
            mediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
        } else {
            this.f5804c.requestInterstitialAd(new C1535a(this, mediationInterstitialListener), activity, customEventServerParameters.label, customEventServerParameters.parameter, mediationAdRequest, customEventExtras == null ? null : customEventExtras.getExtra(customEventServerParameters.label));
        }
    }

    @Override // com.google.ads.mediation.MediationInterstitialAdapter
    public final void showInterstitial() {
        this.f5804c.showInterstitial();
    }
}
