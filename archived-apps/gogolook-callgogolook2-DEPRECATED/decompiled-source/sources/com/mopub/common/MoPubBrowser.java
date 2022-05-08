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
import androidx.annotation.NonNull;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.util.WebViews;
import p081h.p430l.p431a.C10683c;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser.class */
public class MoPubBrowser extends Activity {
    public static final String DESTINATION_URL_KEY = "URL";
    public static final String DSP_CREATIVE_ID = "mopub-dsp-creative-id";
    public static final int MOPUB_BROWSER_REQUEST_CODE = 1;

    /* renamed from: a */
    public WebView f8117a;

    /* renamed from: b */
    public ImageButton f8118b;

    /* renamed from: c */
    public ImageButton f8119c;

    /* renamed from: d */
    public ImageButton f8120d;

    /* renamed from: e */
    public ImageButton f8121e;

    /* renamed from: f */
    public boolean f8122f;

    /* renamed from: com.mopub.common.MoPubBrowser$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$a.class */
    public class View$OnClickListenerC3765a implements View.OnClickListener {
        public View$OnClickListenerC3765a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MoPubBrowser.this.f8117a.canGoBack()) {
                MoPubBrowser.this.f8117a.goBack();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$b.class */
    public class View$OnClickListenerC3766b implements View.OnClickListener {
        public View$OnClickListenerC3766b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (MoPubBrowser.this.f8117a.canGoForward()) {
                MoPubBrowser.this.f8117a.goForward();
            }
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$c.class */
    public class View$OnClickListenerC3767c implements View.OnClickListener {
        public View$OnClickListenerC3767c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoPubBrowser.this.f8117a.reload();
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$d.class */
    public class View$OnClickListenerC3768d implements View.OnClickListener {
        public View$OnClickListenerC3768d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MoPubBrowser.this.finish();
        }
    }

    /* renamed from: com.mopub.common.MoPubBrowser$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/MoPubBrowser$e.class */
    public class C3769e extends WebChromeClient {
        public C3769e() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            if (i == 100) {
                MoPubBrowser.this.setTitle(webView.getUrl());
            } else {
                MoPubBrowser.this.setTitle("Loading...");
            }
            if (MoPubBrowser.this.f8122f && Build.VERSION.SDK_INT < 24) {
                MoPubBrowser.this.setProgress(i * 100);
            }
        }
    }

    /* renamed from: a */
    public final ImageButton m30777a(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }

    /* renamed from: a */
    public final void m30778a() {
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    /* renamed from: b */
    public final View m30775b() {
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
        this.f8118b = m30777a(Drawables.UNLEFT_ARROW.createDrawable(this));
        this.f8119c = m30777a(Drawables.UNRIGHT_ARROW.createDrawable(this));
        this.f8120d = m30777a(Drawables.REFRESH.createDrawable(this));
        this.f8121e = m30777a(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.f8118b);
        linearLayout2.addView(this.f8119c);
        linearLayout2.addView(this.f8120d);
        linearLayout2.addView(this.f8121e);
        this.f8117a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f8117a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f8117a);
        return linearLayout;
    }

    /* renamed from: c */
    public final void m30773c() {
        this.f8118b.setBackgroundColor(0);
        this.f8118b.setOnClickListener(new View$OnClickListenerC3765a());
        this.f8119c.setBackgroundColor(0);
        this.f8119c.setOnClickListener(new View$OnClickListenerC3766b());
        this.f8120d.setBackgroundColor(0);
        this.f8120d.setOnClickListener(new View$OnClickListenerC3767c());
        this.f8121e.setBackgroundColor(0);
        this.f8121e.setOnClickListener(new View$OnClickListenerC3768d());
    }

    /* renamed from: d */
    public final void m30772d() {
        WebSettings settings = this.f8117a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.f8117a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f8117a.setWebViewClient(new C10683c(this));
    }

    @Override // android.app.Activity
    public void finish() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    @NonNull
    public ImageButton getBackButton() {
        return this.f8118b;
    }

    @NonNull
    public ImageButton getCloseButton() {
        return this.f8121e;
    }

    @NonNull
    public ImageButton getForwardButton() {
        return this.f8119c;
    }

    @NonNull
    public ImageButton getRefreshButton() {
        return this.f8120d;
    }

    @NonNull
    public WebView getWebView() {
        return this.f8117a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        this.f8122f = getWindow().requestFeature(2);
        if (this.f8122f) {
            getWindow().setFeatureInt(2, -1);
        }
        setContentView(m30775b());
        m30772d();
        m30773c();
        m30778a();
        Utils.hideNavigationBar(this);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f8117a.destroy();
        this.f8117a = null;
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        this.f8117a.setWebChromeClient(null);
        WebViews.onPause(this.f8117a, isFinishing());
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        this.f8117a.setWebChromeClient(new C3769e());
        this.f8117a.onResume();
    }
}
