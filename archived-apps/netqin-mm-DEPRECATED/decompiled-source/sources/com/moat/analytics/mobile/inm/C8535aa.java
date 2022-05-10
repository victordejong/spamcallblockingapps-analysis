package com.moat.analytics.mobile.inm;

import android.view.ViewGroup;
import android.webkit.WebView;
/* renamed from: com.moat.analytics.mobile.inm.aa */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/aa.class */
public class C8535aa extends AbstractC8537b implements WebAdTracker {
    public C8535aa(ViewGroup viewGroup) {
        this(C8536ab.m5237a(viewGroup, false).m5238c(null));
        if (viewGroup == null) {
            C8571p.m5101a("[ERROR] ", 3, "WebAdTracker", this, "WebAdTracker initialization not successful, Target ViewGroup is null");
            this.f33216a = new C8562m("Target ViewGroup is null");
        }
        if (this.f33217b == null) {
            C8571p.m5101a("[ERROR] ", 3, "WebAdTracker", this, "WebAdTracker initialization not successful, No WebView to track inside of ad container");
            this.f33216a = new C8562m("No WebView to track inside of ad container");
        }
    }

    public C8535aa(WebView webView) {
        super(webView, false, false);
        C8571p.m5104a(3, "WebAdTracker", this, "Initializing.");
        if (webView == null) {
            C8571p.m5101a("[ERROR] ", 3, "WebAdTracker", this, "WebAdTracker initialization not successful, WebView is null");
            this.f33216a = new C8562m("WebView is null");
            return;
        }
        try {
            super.m5235a(webView);
            C8571p.m5099a("[SUCCESS] ", mo5037a() + " created for " + m5228g());
        } catch (C8562m e) {
            this.f33216a = e;
        }
    }

    @Override // com.moat.analytics.mobile.inm.AbstractC8537b
    /* renamed from: a */
    public String mo5037a() {
        return "WebAdTracker";
    }
}
