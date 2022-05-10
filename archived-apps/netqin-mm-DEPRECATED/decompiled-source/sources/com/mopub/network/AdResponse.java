package com.mopub.network;

import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.util.DateAndTime;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/network/AdResponse.class */
public class AdResponse implements Serializable {
    public static final long serialVersionUID = 1;
    public final Integer mAdTimeoutDelayMillis;
    public final String mAdType;
    public final String mAdUnitId;
    public final List<String> mAfterLoadFailUrls;
    public final List<String> mAfterLoadSuccessUrls;
    public final List<String> mAfterLoadUrls;
    public final String mBeforeLoadUrl;
    public final MoPub.BrowserAgent mBrowserAgent;
    public final String mClickTrackingUrl;
    public final String mCustomEventClassName;
    public final String mDspCreativeId;
    public final String mFailoverUrl;
    public final String mFullAdType;
    public final Integer mHeight;
    public final ImpressionData mImpressionData;
    public final List<String> mImpressionTrackingUrls;
    public final JSONObject mJsonBody;
    public final String mNetworkType;
    public final Integer mRefreshTimeMillis;
    public final String mRequestId;
    public final String mResponseBody;
    public final String mRewardedCurrencies;
    public final Integer mRewardedDuration;
    public final String mRewardedVideoCompletionUrl;
    public final String mRewardedVideoCurrencyAmount;
    public final String mRewardedVideoCurrencyName;
    public final Map<String, String> mServerExtras;
    public final boolean mShouldRewardOnClick;
    public final long mTimestamp;
    public final Integer mWidth;

    /* loaded from: classes2-dex2jar.jar:com/mopub/network/AdResponse$Builder.class */
    public static class Builder {

        /* renamed from: A */
        public String f34989A;

        /* renamed from: B */
        public MoPub.BrowserAgent f34990B;

        /* renamed from: a */
        public String f34992a;

        /* renamed from: b */
        public String f34993b;

        /* renamed from: c */
        public String f34994c;

        /* renamed from: d */
        public String f34995d;

        /* renamed from: e */
        public String f34996e;

        /* renamed from: f */
        public String f34997f;

        /* renamed from: g */
        public String f34998g;

        /* renamed from: h */
        public String f34999h;

        /* renamed from: i */
        public Integer f35000i;

        /* renamed from: j */
        public boolean f35001j;

        /* renamed from: k */
        public ImpressionData f35002k;

        /* renamed from: l */
        public String f35003l;

        /* renamed from: n */
        public String f35005n;

        /* renamed from: o */
        public String f35006o;

        /* renamed from: s */
        public String f35010s;

        /* renamed from: t */
        public Integer f35011t;

        /* renamed from: u */
        public Integer f35012u;

        /* renamed from: v */
        public Integer f35013v;

        /* renamed from: w */
        public Integer f35014w;

        /* renamed from: x */
        public String f35015x;

        /* renamed from: y */
        public String f35016y;

        /* renamed from: z */
        public JSONObject f35017z;

        /* renamed from: m */
        public List<String> f35004m = new ArrayList();

        /* renamed from: p */
        public List<String> f35007p = new ArrayList();

        /* renamed from: q */
        public List<String> f35008q = new ArrayList();

        /* renamed from: r */
        public List<String> f35009r = new ArrayList();

        /* renamed from: C */
        public Map<String, String> f34991C = new TreeMap();

        public AdResponse build() {
            return new AdResponse(this);
        }

        public Builder setAdTimeoutDelayMilliseconds(Integer num) {
            this.f35013v = num;
            return this;
        }

        public Builder setAdType(String str) {
            this.f34992a = str;
            return this;
        }

        public Builder setAdUnitId(String str) {
            this.f34993b = str;
            return this;
        }

        public Builder setAfterLoadFailUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f35009r = list;
            return this;
        }

        public Builder setAfterLoadSuccessUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f35008q = list;
            return this;
        }

        public Builder setAfterLoadUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f35007p = list;
            return this;
        }

        public Builder setBeforeLoadUrl(String str) {
            this.f35006o = str;
            return this;
        }

        public Builder setBrowserAgent(MoPub.BrowserAgent browserAgent) {
            this.f34990B = browserAgent;
            return this;
        }

        public Builder setClickTrackingUrl(String str) {
            this.f35003l = str;
            return this;
        }

        public Builder setCustomEventClassName(String str) {
            this.f34989A = str;
            return this;
        }

        public Builder setDimensions(Integer num, Integer num2) {
            this.f35011t = num;
            this.f35012u = num2;
            return this;
        }

        public Builder setDspCreativeId(String str) {
            this.f35015x = str;
            return this;
        }

        public Builder setFailoverUrl(String str) {
            this.f35005n = str;
            return this;
        }

        public Builder setFullAdType(String str) {
            this.f34994c = str;
            return this;
        }

        public Builder setImpressionData(ImpressionData impressionData) {
            this.f35002k = impressionData;
            return this;
        }

        public Builder setImpressionTrackingUrls(List<String> list) {
            Preconditions.checkNotNull(list);
            this.f35004m = list;
            return this;
        }

        public Builder setJsonBody(JSONObject jSONObject) {
            this.f35017z = jSONObject;
            return this;
        }

        public Builder setNetworkType(String str) {
            this.f34995d = str;
            return this;
        }

        public Builder setRefreshTimeMilliseconds(Integer num) {
            this.f35014w = num;
            return this;
        }

        public Builder setRequestId(String str) {
            this.f35010s = str;
            return this;
        }

        public Builder setResponseBody(String str) {
            this.f35016y = str;
            return this;
        }

        public Builder setRewardedCurrencies(String str) {
            this.f34998g = str;
            return this;
        }

        public Builder setRewardedDuration(Integer num) {
            this.f35000i = num;
            return this;
        }

        public Builder setRewardedVideoCompletionUrl(String str) {
            this.f34999h = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyAmount(String str) {
            this.f34997f = str;
            return this;
        }

        public Builder setRewardedVideoCurrencyName(String str) {
            this.f34996e = str;
            return this;
        }

        public Builder setServerExtras(Map<String, String> map) {
            if (map == null) {
                this.f34991C = new TreeMap();
            } else {
                this.f34991C = new TreeMap(map);
            }
            return this;
        }

        public Builder setShouldRewardOnClick(boolean z) {
            this.f35001j = z;
            return this;
        }
    }

    public AdResponse(Builder builder) {
        this.mAdType = builder.f34992a;
        this.mAdUnitId = builder.f34993b;
        this.mFullAdType = builder.f34994c;
        this.mNetworkType = builder.f34995d;
        this.mRewardedVideoCurrencyName = builder.f34996e;
        this.mRewardedVideoCurrencyAmount = builder.f34997f;
        this.mRewardedCurrencies = builder.f34998g;
        this.mRewardedVideoCompletionUrl = builder.f34999h;
        this.mRewardedDuration = builder.f35000i;
        this.mShouldRewardOnClick = builder.f35001j;
        this.mImpressionData = builder.f35002k;
        this.mClickTrackingUrl = builder.f35003l;
        this.mImpressionTrackingUrls = builder.f35004m;
        this.mFailoverUrl = builder.f35005n;
        this.mBeforeLoadUrl = builder.f35006o;
        this.mAfterLoadUrls = builder.f35007p;
        this.mAfterLoadSuccessUrls = builder.f35008q;
        this.mAfterLoadFailUrls = builder.f35009r;
        this.mRequestId = builder.f35010s;
        this.mWidth = builder.f35011t;
        this.mHeight = builder.f35012u;
        this.mAdTimeoutDelayMillis = builder.f35013v;
        this.mRefreshTimeMillis = builder.f35014w;
        this.mDspCreativeId = builder.f35015x;
        this.mResponseBody = builder.f35016y;
        this.mJsonBody = builder.f35017z;
        this.mCustomEventClassName = builder.f34989A;
        this.mBrowserAgent = builder.f34990B;
        this.mServerExtras = builder.f34991C;
        this.mTimestamp = DateAndTime.now().getTime();
    }

    public Integer getAdTimeoutMillis(int i) {
        Integer num = this.mAdTimeoutDelayMillis;
        return (num == null || num.intValue() < 1000) ? Integer.valueOf(i) : this.mAdTimeoutDelayMillis;
    }

    public String getAdType() {
        return this.mAdType;
    }

    public String getAdUnitId() {
        return this.mAdUnitId;
    }

    public List<String> getAfterLoadFailUrls() {
        return this.mAfterLoadFailUrls;
    }

    public List<String> getAfterLoadSuccessUrls() {
        return this.mAfterLoadSuccessUrls;
    }

    public List<String> getAfterLoadUrls() {
        return this.mAfterLoadUrls;
    }

    public String getBeforeLoadUrl() {
        return this.mBeforeLoadUrl;
    }

    public MoPub.BrowserAgent getBrowserAgent() {
        return this.mBrowserAgent;
    }

    public String getClickTrackingUrl() {
        return this.mClickTrackingUrl;
    }

    public String getCustomEventClassName() {
        return this.mCustomEventClassName;
    }

    public String getDspCreativeId() {
        return this.mDspCreativeId;
    }

    @Deprecated
    public String getFailoverUrl() {
        return this.mFailoverUrl;
    }

    public String getFullAdType() {
        return this.mFullAdType;
    }

    public Integer getHeight() {
        return this.mHeight;
    }

    public ImpressionData getImpressionData() {
        return this.mImpressionData;
    }

    public List<String> getImpressionTrackingUrls() {
        return this.mImpressionTrackingUrls;
    }

    public JSONObject getJsonBody() {
        return this.mJsonBody;
    }

    public String getNetworkType() {
        return this.mNetworkType;
    }

    public Integer getRefreshTimeMillis() {
        return this.mRefreshTimeMillis;
    }

    public String getRequestId() {
        return this.mRequestId;
    }

    public String getRewardedCurrencies() {
        return this.mRewardedCurrencies;
    }

    public Integer getRewardedDuration() {
        return this.mRewardedDuration;
    }

    public String getRewardedVideoCompletionUrl() {
        return this.mRewardedVideoCompletionUrl;
    }

    public String getRewardedVideoCurrencyAmount() {
        return this.mRewardedVideoCurrencyAmount;
    }

    public String getRewardedVideoCurrencyName() {
        return this.mRewardedVideoCurrencyName;
    }

    public Map<String, String> getServerExtras() {
        return new TreeMap(this.mServerExtras);
    }

    public String getStringBody() {
        return this.mResponseBody;
    }

    public long getTimestamp() {
        return this.mTimestamp;
    }

    public Integer getWidth() {
        return this.mWidth;
    }

    public boolean hasJson() {
        return this.mJsonBody != null;
    }

    public boolean shouldRewardOnClick() {
        return this.mShouldRewardOnClick;
    }

    public Builder toBuilder() {
        return new Builder().setAdType(this.mAdType).setNetworkType(this.mNetworkType).setRewardedVideoCurrencyName(this.mRewardedVideoCurrencyName).setRewardedVideoCurrencyAmount(this.mRewardedVideoCurrencyAmount).setRewardedCurrencies(this.mRewardedCurrencies).setRewardedVideoCompletionUrl(this.mRewardedVideoCompletionUrl).setRewardedDuration(this.mRewardedDuration).setShouldRewardOnClick(this.mShouldRewardOnClick).setImpressionData(this.mImpressionData).setClickTrackingUrl(this.mClickTrackingUrl).setImpressionTrackingUrls(this.mImpressionTrackingUrls).setFailoverUrl(this.mFailoverUrl).setBeforeLoadUrl(this.mBeforeLoadUrl).setAfterLoadUrls(this.mAfterLoadUrls).setAfterLoadSuccessUrls(this.mAfterLoadSuccessUrls).setAfterLoadFailUrls(this.mAfterLoadFailUrls).setDimensions(this.mWidth, this.mHeight).setAdTimeoutDelayMilliseconds(this.mAdTimeoutDelayMillis).setRefreshTimeMilliseconds(this.mRefreshTimeMillis).setDspCreativeId(this.mDspCreativeId).setResponseBody(this.mResponseBody).setJsonBody(this.mJsonBody).setCustomEventClassName(this.mCustomEventClassName).setBrowserAgent(this.mBrowserAgent).setServerExtras(this.mServerExtras);
    }
}
