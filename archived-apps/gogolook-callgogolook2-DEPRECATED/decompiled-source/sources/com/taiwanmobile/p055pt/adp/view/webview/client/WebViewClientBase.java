package com.taiwanmobile.p055pt.adp.view.webview.client;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.view.KeyEvent;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.versionedparcelable.VersionedParcel;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.taiwanmobile.p055pt.adp.view.TWMAd;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.TWMAdViewListener;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.C4147h;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import p081h.p447o.p448a.p449a.C10831c;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.client.WebViewClientBase */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/client/WebViewClientBase.class */
public class WebViewClientBase extends WebViewClient {

    /* renamed from: a */
    public String f10079a;

    public WebViewClientBase(String str) {
        this.f10079a = str;
    }

    /* renamed from: a */
    private void m29360a(TWMAdRequest.ErrorCode errorCode) {
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f10079a);
        if (bVar != null) {
            TWMAd tWMAd = null;
            TWMAdViewListener tWMAdViewListener = bVar.m29659a("adListener") == null ? null : (TWMAdViewListener) bVar.m29659a("adListener");
            if (bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY) != null) {
                tWMAd = (TWMAd) bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY);
            }
            if (tWMAdViewListener != null && tWMAd != null) {
                tWMAdViewListener.onFailedToReceiveAd(tWMAd, errorCode);
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        C10831c.m10518c("WebViewClientBase", "onLoadResource(" + str + ") invoked!!");
        super.onLoadResource(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        C10831c.m10518c("WebViewClientBase", "onPageFinished(" + str + ") invoked!!");
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        C10831c.m10518c("WebViewClientBase", "onPageStarted(" + str + ") invoked!!");
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        C10831c.m10520b("WebViewClientBase", "onReceivedError invoked(" + i + "/" + str + "/" + str2 + ")!!");
        TWMAdRequest.ErrorCode errorCode = TWMAdRequest.ErrorCode.NETWORK_ERROR;
        switch (i) {
            case -15:
            case -12:
            case -10:
            case VersionedParcel.EX_PARCELABLE /* -9 */:
            case -5:
            case -4:
            case -3:
                errorCode = TWMAdRequest.ErrorCode.INVALID_REQUEST;
                break;
            case -14:
            case -13:
            case -11:
            case -8:
            case VersionedParcel.EX_UNSUPPORTED_OPERATION /* -7 */:
            case -6:
            case -2:
                C10831c.m10518c("WebViewClientBase", "error-code : " + errorCode);
                break;
        }
        super.onReceivedError(webView, i, str, str2);
        webView.setVisibility(4);
        try {
            m29360a(errorCode);
        } catch (Exception e) {
            C10831c.m10518c("WebViewClientBase", "onReceivedError Exception: " + e.getMessage());
        }
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(12)
    public void onReceivedLoginRequest(WebView webView, String str, String str2, String str3) {
        C10831c.m10518c("WebViewClientBase", "onReceivedLoginRequest(" + str + "/" + str2 + "/" + str3 + ") invoked!!");
        super.onReceivedLoginRequest(webView, str, str2, str3);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        C10831c.m10518c("WebViewClientBase", "onReceivedSslError invoked!!");
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        C10831c.m10520b("WebViewClientBase", "The WebView rendering process crashed!");
        if (this.f10079a == null || webView == null || !(webView instanceof JSWebView)) {
            return true;
        }
        ((JSWebView) webView).clearWebView();
        C4127a.m29640a(this.f10079a, TWMAdRequest.ErrorCode.NETWORK_ERROR);
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        C10831c.m10518c("WebViewClientBase", "shouldOverrideKeyEvent(" + keyEvent + ") invoked!!");
        return super.shouldOverrideKeyEvent(webView, keyEvent);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        C4117a.AbstractC4119b bVar;
        C10831c.m10518c("WebViewClientBase", "shouldOverrideUrlLoading(" + str + ") invoked!!");
        if (!(!(webView instanceof JSWebView) || this.f10079a == null || (bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f10079a)) == null)) {
            C4147h.C4150b bVar2 = (C4147h.C4150b) bVar.m29659a("tpInfo");
            Boolean bool = (Boolean) bVar.m29659a("isDcmAdServing");
            if (bVar2 != null && C4147h.EnumC4149a.UCFUNNEL.m29519a().equals(bVar2.m29515b())) {
                C4147h a = bVar2.m29518a();
                if (a != null) {
                    a.m29537a(bVar2, "12");
                }
                ((JSWebView) webView).injectJavaScript("android.openUrl(\"" + str + "\")");
                return true;
            } else if (((bVar2 != null && C4147h.EnumC4149a.TAMEDIA.m29519a().equals(bVar2.m29515b())) || bVar2 == null) && bool != null && bool.booleanValue()) {
                ((JSWebView) webView).injectJavaScript("android.openUrl(\"" + str + "\")");
                return true;
            }
        }
        return super.shouldOverrideUrlLoading(webView, str);
    }
}
