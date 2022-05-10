package com.mopub.mobileads.factories;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.HtmlInterstitialWebView;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/factories/HtmlInterstitialWebViewFactory.class */
public class HtmlInterstitialWebViewFactory {

    /* renamed from: a */
    public static HtmlInterstitialWebViewFactory f34505a = new HtmlInterstitialWebViewFactory();

    public static HtmlInterstitialWebView create(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str) {
        return f34505a.internalCreate(context, adReport, customEventInterstitialListener, str);
    }

    @Deprecated
    public static void setInstance(HtmlInterstitialWebViewFactory htmlInterstitialWebViewFactory) {
        f34505a = htmlInterstitialWebViewFactory;
    }

    public HtmlInterstitialWebView internalCreate(Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str) {
        HtmlInterstitialWebView htmlInterstitialWebView = new HtmlInterstitialWebView(context, adReport);
        htmlInterstitialWebView.init(customEventInterstitialListener, str, adReport.getDspCreativeId());
        return htmlInterstitialWebView;
    }
}
