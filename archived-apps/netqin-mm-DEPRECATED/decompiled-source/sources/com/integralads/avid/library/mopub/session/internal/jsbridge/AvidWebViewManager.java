package com.integralads.avid.library.mopub.session.internal.jsbridge;

import android.webkit.WebView;
import com.integralads.avid.library.mopub.session.internal.InternalAvidAdSessionContext;
import com.integralads.avid.library.mopub.session.internal.jsbridge.AvidJavascriptInterface;
import com.integralads.avid.library.mopub.weakreference.AvidWebView;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager.class */
public class AvidWebViewManager implements AvidJavascriptInterface.AvidJavascriptInterfaceCallback {

    /* renamed from: a */
    public final InternalAvidAdSessionContext f33087a;

    /* renamed from: b */
    public final AvidWebView f33088b = new AvidWebView(null);

    /* renamed from: c */
    public final AvidBridgeManager f33089c;

    /* renamed from: d */
    public AvidJavascriptInterface f33090d;

    public AvidWebViewManager(InternalAvidAdSessionContext internalAvidAdSessionContext, AvidBridgeManager avidBridgeManager) {
        this.f33087a = internalAvidAdSessionContext;
        this.f33089c = avidBridgeManager;
    }

    /* renamed from: a */
    public final void m5376a() {
        AvidJavascriptInterface avidJavascriptInterface = this.f33090d;
        if (avidJavascriptInterface != null) {
            avidJavascriptInterface.setCallback(null);
            this.f33090d = null;
        }
    }

    public void destroy() {
        setWebView(null);
    }

    @Override // com.integralads.avid.library.mopub.session.internal.jsbridge.AvidJavascriptInterface.AvidJavascriptInterfaceCallback
    public void onAvidAdSessionContextInvoked() {
        this.f33089c.setWebView((WebView) this.f33088b.get());
    }

    public void setWebView(WebView webView) {
        if (this.f33088b.get() != webView) {
            this.f33089c.setWebView(null);
            m5376a();
            this.f33088b.set(webView);
            if (webView != null) {
                AvidJavascriptInterface avidJavascriptInterface = new AvidJavascriptInterface(this.f33087a);
                this.f33090d = avidJavascriptInterface;
                avidJavascriptInterface.setCallback(this);
                webView.addJavascriptInterface(this.f33090d, AvidJavascriptInterface.AVID_OBJECT);
            }
        }
    }
}
