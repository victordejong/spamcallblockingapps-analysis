package com.mopub.mobileads;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.List;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconConfig.class */
public class VastIconConfig implements Serializable {
    public static final long serialVersionUID = 0;
    @AbstractC6134c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC6132a
    public final String mClickThroughUri;
    @AbstractC6134c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC6132a
    public final List<VastTracker> mClickTrackingUris;
    @AbstractC6134c(Constants.VAST_DURATION_MS)
    @AbstractC6132a
    public final Integer mDurationMS;
    @AbstractC6134c("height")
    @AbstractC6132a
    public final int mHeight;
    @AbstractC6134c(Constants.VAST_SKIP_OFFSET_MS)
    @AbstractC6132a
    public final int mOffsetMS;
    @AbstractC6134c(Constants.VAST_RESOURCE)
    @AbstractC6132a
    public final VastResource mVastResource;
    @AbstractC6134c(Constants.VAST_VIDEO_VIEWABILITY_TRACKER)
    @AbstractC6132a
    public final List<VastTracker> mViewTrackingUris;
    @AbstractC6134c("width")
    @AbstractC6132a
    public final int mWidth;

    /* renamed from: com.mopub.mobileads.VastIconConfig$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastIconConfig$a.class */
    public class C8815a implements UrlHandler.ResultActions {

        /* renamed from: a */
        public final /* synthetic */ String f34245a;

        /* renamed from: b */
        public final /* synthetic */ Context f34246b;

        public C8815a(VastIconConfig vastIconConfig, String str, Context context) {
            this.f34245a = str;
            this.f34246b = context;
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(String str, UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(String str, UrlAction urlAction) {
            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                Bundle bundle = new Bundle();
                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str);
                if (!TextUtils.isEmpty(this.f34245a)) {
                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, this.f34245a);
                }
                try {
                    Intents.startActivity(this.f34246b, Intents.getStartActivityIntent(this.f34246b, MoPubBrowser.class, bundle));
                } catch (IntentNotResolvableException e) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                }
            }
        }
    }

    public VastIconConfig(int i, int i2, Integer num, Integer num2, VastResource vastResource, List<VastTracker> list, String str, List<VastTracker> list2) {
        Preconditions.checkNotNull(vastResource);
        Preconditions.checkNotNull(list);
        Preconditions.checkNotNull(list2);
        this.mWidth = i;
        this.mHeight = i2;
        this.mOffsetMS = num == null ? 0 : num.intValue();
        this.mDurationMS = num2;
        this.mVastResource = vastResource;
        this.mClickTrackingUris = list;
        this.mClickThroughUri = str;
        this.mViewTrackingUris = list2;
    }

    public String getClickThroughUri() {
        return this.mClickThroughUri;
    }

    public List<VastTracker> getClickTrackingUris() {
        return this.mClickTrackingUris;
    }

    public Integer getDurationMS() {
        return this.mDurationMS;
    }

    public int getHeight() {
        return this.mHeight;
    }

    public int getOffsetMS() {
        return this.mOffsetMS;
    }

    public VastResource getVastResource() {
        return this.mVastResource;
    }

    public List<VastTracker> getViewTrackingUris() {
        return this.mViewTrackingUris;
    }

    public int getWidth() {
        return this.mWidth;
    }

    public void handleClick(Context context, String str, String str2) {
        Preconditions.checkNotNull(context);
        String correctClickThroughUrl = this.mVastResource.getCorrectClickThroughUrl(this.mClickThroughUri, str);
        if (!TextUtils.isEmpty(correctClickThroughUrl)) {
            new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER).withResultActions(new C8815a(this, str2, context)).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
        }
    }

    public void handleImpression(Context context, int i, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        TrackingRequest.makeVastTrackingHttpRequest(this.mViewTrackingUris, null, Integer.valueOf(i), str, context);
    }
}
