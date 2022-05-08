package com.aotter.net.trek.ads.view;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.aotter.net.trek.model.NativeAd;
/* renamed from: com.aotter.net.trek.ads.view.a */
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/view/a.class */
public class C1686a extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ InterActiveWebView f1339a;

    public C1686a(InterActiveWebView interActiveWebView) {
        this.f1339a = interActiveWebView;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        NativeAd nativeAd;
        boolean z;
        StringBuilder sb = new StringBuilder();
        sb.append("javascript:window.WebViewBridge.emit('init', ");
        InterActiveWebView interActiveWebView = this.f1339a;
        nativeAd = interActiveWebView.f1269h;
        sb.append(interActiveWebView.createCatWalkPayload(nativeAd));
        sb.append(")");
        webView.loadUrl(sb.toString());
        z = this.f1339a.f1271j;
        if (z) {
            webView.loadUrl("javascript:WebViewBridge.on('send', function(message) { myjsi.doStuff(message);})");
            this.f1339a.f1271j = false;
        }
        webView.loadUrl("javascript:(function() { document.getElementsByTagName('video')[0].play(); })()");
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        NativeAd nativeAd;
        NativeAd nativeAd2;
        NativeAd nativeAd3;
        InterActiveWebView interActiveWebView = this.f1339a;
        nativeAd = interActiveWebView.f1269h;
        if (!TextUtils.isEmpty(interActiveWebView.createCatWalkPayload(nativeAd))) {
            StringBuilder sb = new StringBuilder();
            sb.append("javascript:window.MFTC_PAYLOAD=");
            InterActiveWebView interActiveWebView2 = this.f1339a;
            nativeAd2 = interActiveWebView2.f1269h;
            sb.append(interActiveWebView2.createCatWalkPayload(nativeAd2));
            webView.loadUrl(sb.toString());
            StringBuilder sb2 = new StringBuilder();
            sb2.append("javascript:window.WebViewBridge.emit('init', ");
            InterActiveWebView interActiveWebView3 = this.f1339a;
            nativeAd3 = interActiveWebView3.f1269h;
            sb2.append(interActiveWebView3.createCatWalkPayload(nativeAd3));
            sb2.append(")");
            webView.loadUrl(sb2.toString());
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return true;
    }
}
