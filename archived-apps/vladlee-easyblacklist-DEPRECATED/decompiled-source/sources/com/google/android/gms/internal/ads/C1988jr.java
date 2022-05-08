package com.google.android.gms.internal.ads;

import android.webkit.WebView;
import com.google.android.gms.common.util.PlatformVersion;
/* renamed from: com.google.android.gms.internal.ads.jr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jr.class */
final class C1988jr {

    /* renamed from: a */
    private static Boolean f8800a;

    private C1988jr() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m4671a(WebView webView, String str) {
        if (!PlatformVersion.isAtLeastKitKat() || !m4672a(webView)) {
            String valueOf = String.valueOf(str);
            webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
            return;
        }
        webView.evaluateJavascript(str, null);
    }

    /* renamed from: a */
    private static boolean m4672a(WebView webView) {
        boolean booleanValue;
        synchronized (C1988jr.class) {
            try {
                if (f8800a == null) {
                    try {
                        webView.evaluateJavascript("(function(){})()", null);
                        f8800a = Boolean.TRUE;
                    } catch (IllegalStateException e) {
                        f8800a = Boolean.FALSE;
                    }
                }
                booleanValue = f8800a.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }
}
