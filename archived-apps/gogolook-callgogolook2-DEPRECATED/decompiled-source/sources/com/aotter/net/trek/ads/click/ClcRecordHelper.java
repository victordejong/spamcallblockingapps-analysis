package com.aotter.net.trek.ads.click;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.util.ThirdPartyUtil;
import com.aotter.net.trek.ads.view.InterActiveWebView;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/click/ClcRecordHelper.class */
public class ClcRecordHelper {
    /* renamed from: a */
    public static void m36559a(Context context, AdListener adListener, NativeAd nativeAd) {
        if (!TextUtils.isEmpty(nativeAd.getAdUrl())) {
            TrekLog.m36319d("_sendClc  uid= " + nativeAd.getUnitInstanceId() + ",  url = " + nativeAd.getAdUrl());
            MFTCApiClient.getSharedInstance(context).sendURL(nativeAd.getAdUrl());
            if (adListener != null) {
                adListener.onAdClicked(nativeAd);
            }
        }
        ThirdPartyUtil.recordClc(context, nativeAd);
    }

    /* renamed from: a */
    public static void m36558a(InterActiveWebView interActiveWebView, Activity activity, NativeAd nativeAd, AdListener adListener) {
        if (!TextUtils.isEmpty(nativeAd.getAdUrl())) {
            try {
                MFTCApiClient.getSharedInstance(activity).sendURL(nativeAd.getAdUrl());
                if (adListener != null) {
                    adListener.onAdClicked(nativeAd);
                }
                interActiveWebView.loadUrl("javascript:window.WebViewBridge.emit('third_party_clc')");
            } catch (Exception e) {
            }
        }
    }

    public static void sendClc(Context context, AdListener adListener, NativeAd nativeAd) {
        m36559a(context, adListener, nativeAd);
    }

    public static void sendClcWithInterActiveAd(InterActiveWebView interActiveWebView, Activity activity, NativeAd nativeAd, AdListener adListener) {
        m36558a(interActiveWebView, activity, nativeAd, adListener);
    }
}
