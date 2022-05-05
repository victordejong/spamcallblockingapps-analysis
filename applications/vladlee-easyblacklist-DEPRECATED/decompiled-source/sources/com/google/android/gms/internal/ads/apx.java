package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/apx.class */
public final class apx implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzqc f8148a;

    /* renamed from: b */
    final /* synthetic */ WebView f8149b;

    /* renamed from: c */
    final /* synthetic */ boolean f8150c;

    /* renamed from: d */
    final /* synthetic */ zzqi f8151d;

    /* renamed from: e */
    private ValueCallback<String> f8152e = new aqa(this);

    /* JADX INFO: Access modifiers changed from: package-private */
    public apx(zzqi zzqiVar, zzqc zzqcVar, WebView webView, boolean z) {
        this.f8151d = zzqiVar;
        this.f8148a = zzqcVar;
        this.f8149b = webView;
        this.f8150c = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f8149b.getSettings().getJavaScriptEnabled()) {
            try {
                this.f8149b.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f8152e);
            } catch (Throwable th) {
                this.f8152e.onReceiveValue("");
            }
        }
    }
}
