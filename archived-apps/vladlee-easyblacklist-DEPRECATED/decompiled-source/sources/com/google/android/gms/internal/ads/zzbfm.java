package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.ValueCallback;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.zzq;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbfm.class */
public class zzbfm extends C1987jq implements zzbfr {

    /* renamed from: a */
    private final zzbfk f11813a;

    /* renamed from: b */
    private boolean f11814b;

    /* renamed from: c */
    private boolean f11815c;

    public zzbfm(Context context, zzbfk zzbfkVar) {
        super(context);
        zzq.zzku().zzvc();
        this.f11813a = zzbfkVar;
        super.setWebViewClient(zzbfkVar);
    }

    /* renamed from: b */
    private final void m4092b() {
        synchronized (this) {
            if (!this.f11815c) {
                this.f11815c = true;
                zzq.zzku().zzvd();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4094a() {
        super.destroy();
    }

    /* renamed from: a */
    protected void mo4093a(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.C1987jq, android.webkit.WebView
    public /* bridge */ /* synthetic */ void addJavascriptInterface(Object obj, String str) {
        super.addJavascriptInterface(obj, str);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        synchronized (this) {
            if (!this.f11814b) {
                this.f11814b = true;
                this.f11813a.m4095a(this);
                mo4093a(false);
                zzavs.zzed("Initiating WebView self destruct sequence in 3...");
                zzavs.zzed("Loading blank page in WebView, 2...");
                try {
                    super.loadUrl("about:blank");
                } catch (UnsatisfiedLinkError e) {
                    zzq.zzku().zza(e, "AdWebViewImpl.loadUrlUnsafe");
                    zzavs.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        synchronized (this) {
            if (isDestroyed()) {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
                if (valueCallback != null) {
                    valueCallback.onReceiveValue(null);
                }
                return;
            }
            super.evaluateJavascript(str, valueCallback);
        }
    }

    protected void finalize() {
        try {
            synchronized (this) {
                if (!isDestroyed()) {
                    mo4093a(true);
                }
                m4092b();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean isDestroyed() {
        boolean z;
        synchronized (this) {
            z = this.f11814b;
        }
        return z;
    }

    @Override // android.webkit.WebView
    public void loadData(String str, String str2, String str3) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadData(str, str2, str3);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadDataWithBaseURL(str, str2, str3, str4, str5);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.C1987jq, android.webkit.WebView
    public void loadUrl(String str) {
        synchronized (this) {
            if (!isDestroyed()) {
                super.loadUrl(str);
            } else {
                zzavs.zzez("#004 The webview is destroyed. Ignoring action.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.webkit.WebView, android.view.View
    public void onDraw(Canvas canvas) {
        if (!isDestroyed()) {
            super.onDraw(canvas);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public void onPause() {
        if (!isDestroyed()) {
            super.onPause();
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbdi
    public void onResume() {
        if (!isDestroyed()) {
            super.onResume();
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !isDestroyed() && super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (!isDestroyed()) {
            super.stopLoading();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final void zza(zzbfn zzbfnVar) {
        synchronized (this) {
            zzavs.zzed("Blank page loaded, 1...");
            zzaag();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzaag() {
        synchronized (this) {
            zzavs.zzed("Destroying WebView!");
            m4092b();
            zzazd.zzdwi.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.js

                /* renamed from: a */
                private final zzbfm f8801a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8801a = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f8801a.m4094a();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.C1987jq, com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzaip
    public /* bridge */ /* synthetic */ void zzcy(String str) {
        super.zzcy(str);
    }
}
