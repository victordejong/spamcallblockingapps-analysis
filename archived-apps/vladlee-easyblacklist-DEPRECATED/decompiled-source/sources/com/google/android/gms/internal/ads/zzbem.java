package com.google.android.gms.internal.ads;

import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbem.class */
public final class zzbem extends zzben {
    public zzbem(zzbdi zzbdiVar, zzsm zzsmVar, boolean z) {
        super(zzbdiVar, zzsmVar, z);
    }

    @Override // android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        if (webResourceRequest == null || webResourceRequest.getUrl() == null) {
            return null;
        }
        return m4104a(webView, webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders());
    }
}
