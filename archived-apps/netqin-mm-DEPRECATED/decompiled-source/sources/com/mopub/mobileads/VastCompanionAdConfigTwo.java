package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import com.mopub.common.Constants;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.network.TrackingRequest;
import java.io.Serializable;
import java.util.Collection;
import java.util.List;
import p131c.p161d.p354f.p355s.AbstractC6132a;
import p131c.p161d.p354f.p355s.AbstractC6134c;
import p573f.p590w.p592c.C10057o;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfigTwo.class */
public final class VastCompanionAdConfigTwo implements Serializable {
    public static final Companion Companion = new Companion(null);
    public static final long serialVersionUID = 3;
    @AbstractC6134c(Constants.VAST_URL_CLICKTHROUGH)
    @AbstractC6132a
    public final String clickThroughUrl;
    @AbstractC6134c(Constants.VAST_TRACKERS_CLICK)
    @AbstractC6132a
    public final List<VastTrackerTwo> clickTrackers;
    @AbstractC6134c(Constants.VAST_TRACKERS_IMPRESSION)
    @AbstractC6132a
    public final List<VastTrackerTwo> creativeViewTrackers;
    @AbstractC6134c("height")
    @AbstractC6132a
    public final int height;
    @AbstractC6134c(Constants.VAST_RESOURCE)
    @AbstractC6132a
    public final VastResourceTwo vastResource;
    @AbstractC6134c("width")
    @AbstractC6132a
    public final int width;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/VastCompanionAdConfigTwo$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C10057o oVar) {
            this();
        }
    }

    public VastCompanionAdConfigTwo(int i, int i2, VastResourceTwo vastResourceTwo, String str, List<VastTrackerTwo> list, List<VastTrackerTwo> list2) {
        C10059q.m1637b(vastResourceTwo, "vastResource");
        C10059q.m1637b(list, "clickTrackers");
        C10059q.m1637b(list2, "creativeViewTrackers");
        this.width = i;
        this.height = i2;
        this.vastResource = vastResourceTwo;
        this.clickThroughUrl = str;
        this.clickTrackers = list;
        this.creativeViewTrackers = list2;
    }

    public final void addClickTrackers(Collection<? extends VastTrackerTwo> collection) {
        C10059q.m1637b(collection, "clickTrackers");
        this.clickTrackers.addAll(collection);
    }

    public final void addCreativeViewTrackers(Collection<? extends VastTrackerTwo> collection) {
        C10059q.m1637b(collection, "creativeViewTrackers");
        this.creativeViewTrackers.addAll(collection);
    }

    public final String getClickThroughUrl() {
        return this.clickThroughUrl;
    }

    public final List<VastTrackerTwo> getClickTrackers() {
        return this.clickTrackers;
    }

    public final List<VastTrackerTwo> getCreativeViewTrackers() {
        return this.creativeViewTrackers;
    }

    public final int getHeight() {
        return this.height;
    }

    public final VastResourceTwo getVastResource() {
        return this.vastResource;
    }

    public final int getWidth() {
        return this.width;
    }

    public final void handleClick(final Context context, final int i, String str, final String str2) {
        C10059q.m1637b(context, "context");
        if (context instanceof Activity) {
            String correctClickThroughUrl = this.vastResource.getCorrectClickThroughUrl(this.clickThroughUrl, str);
            if (correctClickThroughUrl != null) {
                if (!(correctClickThroughUrl.length() > 0)) {
                    correctClickThroughUrl = null;
                }
                if (correctClickThroughUrl != null) {
                    new UrlHandler.Builder().withSupportedUrlActions(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK).withResultActions(new UrlHandler.ResultActions() { // from class: com.mopub.mobileads.VastCompanionAdConfigTwo$handleClick$$inlined$let$lambda$1
                        @Override // com.mopub.common.UrlHandler.ResultActions
                        public void urlHandlingFailed(String str3, UrlAction urlAction) {
                            C10059q.m1637b(str3, "url");
                            C10059q.m1637b(urlAction, "lastFailedUrlAction");
                        }

                        @Override // com.mopub.common.UrlHandler.ResultActions
                        public void urlHandlingSucceeded(String str3, UrlAction urlAction) {
                            C10059q.m1637b(str3, "url");
                            C10059q.m1637b(urlAction, "urlAction");
                            if (urlAction == UrlAction.OPEN_IN_APP_BROWSER) {
                                Bundle bundle = new Bundle();
                                bundle.putString(MoPubBrowser.DESTINATION_URL_KEY, str3);
                                String str4 = str2;
                                if (!(str4 == null || str4.length() == 0)) {
                                    bundle.putString(MoPubBrowser.DSP_CREATIVE_ID, str2);
                                }
                                try {
                                    ((Activity) context).startActivityForResult(Intents.getStartActivityIntent(context, MoPubBrowser.class, bundle), i);
                                } catch (ActivityNotFoundException e) {
                                    MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                                    MoPubLog.log(sdkLogEvent, "Activity " + MoPubBrowser.class.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
                                }
                            }
                        }
                    }).withDspCreativeId(str2).withoutMoPubBrowser().build().handleUrl(context, correctClickThroughUrl);
                    return;
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("context must be an activity".toString());
    }

    public final void handleImpression(Context context, int i) {
        C10059q.m1637b(context, "context");
        TrackingRequest.makeVastTrackingTwoHttpRequest(this.creativeViewTrackers, null, Integer.valueOf(i), null, context);
    }
}
