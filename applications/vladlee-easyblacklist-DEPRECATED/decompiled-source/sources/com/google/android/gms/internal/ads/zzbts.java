package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbts.class */
public final class zzbts implements zzro {

    /* renamed from: a */
    private zzddz f12383a;

    @Override // com.google.android.gms.internal.ads.zzro
    public final View getView() {
        return this.f12383a;
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final WebView getWebView() {
        if (this.f12383a == null) {
            return null;
        }
        return zzddz.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (this.f12383a != null) {
            zzddz.onPageStarted(webView, str, bitmap);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final void zza(Activity activity, WebView webView) {
        try {
            this.f12383a = new zzddz(activity, webView);
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46);
            sb.append(" Failed to initialize the internal ArWebView: ");
            sb.append(valueOf);
            zzavs.zzex(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzro
    public final void zzc(String str, String str2) {
        if (this.f12383a == null) {
            zzavs.zzex("ArWebView is not initialized.");
        } else {
            zzddz.getWebView().loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
        }
    }
}
