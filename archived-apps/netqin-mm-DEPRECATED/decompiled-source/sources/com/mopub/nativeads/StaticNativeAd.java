package com.mopub.nativeads;

import android.view.View;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/StaticNativeAd.class */
public abstract class StaticNativeAd extends BaseNativeAd implements ImpressionInterface, ClickInterface {

    /* renamed from: e */
    public String f34926e;

    /* renamed from: f */
    public String f34927f;

    /* renamed from: g */
    public String f34928g;

    /* renamed from: h */
    public String f34929h;

    /* renamed from: i */
    public String f34930i;

    /* renamed from: j */
    public String f34931j;

    /* renamed from: k */
    public Double f34932k;

    /* renamed from: l */
    public String f34933l;

    /* renamed from: m */
    public String f34934m;

    /* renamed from: n */
    public String f34935n;

    /* renamed from: o */
    public boolean f34936o;

    /* renamed from: p */
    public int f34937p = 1000;

    /* renamed from: q */
    public int f34938q = 50;

    /* renamed from: r */
    public Integer f34939r = null;

    /* renamed from: s */
    public final Map<String, Object> f34940s = new HashMap();

    public final void addExtra(String str, Object obj) {
        if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            this.f34940s.put(str, obj);
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        invalidate();
    }

    public final String getCallToAction() {
        return this.f34929h;
    }

    public final String getClickDestinationUrl() {
        return this.f34928g;
    }

    public final Object getExtra(String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.f34940s.get(str);
    }

    public final Map<String, Object> getExtras() {
        return new HashMap(this.f34940s);
    }

    public final String getIconImageUrl() {
        return this.f34927f;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinPercentageViewed() {
        return this.f34938q;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinTimeViewed() {
        return this.f34937p;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final Integer getImpressionMinVisiblePx() {
        return this.f34939r;
    }

    public final String getMainImageUrl() {
        return this.f34926e;
    }

    public final String getPrivacyInformationIconClickThroughUrl() {
        return this.f34933l;
    }

    public String getPrivacyInformationIconImageUrl() {
        return this.f34934m;
    }

    public String getSponsored() {
        return this.f34935n;
    }

    public final Double getStarRating() {
        return this.f34932k;
    }

    public final String getText() {
        return this.f34931j;
    }

    public final String getTitle() {
        return this.f34930i;
    }

    public void handleClick(View view) {
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final boolean isImpressionRecorded() {
        return this.f34936o;
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(View view) {
    }

    public void recordImpression(View view) {
    }

    public final void setCallToAction(String str) {
        this.f34929h = str;
    }

    public final void setClickDestinationUrl(String str) {
        this.f34928g = str;
    }

    public final void setIconImageUrl(String str) {
        this.f34927f = str;
    }

    public final void setImpressionMinPercentageViewed(int i) {
        if (i < 0 || i > 100) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring impressionMinTimeViewed that's not a percent [0, 100]: " + i);
            return;
        }
        this.f34938q = i;
    }

    public final void setImpressionMinTimeViewed(int i) {
        if (i > 0) {
            this.f34937p = i;
            return;
        }
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
        MoPubLog.log(adLogEvent, "Ignoring non-positive impressionMinTimeViewed: " + i);
    }

    public final void setImpressionMinVisiblePx(Integer num) {
        if (num == null || num.intValue() <= 0) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring null or non-positive impressionMinVisiblePx: " + num);
            return;
        }
        this.f34939r = num;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final void setImpressionRecorded() {
        this.f34936o = true;
    }

    public final void setMainImageUrl(String str) {
        this.f34926e = str;
    }

    public final void setPrivacyInformationIconClickThroughUrl(String str) {
        this.f34933l = str;
    }

    public final void setPrivacyInformationIconImageUrl(String str) {
        this.f34934m = str;
    }

    public final void setSponsored(String str) {
        this.f34935n = str;
    }

    public final void setStarRating(Double d) {
        if (d == null) {
            this.f34932k = null;
        } else if (d.doubleValue() < 0.0d || d.doubleValue() > 5.0d) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring attempt to set invalid star rating (" + d + "). Must be between 0.0 and 5.0.");
        } else {
            this.f34932k = d;
        }
    }

    public final void setText(String str) {
        this.f34931j = str;
    }

    public final void setTitle(String str) {
        this.f34930i = str;
    }
}
