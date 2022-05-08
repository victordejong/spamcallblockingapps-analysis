package com.aotter.net.trek.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import com.aotter.net.trek.common.util.VersionCode;
import com.aotter.net.trek.common.util.Views;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/BaseWebView.class */
public class BaseWebView extends WebView {

    /* renamed from: b */
    public static boolean f1156b = false;

    /* renamed from: a */
    public boolean f1157a;

    public BaseWebView(Context context) {
        super(context.getApplicationContext());
        m36583a(false);
        m36582b();
        if (!f1156b) {
            m36584a(getContext());
            f1156b = true;
        }
    }

    public BaseWebView(Context context, AttributeSet attributeSet) {
        super(context.getApplicationContext(), attributeSet);
        m36583a(false);
        m36582b();
        if (!f1156b) {
            m36584a(getContext());
            f1156b = true;
        }
    }

    /* renamed from: a */
    private void m36584a(@NonNull Context context) {
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
    private void m36582b() {
        getSettings().setAllowFileAccess(false);
        if (Build.VERSION.SDK_INT >= 11) {
            getSettings().setAllowContentAccess(false);
        }
        if (Build.VERSION.SDK_INT >= 16) {
            getSettings().setAllowFileAccessFromFileURLs(false);
            getSettings().setAllowUniversalAccessFromFileURLs(false);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    /* renamed from: a */
    public void m36585a() {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setAppCacheEnabled(true);
        getSettings().setAppCachePath(getContext().getCacheDir().getAbsolutePath());
    }

    /* renamed from: a */
    public void m36583a(boolean z) {
        WebSettings.PluginState pluginState;
        WebSettings webSettings;
        if (!VersionCode.currentApiLevel().isAtLeast(VersionCode.JELLY_BEAN_MR2)) {
            if (z) {
                webSettings = getSettings();
                pluginState = WebSettings.PluginState.ON;
            } else {
                webSettings = getSettings();
                pluginState = WebSettings.PluginState.OFF;
            }
            webSettings.setPluginState(pluginState);
        }
    }

    @Override // android.webkit.WebView
    public void destroy() {
        this.f1157a = true;
        Views.removeFromParent(this);
        removeAllViews();
        super.destroy();
    }
}
