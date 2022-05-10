package p131c.p135b.p136a.p138b;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PointF;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p490c.C7042c;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinWebViewActivity;
import p131c.p135b.p136a.p137a.C2031a;
import p131c.p135b.p136a.p137a.C2036f;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p151e.C2261b;
import p131c.p135b.p136a.p148e.p151e.C2262c;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.b.e */
/* loaded from: classes-dex2jar.jar:c/b/a/b/e.class */
public class C2077e extends WebViewClient {

    /* renamed from: a */
    public final C2341l f8045a;

    /* renamed from: b */
    public final C2374t f8046b;

    /* renamed from: c */
    public final AdViewControllerImpl f8047c;

    /* renamed from: c.b.a.b.e$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/e$a.class */
    public class C2078a extends AbstractC2381a {

        /* renamed from: a */
        public final /* synthetic */ String f8048a;

        public C2078a(String str) {
            this.f8048a = str;
        }

        @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (activity instanceof AppLovinWebViewActivity) {
                ((AppLovinWebViewActivity) activity).loadUrl(this.f8048a, null);
                C2391j.m29906a(C2077e.this.f8047c.getAdViewEventListener(), C2077e.this.f8047c.getCurrentAd(), C2077e.this.f8047c.getParentView());
            }
        }

        @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (activity instanceof AppLovinWebViewActivity) {
                C2391j.m29891b(C2077e.this.f8047c.getAdViewEventListener(), C2077e.this.f8047c.getCurrentAd(), C2077e.this.f8047c.getParentView());
                C2077e.this.f8045a.m30234y().m30673b(this);
            }
        }
    }

    public C2077e(AdViewControllerImpl adViewControllerImpl, C2341l lVar) {
        this.f8045a = lVar;
        this.f8046b = lVar.m30262d0();
        this.f8047c = adViewControllerImpl;
    }

    /* renamed from: a */
    public final void m31116a() {
        this.f8047c.m19401a();
    }

    /* renamed from: a */
    public final void m31115a(PointF pointF) {
        this.f8047c.expandAd(pointF);
    }

    /* renamed from: a */
    public final void m31114a(Uri uri, C2070d dVar) {
        C2374t tVar;
        String str;
        String queryParameter = uri.getQueryParameter("n");
        if (C2422o.m29851b(queryParameter)) {
            String queryParameter2 = uri.getQueryParameter("load_type");
            if ("external".equalsIgnoreCase(queryParameter2)) {
                C2374t tVar2 = this.f8046b;
                tVar2.m30044b("AdWebView", "Loading new page externally: " + queryParameter);
                AbstractC2426r.m29823a(dVar.getContext(), Uri.parse(queryParameter), this.f8045a);
                C2391j.m29886c(this.f8047c.getAdViewEventListener(), this.f8047c.getCurrentAd(), this.f8047c.getParentView());
                return;
            } else if ("internal".equalsIgnoreCase(queryParameter2)) {
                C2374t tVar3 = this.f8046b;
                tVar3.m30044b("AdWebView", "Loading new page in WebView: " + queryParameter);
                dVar.loadUrl(queryParameter);
                String queryParameter3 = uri.getQueryParameter("bg_color");
                if (C2422o.m29851b(queryParameter3)) {
                    dVar.setBackgroundColor(Color.parseColor(queryParameter3));
                    return;
                }
                return;
            } else if ("in_app".equalsIgnoreCase(queryParameter2)) {
                C2374t tVar4 = this.f8046b;
                tVar4.m30044b("AdWebView", "Loading new page in slide-up webview: " + queryParameter);
                this.f8045a.m30234y().m30675a(new C2078a(queryParameter));
                Intent intent = new Intent(this.f8045a.m30264d(), AppLovinWebViewActivity.class);
                intent.putExtra(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8045a.m30269b0());
                intent.setFlags(268435456);
                this.f8045a.m30264d().startActivity(intent);
                return;
            } else {
                tVar = this.f8046b;
                str = "Could not find load type in original uri";
            }
        } else {
            tVar = this.f8046b;
            str = "Could not find url to load from query in original uri";
        }
        tVar.m30039e("AdWebView", str);
    }

    /* renamed from: a */
    public final void m31112a(C2070d dVar, Uri uri) {
        AbstractC7036g currentAd = dVar.getCurrentAd();
        AppLovinAdView parentView = this.f8047c.getParentView();
        if (parentView == null || currentAd == null) {
            C2374t tVar = this.f8046b;
            tVar.m30039e("AdWebView", "Attempting to track click that is null or not an ApplovinAdView instance for clickedUri = " + uri);
            return;
        }
        C2262c statsManagerHelper = dVar.getStatsManagerHelper();
        if (statsManagerHelper != null) {
            statsManagerHelper.m30553b();
        }
        this.f8047c.m19394a(currentAd, parentView, uri, dVar.getAndClearLastClickLocation());
    }

    /* renamed from: a */
    public final void m31110a(C6894a aVar, C2070d dVar) {
        C2031a Y0 = aVar.m19458Y0();
        if (Y0 != null) {
            C2036f.m31214a(Y0.m31243c(), this.f8047c.getSdk());
            m31112a(dVar, Y0.m31246a());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x01cc, code lost:
        if (r5.m19474I0() != false) goto L_0x0100;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m31113a(android.webkit.WebView r5, java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 481
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p138b.C2077e.m31113a(android.webkit.WebView, java.lang.String, boolean):boolean");
    }

    /* renamed from: b */
    public final void m31109b() {
        this.f8047c.contractAd();
    }

    @Override // android.webkit.WebViewClient
    public void onLoadResource(WebView webView, String str) {
        super.onLoadResource(webView, str);
        C2374t tVar = this.f8046b;
        tVar.m30042c("AdWebView", "Loaded resource: " + str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f8047c.onAdHtmlLoaded(webView);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        super.onReceivedError(webView, i, str, str2);
        AbstractC7036g currentAd = this.f8047c.getCurrentAd();
        String str3 = "Received error with error code: " + i + " with description \\'" + str + "\\' for URL: " + str2;
        C7042c.C7047e a = this.f8045a.m30237v().m18855a(currentAd);
        a.m18829a(C2261b.f8826C, str3);
        a.m18832a();
        this.f8046b.m30039e("AdWebView", str3 + " for ad: " + currentAd);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        onReceivedError(webView, webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
        super.onReceivedHttpError(webView, webResourceRequest, webResourceResponse);
        AbstractC7036g currentAd = this.f8047c.getCurrentAd();
        C7042c.C7047e a = this.f8045a.m30237v().m18855a(currentAd);
        a.m18831a(C2261b.f8827D);
        a.m18832a();
        C2374t tVar = this.f8046b;
        tVar.m30039e("AdWebView", "Received HTTP error: " + webResourceResponse + "for url: " + webResourceRequest.getUrl() + " and ad: " + currentAd);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
        AbstractC7036g currentAd = this.f8047c.getCurrentAd();
        String str = "Received SSL error: " + sslError;
        C7042c.C7047e a = this.f8045a.m30237v().m18855a(currentAd);
        a.m18829a(C2261b.f8829F, str);
        a.m18832a();
        this.f8046b.m30039e("AdWebView", str + " for ad: " + currentAd);
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        C2374t.m30034j("AdWebView", "Render process gone for ad: " + this.f8047c.getCurrentAd() + ". Process did crash: " + renderProcessGoneDetail.didCrash());
        AbstractC7036g currentAd = this.f8047c.getCurrentAd();
        if (currentAd != null) {
            C7042c.C7047e a = this.f8045a.m30237v().m18855a(currentAd);
            a.m18831a(C2261b.f8828E);
            a.m18832a();
        }
        if (!((Boolean) this.f8045a.m30291a(C2251d.C2256e.f8650c4)).booleanValue()) {
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }
        if (webView == null || !webView.equals(this.f8047c.getAdWebView())) {
            return true;
        }
        this.f8047c.destroy();
        AppLovinAdSize size = this.f8047c.getSize();
        if (!AbstractC2426r.m29812a(size)) {
            return true;
        }
        this.f8047c.attachNewAdView(size);
        this.f8047c.resume();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        boolean hasGesture = ((Boolean) this.f8045a.m30291a(C2251d.C2256e.f8626Y0)).booleanValue() ? webResourceRequest.hasGesture() : true;
        Uri url = webResourceRequest.getUrl();
        if (url != null) {
            return m31113a(webView, url.toString(), hasGesture);
        }
        this.f8046b.m30039e("AdWebView", "No url found for request");
        return false;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        return m31113a(webView, str, true);
    }
}
