package com.google.android.gms.internal.ads;

import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbek.class */
public final class zzbek extends zzben {
    public zzbek(zzbdi zzbdiVar, zzsm zzsmVar, boolean z) {
        super(zzbdiVar, zzsmVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzbdl, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m4104a(webView, str, (Map<String, String>) null);
    }
}
