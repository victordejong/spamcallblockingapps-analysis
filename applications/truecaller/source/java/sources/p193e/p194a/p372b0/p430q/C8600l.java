package p193e.p194a.p372b0.p430q;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.tenor.android.core.constant.ViewAction;
import com.tenor.android.core.network.constant.Protocols;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.z.c.l;
/* renamed from: e.a.b0.q.l */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/l.class */
public final class C8600l extends WebViewClient {

    /* renamed from: a */
    public final View f26426a;

    /* renamed from: b */
    public final boolean f26427b;

    public C8600l(View view, boolean z) {
        l.e(view, "progressView");
        this.f26426a = view;
        this.f26427b = z;
    }

    public C8600l(View view, boolean z, int i) {
        z = (i & 2) != 0 ? false : z;
        l.e(view, "progressView");
        this.f26426a = view;
        this.f26427b = z;
    }

    /* renamed from: a */
    public final boolean m28261a(Uri uri) {
        boolean z;
        String[] strArr = this.f26427b ? new String[]{Protocols.HTTP, "https", "file"} : new String[]{Protocols.HTTP, "https"};
        String scheme = uri.getScheme();
        if (scheme != null) {
            String lowerCase = scheme.toLowerCase();
            l.d(lowerCase, "(this as java.lang.String).toLowerCase()");
            z = C25225a.m3976Q(strArr, lowerCase);
        } else {
            z = true;
        }
        if (!z) {
            this.f26426a.getContext().startActivity(new Intent("android.intent.action.VIEW", uri));
        }
        return !z;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        l.e(webView, ViewAction.VIEW);
        l.e(str, "url");
        super.onPageFinished(webView, str);
        this.f26426a.setVisibility(8);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
        this.f26426a.setVisibility(0);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        l.e(webView, ViewAction.VIEW);
        l.e(webResourceRequest, "resourceRequest");
        Uri url = webResourceRequest.getUrl();
        l.d(url, "resourceRequest.url");
        return m28261a(url);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        l.e(webView, ViewAction.VIEW);
        l.e(str, "url");
        Uri parse = Uri.parse(str);
        l.d(parse, "Uri.parse(url)");
        return m28261a(parse);
    }
}
