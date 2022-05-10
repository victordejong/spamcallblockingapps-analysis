package com.google.ads.mediation.inmobi;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.MediationNativeAdapter;
import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.ads.mediation.NativeMediationAdRequest;
import com.google.logging.type.LogSeverity;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.listeners.BannerAdEventListener;
import com.inmobi.ads.listeners.InterstitialAdEventListener;
import com.inmobi.ads.listeners.NativeAdEventListener;
import com.inmobi.ads.listeners.VideoEventListener;
import com.inmobi.sdk.InMobiSdk;
import java.util.ArrayList;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p162a.p163b.p166h.C2469b;
import p131c.p161d.p162a.p163b.p166h.C2470c;
import p131c.p161d.p162a.p163b.p166h.C2473d;
/* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiAdapter.class */
public final class InMobiAdapter extends InMobiMediationAdapter implements MediationBannerAdapter, MediationInterstitialAdapter, MediationNativeAdapter {

    /* renamed from: m */
    public static final String f21879m = "InMobiAdapter";

    /* renamed from: n */
    public static Boolean f21880n = false;

    /* renamed from: o */
    public static Boolean f21881o = false;

    /* renamed from: e */
    public MediationBannerListener f21882e;

    /* renamed from: f */
    public MediationInterstitialListener f21883f;

    /* renamed from: g */
    public MediationNativeListener f21884g;

    /* renamed from: h */
    public InMobiInterstitial f21885h;

    /* renamed from: i */
    public FrameLayout f21886i;

    /* renamed from: j */
    public NativeMediationAdRequest f21887j;

    /* renamed from: k */
    public Boolean f21888k = false;

    /* renamed from: l */
    public InMobiNative f21889l;

    /* renamed from: com.google.ads.mediation.inmobi.InMobiAdapter$a */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiAdapter$a.class */
    public class C7104a extends BannerAdEventListener {
        public C7104a() {
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdClicked(InMobiBanner inMobiBanner, Map<Object, Object> map) {
            Log.d("onBannerClicked", "onBannerClick called");
            InMobiAdapter.this.f21882e.mo16610b(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdDismissed(InMobiBanner inMobiBanner) {
            Log.d(InMobiAdapter.f21879m, "onAdDismissed");
            InMobiAdapter.this.f21882e.mo16626a(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdDisplayed(InMobiBanner inMobiBanner) {
            Log.d(InMobiAdapter.f21879m, "onAdDisplayed");
            InMobiAdapter.this.f21882e.mo16600e(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdLoadFailed(InMobiBanner inMobiBanner, InMobiAdRequestStatus inMobiAdRequestStatus) {
            InMobiAdapter.this.f21882e.mo16625a(InMobiAdapter.this, InMobiAdapter.m18770b(inMobiAdRequestStatus.getStatusCode()));
            String str = InMobiAdapter.f21879m;
            Log.d(str, "onAdLoadFailed: " + inMobiAdRequestStatus.getMessage());
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onAdLoadSucceeded(InMobiBanner inMobiBanner) {
            System.out.println("onLoadSucceeded");
            Log.d(InMobiAdapter.f21879m, "onAdLoadSucceeded");
            InMobiAdapter.this.f21882e.mo16606c(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onRewardsUnlocked(InMobiBanner inMobiBanner, Map<Object, Object> map) {
            Log.d(InMobiAdapter.f21879m, "InMobi Banner onRewardsUnlocked.");
            if (map != null) {
                for (Object obj : map.keySet()) {
                    String obj2 = obj.toString();
                    String obj3 = map.get(obj2).toString();
                    Log.d("Rewards: ", obj2 + ":" + obj3);
                }
            }
        }

        @Override // com.inmobi.ads.listeners.BannerAdEventListener
        public void onUserLeftApplication(InMobiBanner inMobiBanner) {
            Log.d(InMobiAdapter.f21879m, "onUserLeftApplication");
            InMobiAdapter.this.f21882e.mo16603d(InMobiAdapter.this);
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiAdapter$b */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiAdapter$b.class */
    public class C7105b extends InterstitialAdEventListener {
        public C7105b() {
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdClicked(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            Log.d(InMobiAdapter.f21879m, "InterstitialClicked");
            InMobiAdapter.this.f21883f.mo16609b(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDismissed(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "onAdDismissed");
            InMobiAdapter.this.f21883f.mo16602d(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayFailed(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "Ad Display failed.");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdDisplayed(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "onAdDisplayed");
            InMobiAdapter.this.f21883f.mo16599e(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdLoadFailed(InMobiInterstitial inMobiInterstitial, InMobiAdRequestStatus inMobiAdRequestStatus) {
            InMobiAdapter.this.f21883f.mo16621a(InMobiAdapter.this, InMobiAdapter.m18770b(inMobiAdRequestStatus.getStatusCode()));
            String str = InMobiAdapter.f21879m;
            Log.d(str, "onAdLoadFailed: " + inMobiAdRequestStatus.getMessage());
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdLoadSucceeded(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "onAdLoadSucceeded");
            InMobiAdapter.this.f21883f.mo16605c(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdReceived(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "InMobi Ad server responded with an Ad.");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onAdWillDisplay(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "Ad Will Display.");
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onRewardsUnlocked(InMobiInterstitial inMobiInterstitial, Map<Object, Object> map) {
            Log.d(InMobiAdapter.f21879m, "InMobi Interstitial onRewardsUnlocked.");
            if (map != null) {
                for (Object obj : map.keySet()) {
                    String obj2 = obj.toString();
                    String obj3 = map.get(obj2).toString();
                    Log.d("Rewards: ", obj2 + ": " + obj3);
                }
            }
        }

        @Override // com.inmobi.ads.listeners.InterstitialAdEventListener
        public void onUserLeftApplication(InMobiInterstitial inMobiInterstitial) {
            Log.d(InMobiAdapter.f21879m, "onUserLeftApplication");
            InMobiAdapter.this.f21883f.mo16622a(InMobiAdapter.this);
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiAdapter$c */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiAdapter$c.class */
    public class C7106c extends NativeAdEventListener {

        /* renamed from: a */
        public final /* synthetic */ Context f21892a;

        public C7106c(Context context) {
            this.f21892a = context;
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdClicked(InMobiNative inMobiNative) {
            InMobiAdapter.this.f21884g.mo16601d(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenDismissed(InMobiNative inMobiNative) {
            Log.d(InMobiAdapter.f21879m, "onAdDismissed");
            InMobiAdapter.this.f21884g.mo16604c(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenDisplayed(InMobiNative inMobiNative) {
            InMobiAdapter.this.f21884g.mo16619a(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdFullScreenWillDisplay(InMobiNative inMobiNative) {
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdImpressed(InMobiNative inMobiNative) {
            Log.d(InMobiAdapter.f21879m, "InMobi impression recorded successfully");
            InMobiAdapter.this.f21884g.mo16597f(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdLoadFailed(InMobiNative inMobiNative, InMobiAdRequestStatus inMobiAdRequestStatus) {
            InMobiAdapter.this.f21884g.mo16618a(InMobiAdapter.this, InMobiAdapter.m18770b(inMobiAdRequestStatus.getStatusCode()));
            String str = InMobiAdapter.f21879m;
            Log.d(str, "onAdLoadFailed: " + inMobiAdRequestStatus.getMessage());
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdLoadSucceeded(InMobiNative inMobiNative) {
            System.out.println(" [ InMobi Native Ad ] : onAdLoadSucceeded ");
            Log.d(InMobiAdapter.f21879m, "onAdLoadSucceeded");
            if (inMobiNative != null) {
                NativeAdOptions i = InMobiAdapter.this.f21887j.mo16527i();
                if (i != null) {
                    InMobiAdapter.this.f21888k = Boolean.valueOf(i.m18065f());
                }
                InMobiAdapter inMobiAdapter = InMobiAdapter.this;
                new C2470c(inMobiAdapter, inMobiNative, inMobiAdapter.f21888k, InMobiAdapter.this.f21884g).m29705a(this.f21892a);
            }
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onAdStatusChanged(InMobiNative inMobiNative) {
        }

        @Override // com.inmobi.ads.listeners.NativeAdEventListener
        public void onUserWillLeaveApplication(InMobiNative inMobiNative) {
            Log.d(InMobiAdapter.f21879m, "onUserLeftApplication");
            InMobiAdapter.this.f21884g.mo16598e(InMobiAdapter.this);
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiAdapter$d */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiAdapter$d.class */
    public class C7107d extends VideoEventListener {
        public C7107d() {
        }

        @Override // com.inmobi.ads.listeners.VideoEventListener
        public void onVideoCompleted(InMobiNative inMobiNative) {
            super.onVideoCompleted(inMobiNative);
            Log.d(InMobiAdapter.f21879m, "InMobi native video ad completed");
            InMobiAdapter.this.f21884g.mo16608b(InMobiAdapter.this);
        }

        @Override // com.inmobi.ads.listeners.VideoEventListener
        public void onVideoSkipped(InMobiNative inMobiNative) {
            super.onVideoSkipped(inMobiNative);
            Log.d(InMobiAdapter.f21879m, "InMobi native video skipped");
        }
    }

    /* renamed from: com.google.ads.mediation.inmobi.InMobiAdapter$e */
    /* loaded from: classes-dex2jar.jar:com/google/ads/mediation/inmobi/InMobiAdapter$e.class */
    public static /* synthetic */ class C7108e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f21895a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[InMobiAdRequestStatus.StatusCode.values().length];
            f21895a = iArr;
            try {
                iArr[InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.AD_ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.REQUEST_INVALID.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.REQUEST_PENDING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.EARLY_REFRESH_REQUEST.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.REQUEST_TIMED_OUT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.NETWORK_UNREACHABLE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.NO_FILL.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.SERVER_ERROR.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f21895a[InMobiAdRequestStatus.StatusCode.NO_ERROR.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: b */
    public static int m18770b(InMobiAdRequestStatus.StatusCode statusCode) {
        switch (C7108e.f21895a[statusCode.ordinal()]) {
            case 1:
                return 0;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return 1;
            case 7:
            case 8:
                return 2;
            default:
                return 3;
        }
    }

    public static Boolean isAppInitialized() {
        return f21881o;
    }

    /* renamed from: a */
    public final AdSize m18775a(Context context, AdSize adSize) {
        AdSize adSize2 = new AdSize(adSize.m18133b(), adSize.m18137a());
        ArrayList arrayList = new ArrayList(20);
        arrayList.add(new AdSize(LogSeverity.NOTICE_VALUE, 50));
        arrayList.add(new AdSize(LogSeverity.CRITICAL_VALUE, 100));
        arrayList.add(new AdSize(320, 48));
        arrayList.add(new AdSize(640, 96));
        arrayList.add(new AdSize(320, 50));
        arrayList.add(new AdSize(640, 100));
        arrayList.add(new AdSize(LogSeverity.NOTICE_VALUE, 250));
        arrayList.add(new AdSize(LogSeverity.CRITICAL_VALUE, 500));
        arrayList.add(new AdSize(120, LogSeverity.CRITICAL_VALUE));
        arrayList.add(new AdSize(240, 1200));
        arrayList.add(new AdSize(468, 60));
        arrayList.add(new AdSize(936, 120));
        arrayList.add(new AdSize(728, 90));
        arrayList.add(new AdSize(1456, 180));
        arrayList.add(new AdSize(1024, 768));
        arrayList.add(new AdSize(1536, RecyclerView.AbstractC0495b0.FLAG_MOVED));
        arrayList.add(new AdSize(320, 480));
        arrayList.add(new AdSize(640, 960));
        arrayList.add(new AdSize(1280, LogSeverity.EMERGENCY_VALUE));
        arrayList.add(new AdSize(1600, 2560));
        Log.i(f21879m, arrayList.toString());
        return C2469b.m29718a(context, adSize2, arrayList);
    }

    @Override // com.google.android.gms.ads.mediation.MediationBannerAdapter
    public View getBannerView() {
        return this.f21886i;
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
        AdSize a = m18775a(context, adSize);
        if (a == null) {
            Log.w(f21879m, "Failed to request ad, AdSize is null.");
            if (mediationBannerListener != null) {
                mediationBannerListener.mo16625a(this, 1);
                return;
            }
            return;
        }
        if (!f21881o.booleanValue() && bundle != null) {
            Log.d(f21879m, bundle.getString("accountid"));
            Log.d(f21879m, bundle.getString("placementid"));
            InMobiSdk.init(context, bundle.getString("accountid"), C2473d.m29701a());
            f21881o = true;
        }
        this.f21882e = mediationBannerListener;
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a.m18132b(context), a.m18135a(context));
        if (bundle != null) {
            InMobiBanner inMobiBanner = context instanceof Activity ? new InMobiBanner((Activity) context, Long.parseLong(bundle.getString("placementid"))) : new InMobiBanner(context, Long.parseLong(bundle.getString("placementid")));
            inMobiBanner.setEnableAutoRefresh(false);
            inMobiBanner.setAnimationType(InMobiBanner.AnimationType.ANIMATION_OFF);
            if (mediationAdRequest.mo16528h() != null) {
                inMobiBanner.setKeywords(TextUtils.join(", ", mediationAdRequest.mo16528h()));
            }
            inMobiBanner.setExtras(C2469b.m29714a(mediationAdRequest));
            Bundle bundle3 = bundle2;
            if (bundle2 == null) {
                bundle3 = new Bundle();
            }
            inMobiBanner.setListener(new C7104a());
            if (f21880n.booleanValue()) {
                inMobiBanner.disableHardwareAcceleration();
            }
            FrameLayout frameLayout = new FrameLayout(context);
            this.f21886i = frameLayout;
            frameLayout.setLayoutParams(layoutParams);
            inMobiBanner.setLayoutParams(new LinearLayout.LayoutParams(a.m18132b(context), a.m18135a(context)));
            this.f21886i.addView(inMobiBanner);
            C2469b.m29713a(mediationAdRequest, bundle3);
            inMobiBanner.load();
            return;
        }
        mediationBannerListener.mo16625a(this, 1);
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void requestInterstitialAd(Context context, MediationInterstitialListener mediationInterstitialListener, Bundle bundle, MediationAdRequest mediationAdRequest, Bundle bundle2) {
        if (!f21881o.booleanValue()) {
            InMobiSdk.init(context, bundle.getString("accountid"), C2473d.m29701a());
            f21881o = true;
        }
        this.f21883f = mediationInterstitialListener;
        this.f21885h = new InMobiInterstitial(context, Long.parseLong(bundle.getString("placementid")), new C7105b());
        if (mediationAdRequest.mo16528h() != null) {
            this.f21885h.setKeywords(TextUtils.join(", ", mediationAdRequest.mo16528h()));
        }
        this.f21885h.setExtras(C2469b.m29714a(mediationAdRequest));
        if (f21880n.booleanValue()) {
            this.f21885h.disableHardwareAcceleration();
        }
        C2469b.m29713a(mediationAdRequest, bundle2);
        this.f21885h.load();
    }

    @Override // com.google.android.gms.ads.mediation.MediationNativeAdapter
    public void requestNativeAd(Context context, MediationNativeListener mediationNativeListener, Bundle bundle, NativeMediationAdRequest nativeMediationAdRequest, Bundle bundle2) {
        this.f21887j = nativeMediationAdRequest;
        if (!f21881o.booleanValue() && bundle != null) {
            InMobiSdk.init(context, bundle.getString("accountid"), C2473d.m29701a());
            f21881o = true;
        }
        this.f21884g = mediationNativeListener;
        if (!Boolean.valueOf((nativeMediationAdRequest.mo16530f() && nativeMediationAdRequest.mo16525k()) || nativeMediationAdRequest.mo16532d()).booleanValue()) {
            this.f21884g.mo16618a(this, 1);
            return;
        }
        InMobiNative inMobiNative = new InMobiNative(context, Long.parseLong(bundle.getString("placementid")), new C7106c(context));
        this.f21889l = inMobiNative;
        inMobiNative.setVideoEventListener(new C7107d());
        Set<String> h = nativeMediationAdRequest.mo16528h();
        if (h != null) {
            this.f21889l.setKeywords(TextUtils.join(", ", h));
        }
        this.f21889l.setExtras(C2469b.m29714a(nativeMediationAdRequest));
        C2469b.m29713a(nativeMediationAdRequest, bundle2);
        this.f21889l.load();
    }

    @Override // com.google.android.gms.ads.mediation.MediationInterstitialAdapter
    public void showInterstitial() {
        if (this.f21885h.isReady()) {
            Log.d(f21879m, "Ad is ready to show");
            this.f21885h.show();
        }
    }
}
