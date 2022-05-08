package com.mopub.mobileads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.view.WindowManager;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.mopub.common.util.Views;
import com.mopub.mobileads.util.WebViews;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/BaseWebView.class */
public class BaseWebView extends WebView {

    /* renamed from: b */
    public static boolean f8432b = false;

    /* renamed from: a */
    public boolean f8433a;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        m30566b();
        WebViews.setDisableJSChromeClient(this);
        if (!f8432b) {
            m30567a(getContext());
            f8432b = true;
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: a */
    public void m30568a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    /* renamed from: a */
    public final void m30567a(@NonNull Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", "text/html", "UTF-8", null);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1;
            layoutParams.height = 1;
            layoutParams.type = 2005;
            layoutParams.flags = 16777240;
            layoutParams.format = -2;
            layoutParams.gravity = 8388659;
            ((WindowManager) context.getSystemService("window")).addView(webView, layoutParams);
        }
    }

    /* renamed from: b */
    public final void m30566b() {
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        if (!this.f8433a) {
            this.f8433a = true;
            Views.removeFromParent(this);
            removeAllViews();
            super.destroy();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        WebViews.manageThirdPartyCookies(this);
    }
}
