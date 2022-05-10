package com.moat.analytics.mobile.mpub;

import android.view.ViewGroup;
import android.webkit.WebView;
/* renamed from: com.moat.analytics.mobile.mpub.aa */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/aa.class */
public class C8616aa extends AbstractC8618b implements WebAdTracker {
    public C8616aa(ViewGroup viewGroup) {
        this(C8617ab.m4981a(viewGroup, false).m4982c(null));
        if (viewGroup == null) {
            C8652p.m4845a("[ERROR] ", 3, "WebAdTracker", this, "WebAdTracker initialization not successful, Target ViewGroup is null");
            this.f33433a = new C8643m("Target ViewGroup is null");
        }
        if (this.f33434b == null) {
            C8652p.m4845a("[ERROR] ", 3, "WebAdTracker", this, "WebAdTracker initialization not successful, No WebView to track inside of ad container");
            this.f33433a = new C8643m("No WebView to track inside of ad container");
        }
    }

    public C8616aa(WebView webView) {
        super(webView, false, false);
        C8652p.m4848a(3, "WebAdTracker", this, "Initializing.");
        if (webView == null) {
            C8652p.m4845a("[ERROR] ", 3, "WebAdTracker", this, "WebAdTracker initialization not successful, WebView is null");
            this.f33433a = new C8643m("WebView is null");
            return;
        }
        try {
            super.m4979a(webView);
            C8652p.m4843a("[SUCCESS] ", mo4781a() + " created for " + m4972g());
        } catch (C8643m e) {
            this.f33433a = e;
        }
    }

    @Override // com.moat.analytics.mobile.mpub.AbstractC8618b
    /* renamed from: a */
    public String mo4781a() {
        return "WebAdTracker";
    }
}
