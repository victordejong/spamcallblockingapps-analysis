package com.google.ads.mediation;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.view.View;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAdViewHolder;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeAppInstallAdMapper;
import com.google.android.gms.ads.mediation.NativeContentAdMapper;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import com.google.android.gms.ads.mediation.zza;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdListener;
import com.google.android.gms.internal.ads.zzayk;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzbfy;
import com.google.android.gms.internal.ads.zzty;
import com.google.android.gms.internal.ads.zzve;
import com.google.android.gms.internal.ads.zzxb;
import java.util.Date;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter.class */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, OnImmersiveModeUpdatedListener, zza, MediationRewardedVideoAdAdapter, zzbfy {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    private AdView zzlq;
    private InterstitialAd zzlr;
    private AdLoader zzls;
    private Context zzlt;
    private InterstitialAd zzlu;
    private MediationRewardedVideoAdListener zzlv;
    private final RewardedVideoAdListener zzlw = new C1533a(this);

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$a.class */
    static final class C1527a extends NativeAppInstallAdMapper {

        /* renamed from: e */
        private final NativeAppInstallAd f5786e;

        public C1527a(NativeAppInstallAd nativeAppInstallAd) {
            this.f5786e = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.getHeadline().toString());
            setImages(nativeAppInstallAd.getImages());
            setBody(nativeAppInstallAd.getBody().toString());
            setIcon(nativeAppInstallAd.getIcon());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            if (nativeAppInstallAd.getStarRating() != null) {
                setStarRating(nativeAppInstallAd.getStarRating().doubleValue());
            }
            if (nativeAppInstallAd.getStore() != null) {
                setStore(nativeAppInstallAd.getStore().toString());
            }
            if (nativeAppInstallAd.getPrice() != null) {
                setPrice(nativeAppInstallAd.getPrice().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeAppInstallAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f5786e);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbkd.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f5786e);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$b.class */
    static final class C1528b extends UnifiedNativeAdMapper {

        /* renamed from: a */
        private final UnifiedNativeAd f5787a;

        public C1528b(UnifiedNativeAd unifiedNativeAd) {
            this.f5787a = unifiedNativeAd;
            setHeadline(unifiedNativeAd.getHeadline());
            setImages(unifiedNativeAd.getImages());
            setBody(unifiedNativeAd.getBody());
            setIcon(unifiedNativeAd.getIcon());
            setCallToAction(unifiedNativeAd.getCallToAction());
            setAdvertiser(unifiedNativeAd.getAdvertiser());
            setStarRating(unifiedNativeAd.getStarRating());
            setStore(unifiedNativeAd.getStore());
            setPrice(unifiedNativeAd.getPrice());
            zzn(unifiedNativeAd.zzjo());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(unifiedNativeAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public final void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof UnifiedNativeAdView) {
                ((UnifiedNativeAdView) view).setNativeAd(this.f5787a);
                return;
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbkd.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f5787a);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$c.class */
    static final class C1529c extends NativeContentAdMapper {

        /* renamed from: e */
        private final NativeContentAd f5788e;

        public C1529c(NativeContentAd nativeContentAd) {
            this.f5788e = nativeContentAd;
            setHeadline(nativeContentAd.getHeadline().toString());
            setImages(nativeContentAd.getImages());
            setBody(nativeContentAd.getBody().toString());
            if (nativeContentAd.getLogo() != null) {
                setLogo(nativeContentAd.getLogo());
            }
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeContentAd.getVideoController());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f5788e);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.zzbkd.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.setNativeAd(this.f5788e);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$d.class */
    static final class C1530d extends AdListener implements zzty {

        /* renamed from: a */
        private final AbstractAdViewAdapter f5789a;

        /* renamed from: b */
        private final MediationInterstitialListener f5790b;

        public C1530d(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.f5789a = abstractAdViewAdapter;
            this.f5790b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzty
        public final void onAdClicked() {
            this.f5790b.onAdClicked(this.f5789a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f5790b.onAdClosed(this.f5789a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f5790b.onAdFailedToLoad(this.f5789a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f5790b.onAdLeftApplication(this.f5789a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.f5790b.onAdLoaded(this.f5789a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f5790b.onAdOpened(this.f5789a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$e */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$e.class */
    static final class C1531e extends AdListener implements AppEventListener, zzty {

        /* renamed from: a */
        private final AbstractAdViewAdapter f5791a;

        /* renamed from: b */
        private final MediationBannerListener f5792b;

        public C1531e(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.f5791a = abstractAdViewAdapter;
            this.f5792b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzty
        public final void onAdClicked() {
            this.f5792b.onAdClicked(this.f5791a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f5792b.onAdClosed(this.f5791a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f5792b.onAdFailedToLoad(this.f5791a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f5792b.onAdLeftApplication(this.f5791a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
            this.f5792b.onAdLoaded(this.f5791a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f5792b.onAdOpened(this.f5791a);
        }

        @Override // com.google.android.gms.ads.doubleclick.AppEventListener
        public final void onAppEvent(String str, String str2) {
            this.f5792b.zza(this.f5791a, str, str2);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$f */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$f.class */
    static final class C1532f extends AdListener implements NativeAppInstallAd.OnAppInstallAdLoadedListener, NativeContentAd.OnContentAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener, UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {

        /* renamed from: a */
        private final AbstractAdViewAdapter f5793a;

        /* renamed from: b */
        private final MediationNativeListener f5794b;

        public C1532f(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.f5793a = abstractAdViewAdapter;
            this.f5794b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzty
        public final void onAdClicked() {
            this.f5794b.onAdClicked(this.f5793a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdClosed() {
            this.f5794b.onAdClosed(this.f5793a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdFailedToLoad(int i) {
            this.f5794b.onAdFailedToLoad(this.f5793a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdImpression() {
            this.f5794b.onAdImpression(this.f5793a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLeftApplication() {
            this.f5794b.onAdLeftApplication(this.f5793a);
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdLoaded() {
        }

        @Override // com.google.android.gms.ads.AdListener
        public final void onAdOpened() {
            this.f5794b.onAdOpened(this.f5793a);
        }

        @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
        public final void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
            this.f5794b.onAdLoaded(this.f5793a, new C1527a(nativeAppInstallAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
        public final void onContentAdLoaded(NativeContentAd nativeContentAd) {
            this.f5794b.onAdLoaded(this.f5793a, new C1529c(nativeContentAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener
        public final void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
            this.f5794b.zza(this.f5793a, nativeCustomTemplateAd, str);
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener
        public final void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd) {
            this.f5794b.zza(this.f5793a, nativeCustomTemplateAd);
        }

        @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
        public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
            this.f5794b.onAdLoaded(this.f5793a, new C1528b(unifiedNativeAd));
        }
    }

    private final AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        AdRequest.Builder builder = new AdRequest.Builder();
        Date birthday = mediationAdRequest.getBirthday();
        if (birthday != null) {
            builder.setBirthday(birthday);
        }
        int gender = mediationAdRequest.getGender();
        if (gender != 0) {
            builder.setGender(gender);
        }
        Set<String> keywords = mediationAdRequest.getKeywords();
        if (keywords != null) {
            for (String str : keywords) {
                builder.addKeyword(str);
            }
        }
        Location location = mediationAdRequest.getLocation();
        if (location != null) {
            builder.setLocation(location);
        }
        if (mediationAdRequest.isTesting()) {
            zzve.zzou();
            builder.addTestDevice(zzayk.zzbi(context));
        }
        if (mediationAdRequest.taggedForChildDirectedTreatment() != -1) {
            boolean z = true;
            if (mediationAdRequest.taggedForChildDirectedTreatment() != 1) {
                z = false;
            }
            builder.tagForChildDirectedTreatment(z);
        }
        builder.setIsDesignedForFamilies(mediationAdRequest.isDesignedForFamilies());
        builder.addNetworkExtrasBundle(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.build();
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.zzlq;
    }

    @Override // com.google.android.gms.internal.ads.zzbfy
    public Bundle getInterstitialAdapterInfo() {
        return new MediationAdapter.zza().zzdf(1).zzaby();
    }

    @Override // com.google.android.gms.ads.mediation.zza
    public zzxb getVideoController() {
        VideoController videoController;
        AdView adView = this.zzlq;
        if (adView == null || (videoController = adView.getVideoController()) == null) {
            return null;
        }
        return videoController.zzdl();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzlt = context.getApplicationContext();
        this.zzlv = mediationRewardedVideoAdListener;
        this.zzlv.onInitializationSucceeded(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzlv != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        Context context = this.zzlt;
        if (context == null || this.zzlv == null) {
            zzayu.zzex("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        this.zzlu = new InterstitialAd(context);
        this.zzlu.zzd(true);
        this.zzlu.setAdUnitId(getAdUnitId(bundle));
        this.zzlu.setRewardedVideoAdListener(this.zzlw);
        this.zzlu.setAdMetadataListener(new C1534b(this));
        this.zzlu.loadAd(zza(this.zzlt, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        AdView adView = this.zzlq;
        if (adView != null) {
            adView.destroy();
            this.zzlq = null;
        }
        if (this.zzlr != null) {
            this.zzlr = null;
        }
        if (this.zzls != null) {
            this.zzls = null;
        }
        if (this.zzlu != null) {
            this.zzlu = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener
    public void onImmersiveModeUpdated(boolean z) {
        InterstitialAd interstitialAd = this.zzlr;
        if (interstitialAd != null) {
            interstitialAd.setImmersiveMode(z);
        }
        InterstitialAd interstitialAd2 = this.zzlu;
        if (interstitialAd2 != null) {
            interstitialAd2.setImmersiveMode(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        AdView adView = this.zzlq;
        if (adView != null) {
            adView.pause();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        AdView adView = this.zzlq;
        if (adView != null) {
            adView.resume();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzlq = new AdView(context);
        this.zzlq.setAdSize(new AdSize(adSize.getWidth(), adSize.getHeight()));
        this.zzlq.setAdUnitId(getAdUnitId(bundle));
        this.zzlq.setAdListener(new C1531e(this, mediationBannerListener));
        this.zzlq.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.zzlr = new InterstitialAd(context);
        this.zzlr.setAdUnitId(getAdUnitId(bundle));
        this.zzlr.setAdListener(new C1530d(this, mediationInterstitialListener));
        this.zzlr.loadAd(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        C1532f fVar = new C1532f(this, mediationNativeListener);
        AdLoader.Builder withAdListener = new AdLoader.Builder(context, bundle.getString(AD_UNIT_ID_PARAMETER)).withAdListener(fVar);
        NativeAdOptions nativeAdOptions = nativeMediationAdRequest.getNativeAdOptions();
        if (nativeAdOptions != null) {
            withAdListener.withNativeAdOptions(nativeAdOptions);
        }
        if (nativeMediationAdRequest.isUnifiedNativeAdRequested()) {
            withAdListener.forUnifiedNativeAd(fVar);
        }
        if (nativeMediationAdRequest.isAppInstallAdRequested()) {
            withAdListener.forAppInstallAd(fVar);
        }
        if (nativeMediationAdRequest.isContentAdRequested()) {
            withAdListener.forContentAd(fVar);
        }
        if (nativeMediationAdRequest.zzsz()) {
            for (String str : nativeMediationAdRequest.zzta().keySet()) {
                withAdListener.forCustomTemplateAd(str, fVar, nativeMediationAdRequest.zzta().get(str).booleanValue() ? fVar : null);
            }
        }
        this.zzls = withAdListener.build();
        this.zzls.loadAd(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzlr.show();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzlu.show();
    }

    protected abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
