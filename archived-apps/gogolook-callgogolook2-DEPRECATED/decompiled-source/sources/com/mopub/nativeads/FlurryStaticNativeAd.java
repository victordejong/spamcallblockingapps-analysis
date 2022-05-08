package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.flurry.android.ads.FlurryAdErrorType;
import com.flurry.android.ads.FlurryAdNative;
import com.flurry.android.ads.FlurryAdNativeAsset;
import com.flurry.android.ads.FlurryAdNativeListener;
import com.flurry.android.ads.FlurryAdTargeting;
import com.mopub.mobileads.FlurryAgentWrapper;
import com.mopub.nativeads.CustomEventNative;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FlurryStaticNativeAd.class */
public class FlurryStaticNativeAd extends StaticNativeAd {

    /* renamed from: B */
    public static final String f9087B = "FlurryStaticNativeAd";
    public static final String EXTRA_APP_CATEGORY = "flurry_appcategorytext";
    public static final String EXTRA_SEC_BRANDING_LOGO = "flurry_brandingimage";
    public static final String EXTRA_STAR_RATING_IMG = "flurry_starratingimage";

    /* renamed from: p */
    public final Context f9089p;

    /* renamed from: q */
    public final CustomEventNative.CustomEventNativeListener f9090q;

    /* renamed from: s */
    public boolean f9092s;

    /* renamed from: t */
    public FlurryAdNative f9093t;

    /* renamed from: u */
    public C6260a f9094u;
    @NonNull

    /* renamed from: y */
    public String f9098y;
    @NonNull

    /* renamed from: z */
    public String f9099z;

    /* renamed from: v */
    public Handler f9095v = new Handler();

    /* renamed from: w */
    public String f9096w = null;

    /* renamed from: x */
    public long f9097x = 0;

    /* renamed from: A */
    public final FlurryAdNativeListener f9088A = new C3955a();

    /* renamed from: r */
    public final FlurryStaticNativeAd f9091r = this;

    /* renamed from: com.mopub.nativeads.FlurryStaticNativeAd$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FlurryStaticNativeAd$a.class */
    public class C3955a implements FlurryAdNativeListener {

        /* renamed from: com.mopub.nativeads.FlurryStaticNativeAd$a$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/FlurryStaticNativeAd$a$a.class */
        public class RunnableC3956a implements Runnable {
            public RunnableC3956a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                FlurryStaticNativeAd.this.notifyAdClicked();
            }
        }

        public C3955a() {
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onAppExit(FlurryAdNative flurryAdNative) {
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onClicked(FlurryAdNative flurryAdNative) {
            if (FlurryStaticNativeAd.this.f9097x > 0) {
                FlurryStaticNativeAd.this.f9095v.postDelayed(new RunnableC3956a(), FlurryStaticNativeAd.this.f9097x);
            } else {
                FlurryStaticNativeAd.this.notifyAdClicked();
            }
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onCloseFullscreen(FlurryAdNative flurryAdNative) {
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onCollapsed(FlurryAdNative flurryAdNative) {
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onError(FlurryAdNative flurryAdNative, FlurryAdErrorType flurryAdErrorType, int i) {
            if (flurryAdErrorType.equals(FlurryAdErrorType.FETCH)) {
                FlurryCustomEventNative.sFlurryNativeAds.remove(FlurryStaticNativeAd.this.f9093t);
                FlurryStaticNativeAd.this.f9091r.m30172a(flurryAdNative, i);
            }
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onExpanded(FlurryAdNative flurryAdNative) {
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onFetched(FlurryAdNative flurryAdNative) {
            FlurryCustomEventNative.sFlurryNativeAds.remove(FlurryStaticNativeAd.this.f9093t);
            FlurryStaticNativeAd.this.f9091r.m30173a(flurryAdNative);
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onImpressionLogged(FlurryAdNative flurryAdNative) {
            FlurryStaticNativeAd.this.notifyAdImpressed();
        }

        @Override // com.flurry.android.ads.FlurryAdNativeListener
        public void onShowFullscreen(FlurryAdNative flurryAdNative) {
        }
    }

    public FlurryStaticNativeAd(Context context, boolean z, FlurryAdNative flurryAdNative, @NonNull String str, @NonNull String str2, C6260a aVar, CustomEventNative.CustomEventNativeListener customEventNativeListener) {
        this.f9092s = false;
        this.f9089p = context;
        this.f9093t = flurryAdNative;
        this.f9098y = str;
        this.f9099z = str2;
        this.f9094u = aVar;
        this.f9090q = customEventNativeListener;
        this.f9092s = z;
    }

    /* renamed from: a */
    public final Double m30168a(@Nullable String str) {
        Double d;
        if (str != null) {
            String[] split = str.split("/");
            if (split.length == 2) {
                try {
                    d = Double.valueOf((Integer.valueOf(split[0]).intValue() / Integer.valueOf(split[1]).intValue()) * 5.0d);
                } catch (NumberFormatException e) {
                }
                return d;
            }
        }
        d = null;
        return d;
    }

    /* renamed from: a */
    public final void m30173a(FlurryAdNative flurryAdNative) {
        synchronized (this) {
            if (flurryAdNative != null) {
                if (this.f9094u != null) {
                    this.f9094u.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
                }
                m30167b(flurryAdNative);
                FlurryCustomEventNative.sFlurryNativeAds.remove(this.f9093t);
            } else if (this.f9094u != null) {
                this.f9094u.m23467b(C6260a.m23469a(NativeErrorCode.NETWORK_NO_FILL.name(), null));
            }
        }
    }

    /* renamed from: a */
    public final void m30172a(FlurryAdNative flurryAdNative, int i) {
        synchronized (this) {
            if (this.f9094u != null) {
                C6260a aVar = this.f9094u;
                String name = NativeErrorCode.NETWORK_NO_FILL.name();
                aVar.m23467b(C6260a.m23469a(name, "errorCode: " + i));
            }
            C6219a.m23549a(f9087B, this.f9098y, this.f9099z, NativeErrorCode.NETWORK_NO_FILL.toString());
            if (this.f9090q != null) {
                this.f9090q.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            }
        }
    }

    /* renamed from: b */
    public final void m30167b(FlurryAdNative flurryAdNative) {
        synchronized (this) {
            if (flurryAdNative != null) {
                this.f9093t = flurryAdNative;
                FlurryAdNativeAsset asset = this.f9093t.getAsset("secHqImage");
                FlurryAdNativeAsset asset2 = this.f9093t.getAsset("secImage");
                FlurryAdNativeAsset asset3 = this.f9093t.getAsset("secBrandingLogo");
                FlurryAdNativeAsset asset4 = this.f9093t.getAsset("headline");
                FlurryAdNativeAsset asset5 = this.f9093t.getAsset("callToAction");
                FlurryAdNativeAsset asset6 = this.f9093t.getAsset("source");
                if (asset != null && !TextUtils.isEmpty(this.f9096w)) {
                    setMainImageUrl(this.f9096w);
                } else if (asset != null && !TextUtils.isEmpty(asset.getValue())) {
                    setMainImageUrl(asset.getValue());
                }
                if (asset2 != null && !TextUtils.isEmpty(asset2.getValue())) {
                    setIconImageUrl(asset2.getValue());
                }
                if (asset4 != null) {
                    setTitle(asset4.getValue());
                }
                if (asset6 != null) {
                    setText(asset6.getValue());
                }
                if (asset3 != null) {
                    setPrivacyInformationIconImageUrl(asset3.getValue());
                }
                setPrivacyInformationIconClickThroughUrl("https://policies.yahoo.com/us/en/yahoo/privacy/index.html");
                if (m30164d()) {
                    FlurryAdNativeAsset asset7 = this.f9093t.getAsset("secHqRatingImg");
                    if (asset7 == null || TextUtils.isEmpty(asset7.getValue())) {
                        FlurryAdNativeAsset asset8 = this.f9093t.getAsset("secRatingImg");
                        if (asset8 != null && !TextUtils.isEmpty(asset8.getValue())) {
                            addExtra(EXTRA_STAR_RATING_IMG, asset8.getValue());
                        }
                    } else {
                        addExtra(EXTRA_STAR_RATING_IMG, asset7.getValue());
                    }
                    FlurryAdNativeAsset asset9 = this.f9093t.getAsset("appCategory");
                    if (asset9 != null) {
                        addExtra(EXTRA_APP_CATEGORY, asset9.getValue());
                    }
                    FlurryAdNativeAsset asset10 = this.f9093t.getAsset("appRating");
                    if (asset10 != null) {
                        setStarRating(m30168a(asset10.getValue()));
                    }
                }
                if (asset5 != null) {
                    setCallToAction(asset5.getValue());
                }
                setImpressionMinTimeViewed(500);
                this.f9090q.onNativeAdLoaded(this.f9091r);
            }
        }
    }

    @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
    public void clear(@NonNull View view) {
        super.clear(view);
        this.f9093t.removeTrackingView();
    }

    /* renamed from: d */
    public final boolean m30164d() {
        return (this.f9093t.getAsset("secRatingImg") == null && this.f9093t.getAsset("secHqRatingImg") == null && this.f9093t.getAsset("appCategory") == null) ? false : true;
    }

    @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        super.destroy();
        this.f9093t.destroy();
        FlurryAgentWrapper.getInstance().endSession(this.f9089p);
    }

    public void fetchAd() {
        synchronized (this) {
            if (this.f9089p != null) {
                if (this.f9092s) {
                    FlurryAdTargeting flurryAdTargeting = new FlurryAdTargeting();
                    flurryAdTargeting.setEnableTestAds(true);
                    this.f9093t.setTargeting(flurryAdTargeting);
                }
                this.f9093t.setListener(this.f9088A);
                if (this.f9094u != null) {
                    this.f9094u.m23456j();
                }
                this.f9093t.fetchAd();
            }
        }
    }

    public String getTestGifUrl() {
        return this.f9096w;
    }

    public boolean isVideoAd() {
        return this.f9093t.isVideoAd();
    }

    public void loadVideoIntoView(@NonNull ViewGroup viewGroup) {
        FlurryAdNativeAsset asset = this.f9093t.getAsset("videoUrl");
        if (asset != null) {
            asset.loadAssetIntoView(viewGroup);
        }
    }

    @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
    public void prepare(@NonNull View view) {
        super.prepare(view);
        this.f9093t.setTrackingView(view);
    }

    public void setNotifyClickDelay(long j) {
        this.f9097x = j;
    }

    public void setTestGifUrl(String str) {
        this.f9096w = str;
    }
}
