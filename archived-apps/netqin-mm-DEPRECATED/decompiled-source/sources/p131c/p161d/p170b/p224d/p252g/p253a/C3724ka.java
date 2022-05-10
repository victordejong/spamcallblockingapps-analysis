package p131c.p161d.p170b.p224d.p252g.p253a;

import android.webkit.WebView;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
/* renamed from: c.d.b.d.g.a.ka */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ka.class */
public final class C3724ka {
    @VisibleForTesting

    /* renamed from: a */
    public static Boolean f13854a;

    /* renamed from: a */
    public static void m26714a(WebView webView, String str) {
        if (!PlatformVersion.m17062f() || !m26715a(webView)) {
            String valueOf = String.valueOf(str);
            webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        webView.evaluateJavascript(str, null);
    }

    /* renamed from: a */
    public static boolean m26715a(WebView webView) {
        boolean booleanValue;
        synchronized (C3724ka.class) {
            try {
                if (f13854a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f13854a = true;
                    } catch (IllegalStateException e) {
                        f13854a = false;
                    }
                }
                booleanValue = f13854a.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
