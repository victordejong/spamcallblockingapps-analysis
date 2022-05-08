package p459j.p460a.p582w0;

import android.webkit.WebSettings;
import android.webkit.WebView;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w0.u4 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/u4.class */
public final class C14190u4 {
    static {
        new C14190u4();
    }

    /* renamed from: a */
    public static final void m2263a(WebView webView) {
        C15149k.m377b(webView, "webView");
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSavePassword(false);
        webView.removeJavascriptInterface("searchBoxJavaBridge_");
        webView.removeJavascriptInterface("accessibility");
        webView.removeJavascriptInterface("accessibilityTraversal");
    }
}
