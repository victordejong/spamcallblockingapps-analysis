package com.mopub.common;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.util.WebViews;
import p131c.p421j.p422a.C6632c;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser.class */
public class MoPubBrowser extends Activity {
    public static final String DESTINATION_URL_KEY = "URL";
    public static final String DSP_CREATIVE_ID = "mopub-dsp-creative-id";
    public static final int MOPUB_BROWSER_REQUEST_CODE = 1;

    /* renamed from: a */
    public WebView f33756a;

    /* renamed from: b */
    public ImageButton f33757b;

    /* renamed from: c */
    public ImageButton f33758c;

    /* renamed from: d */
    public ImageButton f33759d;

    /* renamed from: e */
    public ImageButton f33760e;

    /* renamed from: f */
    public boolean f33761f;

    /* renamed from: com.mopub.common.MoPubBrowser$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$a.class */
    public class View$OnClickListenerC8703a implements View.OnClickListener {
        public View$OnClickListenerC8703a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MoPubBrowser.this.f33756a.canGoBack()) {
                MoPubBrowser.this.f33756a.goBack();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$b.class */
    public class View$OnClickListenerC8704b implements View.OnClickListener {
        public View$OnClickListenerC8704b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MoPubBrowser.this.f33756a.canGoForward()) {
                MoPubBrowser.this.f33756a.goForward();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$c.class */
    public class View$OnClickListenerC8705c implements View.OnClickListener {
        public View$OnClickListenerC8705c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoPubBrowser.this.f33756a.reload();
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$d.class */
    public class View$OnClickListenerC8706d implements View.OnClickListener {
        public View$OnClickListenerC8706d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoPubBrowser.this.finish();
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$e.class */
    public class C8707e extends WebChromeClient {
        public C8707e() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                MoPubBrowser.this.setTitle(webView.getUrl());
            } else {
                MoPubBrowser.this.setTitle("Loading...");
            }
            if (MoPubBrowser.this.f33761f && Build.VERSION.SDK_INT < 24) {
                MoPubBrowser.this.setProgress(i * 100);
            }
        }
    }

    /* renamed from: a */
    public final ImageButton m4625a(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }

    /* renamed from: a */
    public final void m4626a() {
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    /* renamed from: b */
    public final View m4623b() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(relativeLayout);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setBackgroundDrawable(Drawables.BACKGROUND.createDrawable(this));
        relativeLayout.addView(linearLayout2);
        this.f33757b = m4625a(Drawables.UNLEFT_ARROW.createDrawable(this));
        this.f33758c = m4625a(Drawables.UNRIGHT_ARROW.createDrawable(this));
        this.f33759d = m4625a(Drawables.REFRESH.createDrawable(this));
        this.f33760e = m4625a(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.f33757b);
        linearLayout2.addView(this.f33758c);
        linearLayout2.addView(this.f33759d);
        linearLayout2.addView(this.f33760e);
        this.f33756a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f33756a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f33756a);
        return linearLayout;
    }

    /* renamed from: c */
    public final void m4621c() {
        this.f33757b.setBackgroundColor(0);
        this.f33757b.setOnClickListener(new View$OnClickListenerC8703a());
        this.f33758c.setBackgroundColor(0);
        this.f33758c.setOnClickListener(new View$OnClickListenerC8704b());
        this.f33759d.setBackgroundColor(0);
        this.f33759d.setOnClickListener(new View$OnClickListenerC8705c());
        this.f33760e.setBackgroundColor(0);
        this.f33760e.setOnClickListener(new View$OnClickListenerC8706d());
    }

    /* renamed from: d */
    public final void m4620d() {
        WebSettings settings = this.f33756a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.f33756a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f33756a.setWebViewClient(new C6632c(this));
    }

    @Override // android.app.Activity
    public void finish() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    public ImageButton getBackButton() {
        return this.f33757b;
    }

    public ImageButton getCloseButton() {
        return this.f33760e;
    }

    public ImageButton getForwardButton() {
        return this.f33758c;
    }

    public ImageButton getRefreshButton() {
        return this.f33759d;
    }

    public WebView getWebView() {
        return this.f33756a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        boolean requestFeature = getWindow().requestFeature(2);
        this.f33761f = requestFeature;
        if (requestFeature) {
            getWindow().setFeatureInt(2, -1);
        }
        setContentView(m4623b());
        m4620d();
        m4621c();
        m4626a();
        Utils.hideNavigationBar(this);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f33756a.destroy();
        this.f33756a = null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        this.f33756a.setWebChromeClient(null);
        WebViews.onPause(this.f33756a, isFinishing());
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        this.f33756a.setWebChromeClient(new C8707e());
        this.f33756a.onResume();
    }
}
