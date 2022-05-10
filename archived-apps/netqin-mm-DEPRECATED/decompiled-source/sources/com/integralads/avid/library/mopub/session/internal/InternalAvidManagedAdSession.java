package com.integralads.avid.library.mopub.session.internal;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.session.ExternalAvidAdSessionContext;
import com.integralads.avid.library.mopub.session.internal.trackingwebview.AvidJavaScriptResourceInjector;
import com.integralads.avid.library.mopub.session.internal.trackingwebview.AvidTrackingWebViewManager;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession.class */
public abstract class InternalAvidManagedAdSession extends InternalAvidAdSession<View> {

    /* renamed from: l */
    public AvidTrackingWebViewManager f33070l;

    /* renamed from: m */
    public final WebView f33071m;

    public InternalAvidManagedAdSession(Context context, String str, ExternalAvidAdSessionContext externalAvidAdSessionContext) {
        super(context, str, externalAvidAdSessionContext);
        WebView webView = new WebView(context.getApplicationContext());
        this.f33071m = webView;
        this.f33070l = new AvidTrackingWebViewManager(webView);
    }

    public AvidJavaScriptResourceInjector getJavaScriptResourceInjector() {
        return this.f33070l;
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public WebView getWebView() {
        return this.f33071m;
    }

    @Override // com.integralads.avid.library.mopub.session.internal.InternalAvidAdSession
    public void onStart() {
        super.onStart();
        m5387f();
        this.f33070l.loadHTML();
    }
}
