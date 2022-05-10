package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.ValueCallback;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.ads.zzbim;
import p131c.p161d.p170b.p224d.p252g.p253a.C3687ja;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbim.class */
public class zzbim extends C3687ja implements zzbir {

    /* renamed from: a */
    public final zzbik f25034a;

    /* renamed from: b */
    public boolean f25035b;

    /* renamed from: c */
    public boolean f25036c;

    public zzbim(Context context, zzbik zzbikVar) {
        super(context);
        zzp.m17965g().m16179f();
        this.f25034a = zzbikVar;
        super.setWebViewClient(zzbikVar);
    }

    @VisibleForTesting
    /* renamed from: G */
    public void mo15456G() {
        synchronized (this) {
            zzayp.m16153g("Destroying WebView!");
            m15454R();
            zzbbz.f24768e.execute(new Runnable(this) { // from class: c.d.b.d.g.a.la

                /* renamed from: a */
                public final zzbim f13947a;

                {
                    this.f13947a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f13947a.m15455Q();
                }
            });
        }
    }

    /* renamed from: Q */
    public final /* synthetic */ void m15455Q() {
        super.destroy();
    }

    /* renamed from: R */
    public final void m15454R() {
        synchronized (this) {
            if (!this.f25036c) {
                this.f25036c = true;
                zzp.m17965g().m16178g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbir
    /* renamed from: a */
    public final void mo15434a(zzbin zzbinVar) {
        synchronized (this) {
            zzayp.m16153g("Blank page loaded, 1...");
            mo15456G();
        }
    }

    /* renamed from: c */
    public void mo15453c(boolean z) {
    }

    @Override // android.webkit.WebView
    public void destroy() {
        synchronized (this) {
            if (!this.f25035b) {
                this.f25035b = true;
                this.f25034a.m15460a(this);
                mo15453c(false);
                zzayp.m16153g("Initiating WebView self destruct sequence in 3...");
                zzayp.m16153g("Loading blank page in WebView, 2...");
                try {
                    super.loadUrl("about:blank");
                } catch (UnsatisfiedLinkError e) {
                    zzp.m17965g().m16188a(e, "AdWebViewImpl.loadUrlUnsafe");
                    zzbbq.m15851d("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (m15452g()) {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    public void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!m15452g()) {
                    mo15453c(true);
                }
                m15454R();
            }
        } finally {
            super.finalize();
        }
    }

    /* renamed from: g */
    public final boolean m15452g() {
        boolean z;
        synchronized (this) {
            z = this.f25035b;
        }
        return z;
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!m15452g()) {
                super.loadData(str, str2, str3);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!m15452g()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.C3687ja, android.webkit.WebView
    public void loadUrl(String str) {
        synchronized (this) {
            if (!m15452g()) {
                super.loadUrl(str);
            } else {
                zzbbq.m15852d("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        if (!m15452g()) {
            super.onDraw(canvas);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public void onPause() {
        if (!m15452g()) {
            super.onPause();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgj
    public void onResume() {
        if (!m15452g()) {
            super.onResume();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !m15452g() && super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (!m15452g()) {
            super.stopLoading();
        }
    }
}
