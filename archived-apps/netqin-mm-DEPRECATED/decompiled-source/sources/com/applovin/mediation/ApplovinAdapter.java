package com.applovin.mediation;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.ads.mediation.applovin.AppLovinMediationAdapter;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.OnContextChangedListener;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Queue;
import p131c.p135b.p154b.C2437a;
import p131c.p135b.p154b.C2440b;
/* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter.class */
public class ApplovinAdapter extends AppLovinMediationAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, OnContextChangedListener, MediationRewardedAd {

    /* renamed from: u */
    public static final HashMap<String, Queue<AppLovinAd>> f21800u = new HashMap<>();

    /* renamed from: v */
    public static final Object f21801v = new Object();

    /* renamed from: o */
    public AppLovinSdk f21802o;

    /* renamed from: p */
    public Context f21803p;

    /* renamed from: q */
    public Bundle f21804q;

    /* renamed from: r */
    public MediationInterstitialListener f21805r;

    /* renamed from: s */
    public AppLovinAdView f21806s;

    /* renamed from: t */
    public String f21807t;

    /* renamed from: com.applovin.mediation.ApplovinAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter$a.class */
    public class C7059a implements AppLovinAdLoadListener {

        /* renamed from: com.applovin.mediation.ApplovinAdapter$a$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter$a$a.class */
        public class RunnableC7060a implements Runnable {
            public RunnableC7060a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                ApplovinAdapter.this.f21805r.mo16605c(ApplovinAdapter.this);
            }
        }

        /* renamed from: com.applovin.mediation.ApplovinAdapter$a$b */
        /* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter$a$b.class */
        public class RunnableC7061b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f21810a;

            public RunnableC7061b(int i) {
                this.f21810a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                ApplovinAdapter.this.f21805r.mo16621a(ApplovinAdapter.this, this.f21810a);
            }
        }

        public C7059a() {
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            ApplovinAdapter.log(3, "Interstitial did load ad: " + appLovinAd.getAdIdNumber() + " for zone: " + ApplovinAdapter.this.f21807t);
            synchronized (ApplovinAdapter.f21801v) {
                Queue queue = (Queue) ApplovinAdapter.f21800u.get(ApplovinAdapter.this.f21807t);
                Queue queue2 = queue;
                if (queue == null) {
                    queue2 = new LinkedList();
                    ApplovinAdapter.f21800u.put(ApplovinAdapter.this.f21807t, queue2);
                }
                queue2.offer(appLovinAd);
                AppLovinSdkUtils.runOnUiThread(new RunnableC7060a());
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            ApplovinAdapter.log(6, AppLovinMediationAdapter.createSDKError(i));
            AppLovinSdkUtils.runOnUiThread(new RunnableC7061b(i));
        }
    }

    /* renamed from: com.applovin.mediation.ApplovinAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter$b.class */
    public class RunnableC7062b implements Runnable {
        public RunnableC7062b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ApplovinAdapter.this.f21805r.mo16605c(ApplovinAdapter.this);
        }
    }

    /* renamed from: com.applovin.mediation.ApplovinAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/mediation/ApplovinAdapter$c.class */
    public class RunnableC7063c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MediationBannerListener f21813a;

        public RunnableC7063c(MediationBannerListener mediationBannerListener) {
            this.f21813a = mediationBannerListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f21813a.mo16625a(ApplovinAdapter.this, 101);
        }
    }

    public static void log(int i, String str) {
        Log.println(i, "AppLovinAdapter", str);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.f21806s;
    }

    @Override // com.google.android.gms.ads.mediation.OnContextChangedListener
    public void onContextChanged(Context context) {
        if (context != null) {
            log(3, "Context changed: " + context);
            this.f21803p = context;
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onDestroy() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onPause() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdapter
    public void onResume() {
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public void requestBannerAd(Context context, MediationBannerListener mediationBannerListener, Bundle bundle, AdSize adSize, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f21802o = AppLovinUtils.retrieveSdk(bundle, context);
        this.f21807t = AppLovinUtils.retrieveZoneId(bundle);
        log(3, "Requesting banner of size " + adSize + " for zone: " + this.f21807t);
        AppLovinAdSize appLovinAdSizeFromAdMobAdSize = AppLovinUtils.appLovinAdSizeFromAdMobAdSize(context, adSize);
        if (appLovinAdSizeFromAdMobAdSize != null) {
            AppLovinAdView appLovinAdView = new AppLovinAdView(this.f21802o, appLovinAdSizeFromAdMobAdSize, context);
            this.f21806s = appLovinAdView;
            C2437a aVar = new C2437a(this.f21807t, appLovinAdView, this, mediationBannerListener);
            this.f21806s.setAdDisplayListener(aVar);
            this.f21806s.setAdClickListener(aVar);
            this.f21806s.setAdViewEventListener(aVar);
            if (!TextUtils.isEmpty(this.f21807t)) {
                this.f21802o.getAdService().loadNextAdForZoneId(this.f21807t, aVar);
            } else {
                this.f21802o.getAdService().loadNextAd(appLovinAdSizeFromAdMobAdSize, aVar);
            }
        } else {
            log(6, AppLovinMediationAdapter.createAdapterError(101, "Failed to request banner with unsupported size"));
            if (mediationBannerListener != null) {
                AppLovinSdkUtils.runOnUiThread(new RunnableC7063c(mediationBannerListener));
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        this.f21802o = AppLovinUtils.retrieveSdk(bundle, context);
        this.f21803p = context;
        this.f21804q = bundle2;
        this.f21805r = mediationInterstitialListener;
        this.f21807t = AppLovinUtils.retrieveZoneId(bundle);
        log(3, "Requesting interstitial for zone: " + this.f21807t);
        C7059a aVar = new C7059a();
        synchronized (f21801v) {
            Queue<AppLovinAd> queue = f21800u.get(this.f21807t);
            if (queue != null && (queue == null || !queue.isEmpty())) {
                log(3, "Enqueued interstitial found. Finishing load...");
                AppLovinSdkUtils.runOnUiThread(new RunnableC7062b());
            }
            if (!TextUtils.isEmpty(this.f21807t)) {
                this.f21802o.getAdService().loadNextAdForZoneId(this.f21807t, aVar);
            } else {
                this.f21802o.getAdService().loadNextAd(AppLovinAdSize.INTERSTITIAL, aVar);
            }
        }
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        synchronized (f21801v) {
            this.f21802o.getSettings().setMuted(AppLovinUtils.shouldMuteAudio(this.f21804q));
            Queue<AppLovinAd> queue = f21800u.get(this.f21807t);
            AppLovinAd poll = queue != null ? queue.poll() : null;
            AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f21802o, this.f21803p);
            C2440b bVar = new C2440b(this, this.f21805r);
            create.setAdDisplayListener(bVar);
            create.setAdClickListener(bVar);
            create.setAdVideoPlaybackListener(bVar);
            if (poll != null) {
                log(3, "Showing interstitial for zone: " + this.f21807t);
                create.showAndRender(poll);
            } else {
                log(3, "Attempting to show interstitial before one was loaded");
                if (!TextUtils.isEmpty(this.f21807t) || !create.isAdReadyToDisplay()) {
                    this.f21805r.mo16599e(this);
                    this.f21805r.mo16602d(this);
                } else {
                    log(3, "Showing interstitial preloaded by SDK");
                    create.show();
                }
            }
        }
    }
}
