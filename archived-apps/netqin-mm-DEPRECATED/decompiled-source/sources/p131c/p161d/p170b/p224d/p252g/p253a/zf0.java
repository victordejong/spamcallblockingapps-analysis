package p131c.p161d.p170b.p224d.p252g.p253a;

import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.google.android.gms.internal.ads.zzre;
import com.google.android.gms.internal.ads.zzrk;
/* renamed from: c.d.b.d.g.a.zf0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/zf0.class */
public final class zf0 implements Runnable {

    /* renamed from: a */
    public ValueCallback<String> f16444a = new yf0(this);

    /* renamed from: b */
    public final /* synthetic */ zzre f16445b;

    /* renamed from: c */
    public final /* synthetic */ WebView f16446c;

    /* renamed from: d */
    public final /* synthetic */ boolean f16447d;

    /* renamed from: e */
    public final /* synthetic */ zzrk f16448e;

    public zf0(zzrk zzrkVar, zzre zzreVar, WebView webView, boolean z) {
        this.f16448e = zzrkVar;
        this.f16445b = zzreVar;
        this.f16446c = webView;
        this.f16447d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f16446c.getSettings().getJavaScriptEnabled()) {
            try {
                this.f16446c.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f16444a);
            } catch (Throwable th) {
                this.f16444a.onReceiveValue("");
            }
        }
    }
}
