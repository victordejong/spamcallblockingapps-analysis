package com.adbert.p015b;

import android.content.Context;
import android.view.ViewGroup;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adbert.p009a.C1402g;
import java.net.HttpCookie;
/* renamed from: com.adbert.b.j */
/* loaded from: classes-dex2jar.jar:com/adbert/b/j.class */
public class C1457j extends WebView {

    /* renamed from: com.adbert.b.j$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/b/j$a.class */
    public final class C1459a extends WebViewClient {
        public C1459a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            if (C1457j.this.getContext() != null && webView != null && webView.getParent() != null) {
                ((ViewGroup) webView.getParent()).removeView(webView);
            }
        }
    }

    public C1457j(Context context) {
        super(context);
        setBackgroundColor(0);
        getSettings().setJavaScriptEnabled(true);
        getSettings().setCacheMode(2);
        setWebViewClient(new C1459a());
        setVisibility(8);
    }

    /* renamed from: a */
    private void m37043a(Context context, String str) {
        CookieSyncManager.createInstance(context);
        CookieManager instance = CookieManager.getInstance();
        instance.setAcceptCookie(true);
        for (HttpCookie httpCookie : C1402g.f654b.getCookieStore().getCookies()) {
            instance.setCookie(str, httpCookie.getName() + "=" + httpCookie.getValue());
            CookieSyncManager.getInstance().sync();
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        m37043a(getContext(), str);
        getLayoutParams().width = 0;
        getLayoutParams().height = 0;
        setVisibility(0);
        super.loadUrl(str);
    }
}
