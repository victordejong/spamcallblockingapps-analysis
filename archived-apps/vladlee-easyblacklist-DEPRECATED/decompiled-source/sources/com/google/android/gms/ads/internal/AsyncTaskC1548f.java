package com.google.android.gms.ads.internal;

import android.os.AsyncTask;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzayu;
import com.google.android.gms.internal.ads.zzdq;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.ads.internal.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/f.class */
final class AsyncTaskC1548f extends AsyncTask<Void, Void, String> {

    /* renamed from: a */
    private final /* synthetic */ zzl f5909a;

    private AsyncTaskC1548f(zzl zzlVar) {
        this.f5909a = zzlVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ AsyncTaskC1548f(zzl zzlVar, byte b) {
        this(zzlVar);
    }

    /* renamed from: a */
    private final String m6058a() {
        Future future;
        try {
            zzl zzlVar = this.f5909a;
            future = this.f5909a.f5962c;
            zzlVar.f5967h = (zzdq) future.get(1000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzayu.zzd("", e);
        }
        return this.f5909a.m6043a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Void[] voidArr) {
        return m6058a();
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ void onPostExecute(String str) {
        WebView webView;
        WebView webView2;
        String str2 = str;
        webView = this.f5909a.f5965f;
        if (webView != null && str2 != null) {
            webView2 = this.f5909a.f5965f;
            webView2.loadUrl(str2);
        }
    }
}
