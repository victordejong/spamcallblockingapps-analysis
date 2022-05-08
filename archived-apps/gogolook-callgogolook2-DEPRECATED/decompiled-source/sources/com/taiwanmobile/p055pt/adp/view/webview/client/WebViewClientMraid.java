package com.taiwanmobile.p055pt.adp.view.webview.client;

import android.net.Uri;
import android.os.Build;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidJS;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidProcessor;
import gogolook.callgogolook2.gson.UserProfile;
import java.net.URL;
import java.net.URLConnection;
import java.util.Locale;
import java.util.Map;
import p081h.p447o.p448a.p449a.C10831c;
/* renamed from: com.taiwanmobile.pt.adp.view.webview.client.WebViewClientMraid */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/webview/client/WebViewClientMraid.class */
public class WebViewClientMraid extends WebViewClientBase {

    /* renamed from: a */
    public String f10080a;

    /* renamed from: b */
    public MraidProcessor f10081b;

    /* renamed from: c */
    public String f10082c;

    /* renamed from: d */
    public C4117a.AbstractC4119b f10083d;

    public WebViewClientMraid(String str, MraidProcessor mraidProcessor) {
        super(str);
        String str2;
        this.f10082c = null;
        this.f10083d = null;
        this.f10080a = str;
        this.f10081b = mraidProcessor;
        this.f10083d = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
        C4117a.AbstractC4119b bVar = this.f10083d;
        if (bVar != null && (str2 = (String) bVar.m29659a("mraidUrl")) != null) {
            this.f10082c = str2;
        }
    }

    /* renamed from: b */
    private void m29358b(String str) {
        C10831c.m10518c("WebViewClientMraid", "parseCommandUrl " + str);
        Map<String, String> parseCommandUrl = new MraidParser().parseCommandUrl(str);
        if (parseCommandUrl != null) {
            try {
                if (this.f10081b != null) {
                    String str2 = parseCommandUrl.get(MraidParser.MRAID_KEY_COMMAND);
                    if (parseCommandUrl.size() == 1) {
                        this.f10081b.getClass().getDeclaredMethod(str2, new Class[0]).invoke(this.f10081b, new Object[0]);
                    } else if (parseCommandUrl.size() > 1) {
                        this.f10081b.getClass().getDeclaredMethod(str2, Map.class).invoke(this.f10081b, parseCommandUrl);
                    } else {
                        throw new Exception("MraidParser does not get any command and parameters.");
                    }
                }
            } catch (Exception e) {
                C10831c.m10520b("WebViewClientMraid", "parseCommandUrl: The URL is " + str);
                C10831c.m10520b("WebViewClientMraid", "parseCommandUrl: " + e + UserProfile.CARD_CATE_SEPARATOR + e.getMessage());
            }
        }
    }

    /* renamed from: a */
    public boolean m29359a(String str) {
        Uri parse = Uri.parse(str.toLowerCase(Locale.US));
        if (parse == null || parse.getLastPathSegment() == null) {
            return false;
        }
        return parse.getLastPathSegment().contains(MraidJS.MRAID_JS);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (Build.VERSION.SDK_INT >= 21 && m29359a(webResourceRequest.getUrl().toString()) && (webView instanceof JSWebView)) {
            try {
                if (this.f10083d != null) {
                    Boolean bool = (Boolean) this.f10083d.m29659a("isDcmAdServing");
                    if (bool != null && bool.booleanValue()) {
                        return super.shouldInterceptRequest(webView, webResourceRequest);
                    }
                    this.f10083d.m29658a("isMraid", true);
                }
                URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.f10082c).openConnection());
                return new WebResourceResponse(uRLConnection.getContentType(), uRLConnection.getHeaderField("encoding"), uRLConnection.getInputStream());
            } catch (Exception e) {
                C10831c.m10520b("WebViewClientMraid", "shouldInterceptRequest problem: " + e.getMessage());
            }
        }
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        if (Build.VERSION.SDK_INT < 21 && m29359a(str) && (webView instanceof JSWebView)) {
            try {
                if (this.f10083d != null) {
                    this.f10083d.m29658a("isMraid", true);
                }
                URLConnection uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(new URL(this.f10082c).openConnection());
                return new WebResourceResponse(uRLConnection.getContentType(), uRLConnection.getHeaderField("encoding"), uRLConnection.getInputStream());
            } catch (Exception e) {
                C10831c.m10520b("WebViewClientMraid", "shouldInterceptRequest problem: " + e.getMessage());
            }
        }
        return super.shouldInterceptRequest(webView, str);
    }

    @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        C10831c.m10518c("WebViewClientMraid", "shouldOverrideUrlLoading(" + str + ") invoked!!");
        if (str == null || !str.startsWith("mraid://")) {
            return super.shouldOverrideUrlLoading(webView, str);
        }
        m29358b(str);
        C10831c.m10518c("WebViewClientMraid", str);
        return true;
    }
}
