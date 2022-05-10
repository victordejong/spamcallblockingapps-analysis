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
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbbg;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzbiy;
import com.google.android.gms.internal.ads.zzux;
import com.google.android.gms.internal.ads.zzwm;
import com.google.android.gms.internal.ads.zzyo;
import java.util.Date;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p162a.p163b.C2486j;
import p131c.p161d.p162a.p163b.C2487k;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter.class */
public abstract class AbstractAdViewAdapter implements MediationBannerAdapter, MediationNativeAdapter, OnImmersiveModeUpdatedListener, zza, MediationRewardedVideoAdAdapter, zzbiy {
    public static final String AD_UNIT_ID_PARAMETER = "pubid";
    public AdView zzmi;
    public InterstitialAd zzmj;
    public AdLoader zzmk;
    public Context zzml;
    public InterstitialAd zzmm;
    public MediationRewardedVideoAdListener zzmn;
    @VisibleForTesting
    public final RewardedVideoAdListener zzmo = new C2487k(this);

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$a.class */
    public static final class C7093a extends NativeContentAdMapper {

        /* renamed from: n */
        public final NativeContentAd f21850n;

        public C7093a(NativeContentAd nativeContentAd) {
            this.f21850n = nativeContentAd;
            setHeadline(nativeContentAd.mo16814e().toString());
            setImages(nativeContentAd.mo16813f());
            setBody(nativeContentAd.mo16816c().toString());
            if (nativeContentAd.mo16812g() != null) {
                m17929a(nativeContentAd.mo16812g());
            }
            setCallToAction(nativeContentAd.mo16815d().toString());
            m17928a(nativeContentAd.mo16817b().toString());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeContentAd.mo16811h());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f21850n);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.f22714c.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.m18046a(this.f21850n);
            }
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$b.class */
    public static final class C7094b extends NativeAppInstallAdMapper {

        /* renamed from: p */
        public final NativeAppInstallAd f21851p;

        public C7094b(NativeAppInstallAd nativeAppInstallAd) {
            this.f21851p = nativeAppInstallAd;
            setHeadline(nativeAppInstallAd.mo16826d().toString());
            setImages(nativeAppInstallAd.mo16824f());
            setBody(nativeAppInstallAd.mo16828b().toString());
            setIcon(nativeAppInstallAd.mo16825e());
            setCallToAction(nativeAppInstallAd.mo16827c().toString());
            if (nativeAppInstallAd.mo16822h() != null) {
                setStarRating(nativeAppInstallAd.mo16822h().doubleValue());
            }
            if (nativeAppInstallAd.mo16821i() != null) {
                setStore(nativeAppInstallAd.mo16821i().toString());
            }
            if (nativeAppInstallAd.mo16823g() != null) {
                setPrice(nativeAppInstallAd.mo16823g().toString());
            }
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(nativeAppInstallAd.mo16820j());
        }

        @Override // com.google.android.gms.ads.mediation.NativeAdMapper
        public final void trackView(View view) {
            if (view instanceof NativeAdView) {
                ((NativeAdView) view).setNativeAd(this.f21851p);
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.f22714c.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.m18046a(this.f21851p);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$c.class */
    public static final class C7095c extends AdListener implements AppEventListener, zzux {
        @VisibleForTesting

        /* renamed from: a */
        public final AbstractAdViewAdapter f21852a;
        @VisibleForTesting

        /* renamed from: b */
        public final MediationBannerListener f21853b;

        public C7095c(AbstractAdViewAdapter abstractAdViewAdapter, MediationBannerListener mediationBannerListener) {
            this.f21852a = abstractAdViewAdapter;
            this.f21853b = mediationBannerListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public final void mo5294a() {
            this.f21853b.mo16626a(this.f21852a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public final void mo3662a(int i) {
            this.f21853b.mo16625a(this.f21852a, i);
        }

        @Override // com.google.android.gms.ads.doubleclick.AppEventListener
        /* renamed from: a */
        public final void mo13729a(String str, String str2) {
            this.f21853b.mo16623a(this.f21852a, str, str2);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: c */
        public final void mo5293c() {
            this.f21853b.mo16603d(this.f21852a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: d */
        public final void mo5292d() {
            this.f21853b.mo16606c(this.f21852a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: e */
        public final void mo3661e() {
            this.f21853b.mo16600e(this.f21852a);
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzux
        public final void onAdClicked() {
            this.f21853b.mo16610b(this.f21852a);
        }
    }

    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$d.class */
    public static final class C7096d extends UnifiedNativeAdMapper {

        /* renamed from: s */
        public final UnifiedNativeAd f21854s;

        public C7096d(UnifiedNativeAd unifiedNativeAd) {
            this.f21854s = unifiedNativeAd;
            setHeadline(unifiedNativeAd.mo16790e());
            setImages(unifiedNativeAd.mo16788g());
            setBody(unifiedNativeAd.mo16792c());
            setIcon(unifiedNativeAd.mo16789f());
            setCallToAction(unifiedNativeAd.mo16791d());
            setAdvertiser(unifiedNativeAd.mo16793b());
            setStarRating(unifiedNativeAd.mo16786i());
            setStore(unifiedNativeAd.mo16785j());
            setPrice(unifiedNativeAd.mo16787h());
            zzn(unifiedNativeAd.mo16782m());
            setOverrideImpressionRecording(true);
            setOverrideClickHandling(true);
            zza(unifiedNativeAd.mo16784k());
        }

        @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
        public final void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
            if (view instanceof UnifiedNativeAdView) {
                ((UnifiedNativeAdView) view).setNativeAd(this.f21854s);
                return;
            }
            NativeAdViewHolder nativeAdViewHolder = NativeAdViewHolder.f22714c.get(view);
            if (nativeAdViewHolder != null) {
                nativeAdViewHolder.m18045a(this.f21854s);
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$e */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$e.class */
    public static final class C7097e extends AdListener implements NativeAppInstallAd.OnAppInstallAdLoadedListener, NativeContentAd.OnContentAdLoadedListener, NativeCustomTemplateAd.OnCustomClickListener, NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener, UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {
        @VisibleForTesting

        /* renamed from: a */
        public final AbstractAdViewAdapter f21855a;
        @VisibleForTesting

        /* renamed from: b */
        public final MediationNativeListener f21856b;

        public C7097e(AbstractAdViewAdapter abstractAdViewAdapter, MediationNativeListener mediationNativeListener) {
            this.f21855a = abstractAdViewAdapter;
            this.f21856b = mediationNativeListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public final void mo5294a() {
            this.f21856b.mo16604c(this.f21855a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public final void mo3662a(int i) {
            this.f21856b.mo16618a(this.f21855a, i);
        }

        @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
        /* renamed from: a */
        public final void mo18043a(NativeAppInstallAd nativeAppInstallAd) {
            this.f21856b.mo16614a(this.f21855a, new C7094b(nativeAppInstallAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
        /* renamed from: a */
        public final void mo18042a(NativeContentAd nativeContentAd) {
            this.f21856b.mo16614a(this.f21855a, new C7093a(nativeContentAd));
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomTemplateAdLoadedListener
        /* renamed from: a */
        public final void mo18040a(NativeCustomTemplateAd nativeCustomTemplateAd) {
            this.f21856b.mo16616a(this.f21855a, nativeCustomTemplateAd);
        }

        @Override // com.google.android.gms.ads.formats.NativeCustomTemplateAd.OnCustomClickListener
        /* renamed from: a */
        public final void mo18041a(NativeCustomTemplateAd nativeCustomTemplateAd, String str) {
            this.f21856b.mo16615a(this.f21855a, nativeCustomTemplateAd, str);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: b */
        public final void mo18158b() {
            this.f21856b.mo16597f(this.f21855a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: c */
        public final void mo5293c() {
            this.f21856b.mo16598e(this.f21855a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: d */
        public final void mo5292d() {
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: e */
        public final void mo3661e() {
            this.f21856b.mo16619a(this.f21855a);
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzux
        public final void onAdClicked() {
            this.f21856b.mo16601d(this.f21855a);
        }

        @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
        public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
            this.f21856b.mo16613a(this.f21855a, new C7096d(unifiedNativeAd));
        }
    }

    @VisibleForTesting
    /* renamed from: com.google.ads.mediation.AbstractAdViewAdapter$f */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/AbstractAdViewAdapter$f.class */
    public static final class C7098f extends AdListener implements zzux {
        @VisibleForTesting

        /* renamed from: a */
        public final AbstractAdViewAdapter f21857a;
        @VisibleForTesting

        /* renamed from: b */
        public final MediationInterstitialListener f21858b;

        public C7098f(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
            this.f21857a = abstractAdViewAdapter;
            this.f21858b = mediationInterstitialListener;
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public final void mo5294a() {
            this.f21858b.mo16602d(this.f21857a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: a */
        public final void mo3662a(int i) {
            this.f21858b.mo16621a(this.f21857a, i);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: c */
        public final void mo5293c() {
            this.f21858b.mo16622a(this.f21857a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: d */
        public final void mo5292d() {
            this.f21858b.mo16605c(this.f21857a);
        }

        @Override // com.google.android.gms.ads.AdListener
        /* renamed from: e */
        public final void mo3661e() {
            this.f21858b.mo16599e(this.f21857a);
        }

        @Override // com.google.android.gms.ads.AdListener, com.google.android.gms.internal.ads.zzux
        public final void onAdClicked() {
            this.f21858b.mo16609b(this.f21857a);
        }
    }

    private final AdRequest zza(Context context, MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        AdRequest.Builder builder = new AdRequest.Builder();
        Date g = mediationAdRequest.mo16529g();
        if (g != null) {
            builder.m18141a(g);
        }
        int l = mediationAdRequest.mo16524l();
        if (l != 0) {
            builder.m18146a(l);
        }
        Set<String> h = mediationAdRequest.mo16528h();
        if (h != null) {
            for (String str : h) {
                builder.m18142a(str);
            }
        }
        Location j = mediationAdRequest.mo16526j();
        if (j != null) {
            builder.m18145a(j);
        }
        if (mediationAdRequest.isTesting()) {
            zzwm.m11170a();
            builder.m18139b(zzbbg.m15911a(context));
        }
        if (mediationAdRequest.mo16533c() != -1) {
            boolean z = true;
            if (mediationAdRequest.mo16533c() != 1) {
                z = false;
            }
            builder.m18138b(z);
        }
        builder.m18140a(mediationAdRequest.mo16531e());
        builder.m18143a(AdMobAdapter.class, zza(bundle, bundle2));
        return builder.m18147a();
    }

    public String getAdUnitId(Bundle bundle) {
        return bundle.getString(AD_UNIT_ID_PARAMETER);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.zzmi;
    }

    @Override // com.google.android.gms.internal.ads.zzbiy
    public Bundle getInterstitialAdapterInfo() {
        MediationAdapter.zza zzaVar = new MediationAdapter.zza();
        zzaVar.m17935a(1);
        return zzaVar.m17936a();
    }

    @Override // com.google.android.gms.ads.mediation.zza
    public zzyo getVideoController() {
        VideoController videoController;
        AdView adView = this.zzmi;
        if (adView == null || (videoController = adView.getVideoController()) == null) {
            return null;
        }
        return videoController.m18090a();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void initialize(Context context, MediationAdRequest mediationAdRequest, String str, MediationRewardedVideoAdListener mediationRewardedVideoAdListener, Bundle bundle, Bundle bundle2) {
        this.zzml = context.getApplicationContext();
        this.zzmn = mediationRewardedVideoAdListener;
        mediationRewardedVideoAdListener.mo16320f(this);
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public boolean isInitialized() {
        return this.zzmn != null;
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void loadAd(MediationAdRequest mediationAdRequest, Bundle bundle, Bundle bundle2) {
        Context context = this.zzml;
        if (context == null || this.zzmn == null) {
            zzbbq.m15856b("AdMobAdapter.loadAd called before initialize.");
            return;
        }
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.zzmm = interstitialAd;
        interstitialAd.m18109b(true);
        this.zzmm.m18112a(getAdUnitId(bundle));
        this.zzmm.m18113a(this.zzmo);
        this.zzmm.m18114a(new C2486j(this));
        this.zzmm.m18115a(zza(this.zzml, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
        AdView adView = this.zzmi;
        if (adView != null) {
            adView.m18124a();
            this.zzmi = null;
        }
        if (this.zzmj != null) {
            this.zzmj = null;
        }
        if (this.zzmk != null) {
            this.zzmk = null;
        }
        if (this.zzmm != null) {
            this.zzmm = null;
        }
    }

    @Override // com.google.android.gms.ads.mediation.OnImmersiveModeUpdatedListener
    public void onImmersiveModeUpdated(boolean z) {
        InterstitialAd interstitialAd = this.zzmj;
        if (interstitialAd != null) {
            interstitialAd.m18111a(z);
        }
        InterstitialAd interstitialAd2 = this.zzmm;
        if (interstitialAd2 != null) {
            interstitialAd2.m18111a(z);
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
        AdView adView = this.zzmi;
        if (adView != null) {
            adView.m18122b();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
        AdView adView = this.zzmi;
        if (adView != null) {
            adView.m18121c();
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        AdView adView = new AdView(context);
        this.zzmi = adView;
        adView.setAdSize(new AdSize(adSize.m18133b(), adSize.m18137a()));
        this.zzmi.setAdUnitId(getAdUnitId(bundle));
        this.zzmi.setAdListener(new C7095c(this, mediationBannerListener));
        this.zzmi.m18123a(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        InterstitialAd interstitialAd = new InterstitialAd(context);
        this.zzmj = interstitialAd;
        interstitialAd.m18112a(getAdUnitId(bundle));
        this.zzmj.m18116a(new C7098f(this, mediationInterstitialListener));
        this.zzmj.m18115a(zza(context, mediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        C7097e eVar = new C7097e(this, mediationNativeListener);
        AdLoader.Builder builder = new AdLoader.Builder(context, bundle.getString(AD_UNIT_ID_PARAMETER));
        builder.m18154a((AdListener) eVar);
        NativeAdOptions i = nativeMediationAdRequest.mo16527i();
        if (i != null) {
            builder.m18153a(i);
        }
        if (nativeMediationAdRequest.mo16532d()) {
            builder.m18150a((UnifiedNativeAd.OnUnifiedNativeAdLoadedListener) eVar);
        }
        if (nativeMediationAdRequest.mo16530f()) {
            builder.m18152a((NativeAppInstallAd.OnAppInstallAdLoadedListener) eVar);
        }
        if (nativeMediationAdRequest.mo16525k()) {
            builder.m18151a((NativeContentAd.OnContentAdLoadedListener) eVar);
        }
        if (nativeMediationAdRequest.mo16534b()) {
            for (String str : nativeMediationAdRequest.mo16535a().keySet()) {
                builder.m18149a(str, eVar, nativeMediationAdRequest.mo16535a().get(str).booleanValue() ? eVar : null);
            }
        }
        AdLoader a = builder.m18155a();
        this.zzmk = a;
        a.m18157a(zza(context, nativeMediationAdRequest, bundle2, bundle));
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        this.zzmj.m18107d();
    }

    @Override // com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter
    public void showVideo() {
        this.zzmm.m18107d();
    }

    public abstract Bundle zza(Bundle bundle, Bundle bundle2);
}
