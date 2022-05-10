package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.mobileads.factories.CustomEventBannerFactory;
import java.util.Map;
import java.util.TreeMap;
import p131c.p421j.p424b.C6644c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBannerAdapter.class */
public class CustomEventBannerAdapter implements InternalCustomEventBannerListener {
    public static final int DEFAULT_BANNER_TIMEOUT_DELAY = 10000;

    /* renamed from: a */
    public boolean f34070a;

    /* renamed from: b */
    public MoPubView f34071b;

    /* renamed from: c */
    public Context f34072c;

    /* renamed from: d */
    public CustomEventBanner f34073d;

    /* renamed from: e */
    public Map<String, Object> f34074e;

    /* renamed from: f */
    public Map<String, String> f34075f;

    /* renamed from: l */
    public C6644c f34081l;

    /* renamed from: i */
    public int f34078i = Integer.MIN_VALUE;

    /* renamed from: j */
    public int f34079j = Integer.MIN_VALUE;

    /* renamed from: k */
    public boolean f34080k = false;

    /* renamed from: g */
    public final Handler f34076g = new Handler();

    /* renamed from: h */
    public final Runnable f34077h = new RunnableC8768a();

    /* renamed from: com.mopub.mobileads.CustomEventBannerAdapter$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBannerAdapter$a.class */
    public class RunnableC8768a implements Runnable {
        public RunnableC8768a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "CustomEventBannerAdapter failed with code " + MoPubErrorCode.NETWORK_TIMEOUT.getIntCode() + " and message " + MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventBannerAdapter.this.onBannerFailed(MoPubErrorCode.NETWORK_TIMEOUT);
            CustomEventBannerAdapter.this.invalidate();
        }
    }

    /* renamed from: com.mopub.mobileads.CustomEventBannerAdapter$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBannerAdapter$b.class */
    public class C8769b implements C6644c.AbstractC6648d {
        public C8769b() {
        }

        @Override // p131c.p421j.p424b.C6644c.AbstractC6648d
        public void onVisibilityChanged() {
            CustomEventBannerAdapter.this.f34071b.m4306n();
            if (CustomEventBannerAdapter.this.f34073d != null) {
                CustomEventBannerAdapter.this.f34073d.mo4130c();
            }
            CustomEventBannerAdapter.this.f34071b.m4307m();
        }
    }

    public CustomEventBannerAdapter(MoPubView moPubView, String str, Map<String, String> map, long j, AdReport adReport) {
        Preconditions.checkNotNull(map);
        this.f34071b = moPubView;
        this.f34072c = moPubView.getContext();
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "Attempting to invoke custom event: " + str);
        try {
            this.f34073d = CustomEventBannerFactory.create(str);
            this.f34075f = new TreeMap(map);
            m4403d();
            this.f34074e = this.f34071b.getLocalExtras();
            if (this.f34071b.getLocation() != null) {
                this.f34074e.put("location", this.f34071b.getLocation());
            }
            this.f34074e.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(j));
            this.f34074e.put(DataKeys.AD_REPORT_KEY, adReport);
            this.f34074e.put(DataKeys.AD_WIDTH, Integer.valueOf(this.f34071b.getAdWidth()));
            this.f34074e.put(DataKeys.AD_HEIGHT, Integer.valueOf(this.f34071b.getAdHeight()));
            this.f34074e.put(DataKeys.BANNER_IMPRESSION_PIXEL_COUNT_ENABLED, Boolean.valueOf(this.f34080k));
        } catch (Exception e) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Couldn't locate or instantiate custom event: " + str + ".");
            this.f34071b.m4318b(MoPubErrorCode.ADAPTER_NOT_FOUND);
        }
    }

    /* renamed from: a */
    public final void m4408a() {
        this.f34076g.removeCallbacks(this.f34077h);
    }

    /* renamed from: b */
    public final int m4406b() {
        MoPubView moPubView = this.f34071b;
        if (moPubView == null) {
            return 10000;
        }
        return moPubView.m4325a(10000).intValue();
    }

    /* renamed from: c */
    public boolean m4404c() {
        return this.f34070a;
    }

    /* renamed from: d */
    public final void m4403d() {
        String str = this.f34075f.get(DataKeys.BANNER_IMPRESSION_MIN_VISIBLE_DIPS);
        String str2 = this.f34075f.get(DataKeys.BANNER_IMPRESSION_MIN_VISIBLE_MS);
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            try {
                this.f34078i = Integer.parseInt(str);
            } catch (NumberFormatException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-pixels");
            }
            try {
                this.f34079j = Integer.parseInt(str2);
            } catch (NumberFormatException e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Cannot parse integer from header banner-impression-min-ms");
            }
            if (this.f34078i > 0 && this.f34079j >= 0) {
                this.f34080k = true;
            }
        }
    }

    @ReflectionTarget
    public void invalidate() {
        CustomEventBanner customEventBanner = this.f34073d;
        if (customEventBanner != null) {
            try {
                customEventBanner.mo4132b();
            } catch (Exception e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Invalidating a custom event banner threw an exception", e);
            }
        }
        C6644c cVar = this.f34081l;
        if (cVar != null) {
            try {
                cVar.m20210a();
            } catch (Exception e2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, "Destroying a banner visibility tracker threw an exception", e2);
            }
            this.f34081l = null;
        }
        this.f34072c = null;
        this.f34073d = null;
        this.f34074e = null;
        this.f34075f = null;
        this.f34070a = true;
    }

    @ReflectionTarget
    public void loadAd() {
        if (!m4404c() && this.f34073d != null) {
            this.f34076g.postDelayed(this.f34077h, m4406b());
            try {
                this.f34073d.mo4136a(this.f34072c, this, this.f34074e, this.f34075f);
            } catch (Exception e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "loadAd() failed with code " + MoPubErrorCode.INTERNAL_ERROR.getIntCode() + " and message " + MoPubErrorCode.INTERNAL_ERROR);
                onBannerFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerClicked() {
        MoPubView moPubView;
        if (!m4404c() && (moPubView = this.f34071b) != null) {
            moPubView.m4310j();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerCollapsed() {
        if (!m4404c()) {
            this.f34071b.m4314f();
            this.f34071b.m4319b();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerExpanded() {
        if (!m4404c()) {
            this.f34071b.m4313g();
            this.f34071b.m4316d();
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerFailed(MoPubErrorCode moPubErrorCode) {
        if (!m4404c()) {
            m4408a();
            if (this.f34071b != null) {
                MoPubErrorCode moPubErrorCode2 = moPubErrorCode;
                if (moPubErrorCode == null) {
                    moPubErrorCode2 = MoPubErrorCode.UNSPECIFIED;
                }
                this.f34071b.m4318b(moPubErrorCode2);
            }
        }
    }

    public void onBannerImpression() {
        CustomEventBanner customEventBanner;
        if (!m4404c() && this.f34071b != null && (customEventBanner = this.f34073d) != null && !customEventBanner.m4409a()) {
            this.f34071b.m4306n();
            if (this.f34080k) {
                this.f34073d.mo4130c();
            }
        }
    }

    @Override // com.mopub.mobileads.CustomEventBanner.CustomEventBannerListener
    public void onBannerLoaded(View view) {
        CustomEventBanner customEventBanner;
        CustomEventBanner customEventBanner2;
        if (!m4404c()) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onBannerLoaded() success. Attempting to show.");
            m4408a();
            MoPubView moPubView = this.f34071b;
            if (moPubView != null) {
                moPubView.m4315e();
                if (this.f34080k && (customEventBanner2 = this.f34073d) != null && customEventBanner2.m4409a()) {
                    this.f34071b.m4311i();
                    C6644c cVar = new C6644c(this.f34072c, this.f34071b, view, this.f34078i, this.f34079j);
                    this.f34081l = cVar;
                    cVar.m20208a(new C8769b());
                }
                this.f34071b.setAdContentView(view);
                if (!this.f34080k && (customEventBanner = this.f34073d) != null && customEventBanner.m4409a() && !(view instanceof HtmlBannerWebView)) {
                    this.f34071b.m4306n();
                }
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "onBannerLoaded() - Show successful.");
                return;
            }
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "onBannerLoaded() - Show failed with code " + MoPubErrorCode.INTERNAL_ERROR.getIntCode() + " and message " + MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    public void onLeaveApplication() {
        onBannerClicked();
    }

    @Override // com.mopub.mobileads.InternalCustomEventBannerListener
    public void onPauseAutoRefresh() {
        MoPubView moPubView = this.f34071b;
        if (moPubView != null) {
            moPubView.m4313g();
        }
    }

    @Override // com.mopub.mobileads.InternalCustomEventBannerListener
    public void onResumeAutoRefresh() {
        MoPubView moPubView = this.f34071b;
        if (moPubView != null) {
            moPubView.m4314f();
        }
    }
}
