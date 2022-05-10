package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewDisplayErrorCode;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkSettings;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventBanner;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner.class */
public class AppLovinBanner extends CustomEventBanner {

    /* renamed from: c */
    public static final String f34018c = "AppLovinBanner";

    /* renamed from: d */
    public static final Handler f34019d = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    public static String f34020e;

    /* renamed from: b */
    public AppLovinAdapterConfiguration f34021b = new AppLovinAdapterConfiguration();

    /* renamed from: com.mopub.mobileads.AppLovinBanner$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner$a.class */
    public class C8757a implements AppLovinAdDisplayListener {
        public C8757a(AppLovinBanner appLovinBanner) {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, AppLovinBanner.f34018c, "Banner displayed");
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, AppLovinBanner.f34018c, "Banner dismissed");
        }
    }

    /* renamed from: com.mopub.mobileads.AppLovinBanner$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner$b.class */
    public class C8758b implements AppLovinAdClickListener {

        /* renamed from: a */
        public final /* synthetic */ CustomEventBanner.CustomEventBannerListener f34022a;

        public C8758b(AppLovinBanner appLovinBanner, CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.f34022a = customEventBannerListener;
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CLICKED, AppLovinBanner.f34018c);
            CustomEventBanner.CustomEventBannerListener customEventBannerListener = this.f34022a;
            if (customEventBannerListener != null) {
                customEventBannerListener.onBannerClicked();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AppLovinBanner$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner$c.class */
    public class C8759c implements AppLovinAdViewEventListener {

        /* renamed from: a */
        public final /* synthetic */ CustomEventBanner.CustomEventBannerListener f34023a;

        public C8759c(AppLovinBanner appLovinBanner, CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.f34023a = customEventBannerListener;
        }

        @Override // com.applovin.adview.AppLovinAdViewEventListener
        public void adClosedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
            MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, AppLovinBanner.f34018c, "Banner closed fullscreen");
            CustomEventBanner.CustomEventBannerListener customEventBannerListener = this.f34023a;
            if (customEventBannerListener != null) {
                customEventBannerListener.onBannerCollapsed();
            }
        }

        @Override // com.applovin.adview.AppLovinAdViewEventListener
        public void adFailedToDisplay(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView, AppLovinAdViewDisplayErrorCode appLovinAdViewDisplayErrorCode) {
        }

        @Override // com.applovin.adview.AppLovinAdViewEventListener
        public void adLeftApplication(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
            MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, AppLovinBanner.f34018c, "Banner left application");
        }

        @Override // com.applovin.adview.AppLovinAdViewEventListener
        public void adOpenedFullscreen(AppLovinAd appLovinAd, AppLovinAdView appLovinAdView) {
            MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, AppLovinBanner.f34018c, "Banner opened fullscreen");
            CustomEventBanner.CustomEventBannerListener customEventBannerListener = this.f34023a;
            if (customEventBannerListener != null) {
                customEventBannerListener.onBannerExpanded();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.AppLovinBanner$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner$d.class */
    public class C8760d implements AppLovinAdLoadListener {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdView f34024a;

        /* renamed from: b */
        public final /* synthetic */ CustomEventBanner.CustomEventBannerListener f34025b;

        /* renamed from: com.mopub.mobileads.AppLovinBanner$d$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner$d$a.class */
        public class RunnableC8761a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AppLovinAd f34026a;

            public RunnableC8761a(AppLovinAd appLovinAd) {
                this.f34026a = appLovinAd;
            }

            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.LOAD_SUCCESS, AppLovinBanner.f34018c);
                MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, AppLovinBanner.f34018c);
                C8760d.this.f34024a.renderAd(this.f34026a);
                MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.SHOW_SUCCESS, AppLovinBanner.f34018c);
                try {
                    if (C8760d.this.f34025b != null) {
                        C8760d.this.f34025b.onBannerLoaded(C8760d.this.f34024a);
                    }
                } catch (Throwable th) {
                    MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Unable to notify listener of successful ad load.", th);
                }
            }
        }

        /* renamed from: com.mopub.mobileads.AppLovinBanner$d$b */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/AppLovinBanner$d$b.class */
        public class RunnableC8762b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f34028a;

            public RunnableC8762b(int i) {
                this.f34028a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, AppLovinBanner.f34018c, "Failed to load banner ad with code: ", Integer.valueOf(this.f34028a));
                MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.LOAD_FAILED, AppLovinBanner.f34018c, Integer.valueOf(AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34028a).getIntCode()), AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34028a));
                try {
                    if (C8760d.this.f34025b != null) {
                        C8760d.this.f34025b.onBannerFailed(AppLovinAdapterConfiguration.getMoPubErrorCode(this.f34028a));
                    }
                } catch (Throwable th) {
                    MoPubLog.log(AppLovinBanner.m4438f(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Unable to notify listener of failure to receive ad.", th);
                }
            }
        }

        public C8760d(AppLovinBanner appLovinBanner, AppLovinAdView appLovinAdView, CustomEventBanner.CustomEventBannerListener customEventBannerListener) {
            this.f34024a = appLovinAdView;
            this.f34025b = customEventBannerListener;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            AppLovinBanner.m4441b(new RunnableC8761a(appLovinAd));
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            AppLovinBanner.m4441b(new RunnableC8762b(i));
        }
    }

    /* renamed from: a */
    public static AppLovinSdk m4444a(Context context) {
        if (AppLovinAdapterConfiguration.m4447a(context)) {
            return AppLovinSdk.getInstance(context);
        }
        String sdkKey = AppLovinAdapterConfiguration.getSdkKey();
        return !TextUtils.isEmpty(sdkKey) ? AppLovinSdk.getInstance(sdkKey, new AppLovinSdkSettings(), context) : null;
    }

    /* renamed from: b */
    public static void m4441b(Runnable runnable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            runnable.run();
        } else {
            f34019d.post(runnable);
        }
    }

    /* renamed from: f */
    public static String m4438f() {
        return f34020e;
    }

    /* renamed from: a */
    public final AppLovinAdSize m4442a(Map<String, Object> map) {
        AppLovinAdSize appLovinAdSize;
        if (map == null || map.isEmpty()) {
            MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, f34018c, "No serverExtras provided");
            return null;
        }
        AppLovinAdSize appLovinAdSize2 = AppLovinAdSize.BANNER;
        try {
            int intValue = ((Integer) map.get(DataKeys.AD_WIDTH)).intValue();
            int intValue2 = ((Integer) map.get(DataKeys.AD_HEIGHT)).intValue();
            if (intValue <= 0 || intValue2 <= 0) {
                String f = m4438f();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                String str = f34018c;
                MoPubLog.log(f, adapterLogEvent, str, "Invalid width (" + intValue + ") and height (" + intValue2 + ") provided");
                appLovinAdSize = appLovinAdSize2;
            } else if (intValue < 728 || intValue2 < 90) {
                appLovinAdSize = appLovinAdSize2;
                if (intValue >= 300) {
                    appLovinAdSize = appLovinAdSize2;
                    if (intValue2 >= 250) {
                        appLovinAdSize = AppLovinAdSize.MREC;
                    }
                }
            } else {
                appLovinAdSize = AppLovinAdSize.LEADER;
            }
        } catch (Throwable th) {
            MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Encountered error while parsing width and height from serverExtras", th);
            appLovinAdSize = appLovinAdSize2;
        }
        return appLovinAdSize;
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: a */
    public void mo4136a(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        if (map2 == null || map2.isEmpty()) {
            MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, f34018c, "No serverExtras provided");
            if (customEventBannerListener != null) {
                customEventBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            return;
        }
        f34020e = map2.get("zone_id");
        AppLovinPrivacySettings.setHasUserConsent(MoPub.canCollectPersonalInformation(), context);
        if (AppLovinSdk.VERSION_CODE >= 710 || (context instanceof Activity)) {
            AppLovinAdSize a = m4442a(map);
            if (a != null) {
                String str = map2.get(DataKeys.ADM_KEY);
                boolean z = !TextUtils.isEmpty(str);
                MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, f34018c, "Requesting AppLovin banner with serverExtras: " + map2 + ", localExtras: " + map + " and has ad markup: " + z);
                AppLovinSdk a2 = m4444a(context);
                if (a2 == null) {
                    MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, f34018c, "AppLovinSdk instance is null likely because no AppLovin SDK key is available. Failing ad request.");
                    MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34018c, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                    if (customEventBannerListener != null) {
                        customEventBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                        return;
                    }
                    return;
                }
                a2.setMediationProvider("mopub");
                a2.setPluginVersion("MoPub-9.12.2.0");
                this.f34021b.setCachedInitializationParameters(context, map2);
                AppLovinAdView appLovinAdView = new AppLovinAdView(a2, a, context);
                appLovinAdView.setAdDisplayListener(new C8757a(this));
                appLovinAdView.setAdClickListener(new C8758b(this, customEventBannerListener));
                appLovinAdView.setAdViewEventListener(new C8759c(this, customEventBannerListener));
                C8760d dVar = new C8760d(this, appLovinAdView, customEventBannerListener);
                if (z) {
                    a2.getAdService().loadNextAdForAdToken(str, dVar);
                    MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34018c);
                } else if (!TextUtils.isEmpty(f34020e)) {
                    a2.getAdService().loadNextAdForZoneId(f34020e, dVar);
                    MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34018c);
                } else {
                    a2.getAdService().loadNextAd(a, dVar);
                    MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, f34018c);
                }
            } else {
                MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, f34018c, "Unable to request AppLovin banner");
                MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34018c, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                if (customEventBannerListener != null) {
                    customEventBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                }
            }
        } else {
            MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.CUSTOM, f34018c, "Unable to request AppLovin banner. Invalid context provided");
            MoPubLog.log(m4438f(), MoPubLog.AdapterLogEvent.LOAD_FAILED, f34018c, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            if (customEventBannerListener != null) {
                customEventBannerListener.onBannerFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner
    /* renamed from: b */
    public void mo4132b() {
    }
}
