package com.integralads.avid.library.mopub.session.internal.trackingwebview;

import android.webkit.WebView;
import com.integralads.avid.library.mopub.session.internal.trackingwebview.AvidWebViewClient;
import com.integralads.avid.library.mopub.weakreference.AvidWebView;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/trackingwebview/AvidTrackingWebViewManager.class */
public class AvidTrackingWebViewManager implements AvidWebViewClient.AvidWebViewClientListener, AvidJavaScriptResourceInjector {

    /* renamed from: a */
    public final AvidWebView f33091a;

    /* renamed from: b */
    public final AvidWebViewClient f33092b;

    /* renamed from: c */
    public int f33093c = 0;

    /* renamed from: d */
    public final ArrayList<String> f33094d = new ArrayList<>();

    public AvidTrackingWebViewManager(WebView webView) {
        this.f33091a = new AvidWebView(webView);
        webView.getSettings().setJavaScriptEnabled(true);
        AvidWebViewClient avidWebViewClient = new AvidWebViewClient();
        this.f33092b = avidWebViewClient;
        avidWebViewClient.setListener(this);
        webView.setWebViewClient(this.f33092b);
    }

    /* renamed from: a */
    public final void m5375a(String str) {
        this.f33091a.injectJavaScript("(function () {\nvar script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);\n})();".replace("%SCRIPT_SRC%", str));
    }

    @Override // com.integralads.avid.library.mopub.session.internal.trackingwebview.AvidJavaScriptResourceInjector
    public void injectJavaScriptResource(String str) {
        if (this.f33093c == 2) {
            m5375a(str);
        } else {
            this.f33094d.add(str);
        }
    }

    public void loadHTML() {
        WebView webView = (WebView) this.f33091a.get();
        if (webView != null && this.f33093c == 0) {
            this.f33093c = 1;
            webView.loadData("<html><body></body></html>", "text/html", null);
        }
    }

    @Override // com.integralads.avid.library.mopub.session.internal.trackingwebview.AvidWebViewClient.AvidWebViewClientListener
    public void webViewDidLoadData() {
        this.f33093c = 2;
        Iterator<String> it = this.f33094d.iterator();
        while (it.hasNext()) {
            m5375a(it.next());
        }
        this.f33094d.clear();
    }
}
