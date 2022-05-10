package com.google.ads.mediation.applovin;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.applovin.adview.AppLovinIncentivizedInterstitial;
import com.applovin.mediation.AppLovinIncentivizedAdListener;
import com.applovin.mediation.AppLovinUtils;
import com.applovin.mediation.ApplovinAdapter;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.mediation.InitializationCompleteCallback;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationBannerAd;
import com.google.android.gms.ads.mediation.MediationBannerAdCallback;
import com.google.android.gms.ads.mediation.MediationBannerAdConfiguration;
import com.google.android.gms.ads.mediation.MediationConfiguration;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAdConfiguration;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAdConfiguration;
import com.google.android.gms.ads.mediation.VersionInfo;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbSignalData;
import com.google.android.gms.ads.mediation.rtb.SignalCallbacks;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.List;
import p131c.p135b.p154b.p155f.C2447a;
import p131c.p135b.p154b.p155f.C2448b;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter.class */
public class AppLovinMediationAdapter extends RtbAdapter implements MediationRewardedAd, AppLovinAdLoadListener {
    public static final int ERROR_AD_ALREADY_REQUESTED = 105;
    public static final int ERROR_AD_FORMAT_UNSUPPORTED = 108;
    public static final int ERROR_BANNER_SIZE_MISMATCH = 101;
    public static final int ERROR_EMPTY_BID_TOKEN = 104;
    public static final int ERROR_MAPPING_NATIVE_ASSETS = 107;
    public static final int ERROR_NULL_CONTEXT = 103;
    public static final int ERROR_PRESENTATON_AD_NOT_READY = 106;
    public static final int ERROR_REQUIRES_UNIFIED_NATIVE_ADS = 102;

    /* renamed from: k */
    public static final String f21859k = "AppLovinMediationAdapter";

    /* renamed from: l */
    public static WeakReference<Context> f21860l;

    /* renamed from: m */
    public static boolean f21861m = true;

    /* renamed from: a */
    public C2447a f21863a;

    /* renamed from: b */
    public C2448b f21864b;

    /* renamed from: c */
    public AppLovinSdk f21865c;

    /* renamed from: d */
    public MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> f21866d;

    /* renamed from: e */
    public MediationRewardedAdCallback f21867e;

    /* renamed from: f */
    public AppLovinIncentivizedInterstitial f21868f;

    /* renamed from: g */
    public String f21869g;

    /* renamed from: h */
    public Bundle f21870h;

    /* renamed from: i */
    public MediationRewardedAdConfiguration f21871i;

    /* renamed from: j */
    public AppLovinAd f21872j;
    public static final HashMap<String, AppLovinIncentivizedInterstitial> INCENTIVIZED_ADS = new HashMap<>();

    /* renamed from: n */
    public static final Object f21862n = new Object();

    /* renamed from: com.google.ads.mediation.applovin.AppLovinMediationAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter$a.class */
    public class RunnableC7100a implements Runnable {
        public RunnableC7100a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinMediationAdapter appLovinMediationAdapter = AppLovinMediationAdapter.this;
            appLovinMediationAdapter.f21867e = (MediationRewardedAdCallback) appLovinMediationAdapter.f21866d.onSuccess(AppLovinMediationAdapter.this);
        }
    }

    /* renamed from: com.google.ads.mediation.applovin.AppLovinMediationAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/applovin/AppLovinMediationAdapter$b.class */
    public class RunnableC7101b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f21874a;

        public RunnableC7101b(String str) {
            this.f21874a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinMediationAdapter.this.f21866d.mo17937a(this.f21874a);
        }
    }

    public static String createAdapterError(int i, String str) {
        return String.format("%d: %s", Integer.valueOf(i), str);
    }

    public static String createSDKError(int i) {
        return String.format("%d: %s", Integer.valueOf(i), "AppLovin SDK returned a failure callback");
    }

    /* renamed from: a */
    public final void m18778a(String str, SignalCallbacks signalCallbacks) {
        Log.e(f21859k, str);
        signalCallbacks.mo17917a(str);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void adReceived(AppLovinAd appLovinAd) {
        this.f21872j = appLovinAd;
        Log.d("INFO", "Rewarded video did load ad: " + this.f21872j.getAdIdNumber());
        AppLovinSdkUtils.runOnUiThread(new RunnableC7100a());
    }

    @Override // com.google.android.gms.ads.mediation.rtb.RtbAdapter
    public void collectSignals(RtbSignalData rtbSignalData, SignalCallbacks signalCallbacks) {
        MediationConfiguration b = rtbSignalData.m17920b();
        if (b.m17933a() == AdFormat.NATIVE) {
            m18778a(createAdapterError(108, "Requested to collect signal for unsupported native ad format. Ignoring..."), signalCallbacks);
            return;
        }
        if (rtbSignalData.m17918d() != null) {
            String str = f21859k;
            Log.i(str, "Extras for signal collection: " + rtbSignalData.m17918d());
        }
        String bidToken = AppLovinUtils.retrieveSdk(b.m17932b(), rtbSignalData.m17919c()).getAdService().getBidToken();
        if (!TextUtils.isEmpty(bidToken)) {
            String str2 = f21859k;
            Log.i(str2, "Generated bid token: " + bidToken);
            signalCallbacks.onSuccess(bidToken);
            return;
        }
        m18778a(createAdapterError(104, "Failed to generate bid token"), signalCallbacks);
    }

    @Override // com.applovin.sdk.AppLovinAdLoadListener
    public void failedToReceiveAd(int i) {
        String createSDKError = createSDKError(i);
        ApplovinAdapter.log(6, createSDKError);
        if (!f21861m) {
            INCENTIVIZED_ADS.remove(this.f21869g);
        }
        AppLovinSdkUtils.runOnUiThread(new RunnableC7101b(createSDKError));
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getSDKVersionInfo() {
        String str = AppLovinSdk.VERSION;
        String[] split = str.split("\\.");
        if (split.length >= 3) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), Integer.parseInt(split[2]));
        }
        Log.w(f21859k, String.format("Unexpected SDK version format: %s.Returning 0.0.0 for SDK version.", str));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public VersionInfo getVersionInfo() {
        String[] split = "9.12.2.0".split("\\.");
        if (split.length >= 4) {
            return new VersionInfo(Integer.parseInt(split[0]), Integer.parseInt(split[1]), (Integer.parseInt(split[2]) * 100) + Integer.parseInt(split[3]));
        }
        Log.w(f21859k, String.format("Unexpected adapter version format: %s.Returning 0.0.0 for adapter version.", "9.12.2.0"));
        return new VersionInfo(0, 0, 0);
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void initialize(Context context, InitializationCompleteCallback initializationCompleteCallback, List<MediationConfiguration> list) {
        ApplovinAdapter.log(3, "Attempting to initialize SDK");
        Context applicationContext = context.getApplicationContext();
        f21860l = new WeakReference<>(applicationContext);
        if (AppLovinUtils.androidManifestHasValidSdkKey(applicationContext)) {
            AppLovinSdk.getInstance(applicationContext).initializeSdk();
        }
        for (MediationConfiguration mediationConfiguration : list) {
            AppLovinUtils.retrieveSdk(mediationConfiguration.m17932b(), f21860l.get()).initializeSdk();
        }
        initializationCompleteCallback.mo17945Q();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadBannerAd(MediationBannerAdConfiguration mediationBannerAdConfiguration, MediationAdLoadCallback<MediationBannerAd, MediationBannerAdCallback> mediationAdLoadCallback) {
        C2447a aVar = new C2447a(mediationBannerAdConfiguration, mediationAdLoadCallback);
        this.f21863a = aVar;
        aVar.m29731a();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadInterstitialAd(MediationInterstitialAdConfiguration mediationInterstitialAdConfiguration, MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> mediationAdLoadCallback) {
        C2448b bVar = new C2448b(mediationInterstitialAdConfiguration, mediationAdLoadCallback);
        this.f21864b = bVar;
        bVar.m29730a();
    }

    @Override // com.google.android.gms.ads.mediation.Adapter
    public void loadRewardedAd(MediationRewardedAdConfiguration mediationRewardedAdConfiguration, MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> mediationAdLoadCallback) {
        this.f21871i = mediationRewardedAdConfiguration;
        if (mediationRewardedAdConfiguration.m17943a().equals("")) {
            f21861m = false;
        }
        if (!f21861m) {
            synchronized (f21862n) {
                Bundle e = this.f21871i.m17939e();
                this.f21869g = AppLovinUtils.retrieveZoneId(e);
                this.f21865c = AppLovinUtils.retrieveSdk(e, this.f21871i.m17942b());
                this.f21870h = this.f21871i.m17940d();
                this.f21866d = mediationAdLoadCallback;
                ApplovinAdapter.log(3, String.format("Requesting rewarded video for zone '%s'", this.f21869g));
                if (INCENTIVIZED_ADS.containsKey(this.f21869g)) {
                    this.f21868f = INCENTIVIZED_ADS.get(this.f21869g);
                    String createAdapterError = createAdapterError(105, "Cannot load multiple ads with the same Zone ID. Display one ad before attempting to load another.");
                    ApplovinAdapter.log(6, createAdapterError);
                    this.f21866d.mo17937a(createAdapterError);
                } else {
                    if ("".equals(this.f21869g)) {
                        this.f21868f = AppLovinIncentivizedInterstitial.create(this.f21865c);
                    } else {
                        this.f21868f = AppLovinIncentivizedInterstitial.create(this.f21869g, this.f21865c);
                    }
                    INCENTIVIZED_ADS.put(this.f21869g, this.f21868f);
                }
            }
            this.f21868f.preload(this);
            return;
        }
        this.f21866d = mediationAdLoadCallback;
        this.f21870h = this.f21871i.m17940d();
        AppLovinSdk retrieveSdk = AppLovinUtils.retrieveSdk(this.f21871i.m17939e(), this.f21871i.m17942b());
        this.f21865c = retrieveSdk;
        this.f21868f = AppLovinIncentivizedInterstitial.create(retrieveSdk);
        this.f21865c.getAdService().loadNextAdForAdToken(this.f21871i.m17943a(), this);
    }

    @Override // com.google.android.gms.ads.mediation.MediationRewardedAd
    public void showAd(Context context) {
        this.f21865c.getSettings().setMuted(AppLovinUtils.shouldMuteAudio(this.f21870h));
        ApplovinAdapter.log(3, String.format("Showing rewarded video for zone '%s'", this.f21869g));
        AppLovinIncentivizedAdListener appLovinIncentivizedAdListener = new AppLovinIncentivizedAdListener(this.f21871i, this.f21867e);
        if (f21861m) {
            this.f21868f.show(this.f21872j, context, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener);
        } else if (!this.f21868f.isAdReadyToDisplay()) {
            this.f21867e.mo16288a(createAdapterError(106, "Ad Failed to show"));
        } else {
            this.f21868f.show(context, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener, appLovinIncentivizedAdListener);
        }
    }
}
