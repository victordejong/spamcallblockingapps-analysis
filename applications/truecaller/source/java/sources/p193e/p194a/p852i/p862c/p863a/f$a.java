package p193e.p194a.p852i.p862c.p863a;

import android.content.Context;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.razorpay.AnalyticsConstants;
import s1.z.c.l;
/* renamed from: e.a.i.c.a.f$a */
/* loaded from: classes3-dex2jar.jar:e/a/i/c/a/f$a.class */
public final class f$a extends WebViewClient {

    /* renamed from: a */
    public final /* synthetic */ WebView f42816a;

    /* renamed from: b */
    public final /* synthetic */ f f42817b;

    /* renamed from: c */
    public final /* synthetic */ e f42818c;

    public f$a(WebView webView, f fVar, int i, int i2, e eVar) {
        this.f42816a = webView;
        this.f42817b = fVar;
        this.f42818c = eVar;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        e eVar = this.f42818c;
        if (eVar != null && webResourceRequest != null) {
            f fVar = this.f42817b;
            Context context = this.f42816a.getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            String uri = webResourceRequest.getUrl().toString();
            l.d(uri, "it.url.toString()");
            fVar.a(context, uri, eVar.g(), eVar.j());
        }
        f fVar2 = this.f42817b;
        e eVar2 = this.f42818c;
        if (!fVar2.c) {
            if (eVar2 != null) {
                eVar2.m19294e();
            }
            fVar2.c = true;
            return false;
        }
        return false;
    }
}
