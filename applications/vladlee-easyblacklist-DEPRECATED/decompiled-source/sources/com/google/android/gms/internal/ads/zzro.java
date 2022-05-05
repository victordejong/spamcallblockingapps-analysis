package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzro.class */
public interface zzro {
    View getView();

    WebView getWebView();

    void onPageStarted(WebView webView, String str, Bitmap bitmap);

    void zza(Activity activity, WebView webView);

    void zzc(String str, String str2);
}
