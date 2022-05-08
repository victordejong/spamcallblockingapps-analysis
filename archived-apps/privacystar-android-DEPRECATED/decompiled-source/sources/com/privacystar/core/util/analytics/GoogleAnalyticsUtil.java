package com.privacystar.core.util.analytics;

import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.HitBuilders;
import com.google.android.gms.analytics.Tracker;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/GoogleAnalyticsUtil.class */
public class GoogleAnalyticsUtil {
    private static GoogleAnalyticsUtil instance;
    private PSApplication context;
    private Tracker tracker = makeTracker();

    GoogleAnalyticsUtil(PSApplication pSApplication) {
        this.context = pSApplication;
        this.tracker.enableExceptionReporting(true);
    }

    private static GoogleAnalyticsUtil getInstance() {
        GoogleAnalyticsUtil googleAnalyticsUtil;
        synchronized (GoogleAnalyticsUtil.class) {
            try {
                if (instance == null) {
                    instance = new GoogleAnalyticsUtil(PSApplication.getInstance());
                }
                googleAnalyticsUtil = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return googleAnalyticsUtil;
    }

    private Tracker getTracker() {
        if (this.tracker == null) {
            this.tracker = makeTracker();
        }
        return this.tracker;
    }

    private Tracker makeTracker() {
        return GoogleAnalytics.getInstance(this.context).newTracker(this.context.getString(C1566R.string.ga_trackingId));
    }

    public static void trackEvent(String str, String str2, String str3, long j) {
        getInstance().trackEventImpl(str, str2, str3, j);
    }

    private void trackEventImpl(String str, String str2, String str3, long j) {
        getTracker().send(new HitBuilders.EventBuilder(str, str2).setLabel(str3).setValue(j).build());
    }

    public static void trackPageView(String str) {
        getInstance().trackPageViewImpl(str);
    }

    private void trackPageViewImpl(String str) {
        getTracker().setScreenName(str);
        getTracker().send(new HitBuilders.AppViewBuilder().build());
    }

    public static void trackPurchase(String str, double d, String str2, String str3, String str4, String str5) {
        getInstance().trackPurchaseImpl(str, d, str2, str3, str4, str5);
    }

    private void trackPurchaseImpl(String str, double d, String str2, String str3, String str4, String str5) {
        getTracker().send(new HitBuilders.TransactionBuilder().setTransactionId(str).setAffiliation(str2).setRevenue(d).setTax(0.0d).setShipping(0.0d).setCurrencyCode("USD").build());
        getTracker().send(new HitBuilders.ItemBuilder().setTransactionId(str).setName(str4).setSku(str3).setCategory(str5).setPrice(d).setQuantity(1L).setCurrencyCode("USD").build());
    }
}
