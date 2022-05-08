package com.mopub.nativeads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.media2.session.MediaSessionImplBase;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/StaticNativeAd.class */
public abstract class StaticNativeAd extends BaseNativeAd implements ImpressionInterface, ClickInterface {
    @Nullable

    /* renamed from: a */
    public String f9279a;
    @Nullable

    /* renamed from: b */
    public String f9280b;
    @Nullable

    /* renamed from: c */
    public String f9281c;
    @Nullable

    /* renamed from: d */
    public String f9282d;
    @Nullable

    /* renamed from: e */
    public String f9283e;
    @Nullable

    /* renamed from: f */
    public String f9284f;
    @Nullable

    /* renamed from: g */
    public Double f9285g;
    @Nullable

    /* renamed from: h */
    public String f9286h;
    @Nullable

    /* renamed from: i */
    public String f9287i;
    @Nullable

    /* renamed from: j */
    public String f9288j;

    /* renamed from: k */
    public boolean f9289k;

    /* renamed from: l */
    public int f9290l = 1000;

    /* renamed from: m */
    public int f9291m = 50;

    /* renamed from: n */
    public Integer f9292n = null;
    @NonNull

    /* renamed from: o */
    public final Map<String, Object> f9293o = new HashMap();

    public final void addExtra(@NonNull String str, @Nullable Object obj) {
        if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
            this.f9293o.put(str, obj);
        }
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void clear(@NonNull View view) {
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        invalidate();
    }

    @Nullable
    public final String getCallToAction() {
        return this.f9282d;
    }

    @Nullable
    public final String getClickDestinationUrl() {
        return this.f9281c;
    }

    @Nullable
    public final Object getExtra(@NonNull String str) {
        if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
            return null;
        }
        return this.f9293o.get(str);
    }

    @NonNull
    public final Map<String, Object> getExtras() {
        return new HashMap(this.f9293o);
    }

    @Nullable
    public final String getIconImageUrl() {
        return this.f9280b;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinPercentageViewed() {
        return this.f9291m;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final int getImpressionMinTimeViewed() {
        return this.f9290l;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final Integer getImpressionMinVisiblePx() {
        return this.f9292n;
    }

    @Nullable
    public final String getMainImageUrl() {
        return this.f9279a;
    }

    @Nullable
    public final String getPrivacyInformationIconClickThroughUrl() {
        return this.f9286h;
    }

    @Nullable
    public String getPrivacyInformationIconImageUrl() {
        return this.f9287i;
    }

    @Nullable
    public String getSponsored() {
        return this.f9288j;
    }

    @Nullable
    public final Double getStarRating() {
        return this.f9285g;
    }

    @Nullable
    public final String getText() {
        return this.f9284f;
    }

    @Nullable
    public final String getTitle() {
        return this.f9283e;
    }

    public void handleClick(@NonNull View view) {
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final boolean isImpressionRecorded() {
        return this.f9289k;
    }

    @Override // com.mopub.nativeads.BaseNativeAd
    public void prepare(@NonNull View view) {
    }

    public void recordImpression(@NonNull View view) {
    }

    public final void setCallToAction(@Nullable String str) {
        this.f9282d = str;
    }

    public final void setClickDestinationUrl(@Nullable String str) {
        this.f9281c = str;
    }

    public final void setIconImageUrl(@Nullable String str) {
        this.f9280b = str;
    }

    public final void setImpressionMinPercentageViewed(int i) {
        if (i < 0 || i > 100) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring impressionMinTimeViewed that's not a percent [0, 100]: " + i);
            return;
        }
        this.f9291m = i;
    }

    public final void setImpressionMinTimeViewed(int i) {
        if (i > 0) {
            this.f9290l = i;
            return;
        }
        MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
        MoPubLog.log(adLogEvent, "Ignoring non-positive impressionMinTimeViewed: " + i);
    }

    public final void setImpressionMinVisiblePx(@Nullable Integer num) {
        if (num == null || num.intValue() <= 0) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring null or non-positive impressionMinVisiblePx: " + num);
            return;
        }
        this.f9292n = num;
    }

    @Override // com.mopub.nativeads.ImpressionInterface
    public final void setImpressionRecorded() {
        this.f9289k = true;
    }

    public final void setMainImageUrl(@Nullable String str) {
        this.f9279a = str;
    }

    public final void setPrivacyInformationIconClickThroughUrl(@Nullable String str) {
        this.f9286h = str;
    }

    public final void setPrivacyInformationIconImageUrl(@Nullable String str) {
        this.f9287i = str;
    }

    public final void setSponsored(@Nullable String str) {
        this.f9288j = str;
    }

    public final void setStarRating(@Nullable Double d) {
        if (d == null) {
            this.f9285g = null;
        } else if (d.doubleValue() < 0.0d || d.doubleValue() > 5.0d) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Ignoring attempt to set invalid star rating (" + d + "). Must be between 0.0 and 5.0" + MediaSessionImplBase.DEFAULT_MEDIA_SESSION_TAG_DELIM);
        } else {
            this.f9285g = d;
        }
    }

    public final void setText(@Nullable String str) {
        this.f9284f = str;
    }

    public final void setTitle(@Nullable String str) {
        this.f9283e = str;
    }
}
