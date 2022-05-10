package com.integralads.avid.library.mopub.session.internal.trackingwebview;

import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient.class */
public class AvidWebViewClient extends WebViewClient {

    /* renamed from: a */
    public AvidWebViewClientListener f33095a;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener.class */
    public interface AvidWebViewClientListener {
        void webViewDidLoadData();
    }

    public AvidWebViewClientListener getListener() {
        return this.f33095a;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        AvidWebViewClientListener avidWebViewClientListener = this.f33095a;
        if (avidWebViewClientListener != null) {
            avidWebViewClientListener.webViewDidLoadData();
        }
    }

    public void setListener(AvidWebViewClientListener avidWebViewClientListener) {
        this.f33095a = avidWebViewClientListener;
    }
}
