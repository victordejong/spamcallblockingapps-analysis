package p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j;

import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Iterator;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j.C6451c;
import p131c.p372f.p373a.p374a.p375a.p389q.C6473c;
/* renamed from: c.f.a.a.a.m.h.j.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/m/h/j/b.class */
public class C6450b implements AbstractC6449a, C6451c.AbstractC6452a {

    /* renamed from: a */
    public final C6473c f20137a;

    /* renamed from: b */
    public final C6451c f20138b;

    /* renamed from: c */
    public int f20139c = 0;

    /* renamed from: d */
    public final ArrayList<String> f20140d = new ArrayList<>();

    public C6450b(WebView webView) {
        this.f20137a = new C6473c(webView);
        webView.getSettings().setJavaScriptEnabled(true);
        C6451c cVar = new C6451c();
        this.f20138b = cVar;
        cVar.m20848a(this);
        webView.setWebViewClient(this.f20138b);
    }

    /* renamed from: a */
    public void m20850a() {
        WebView webView = (WebView) this.f20137a.m20774a();
        if (webView != null && this.f20139c == 0) {
            this.f20139c = 1;
            webView.loadData("<html><body></body></html>", "text/html", null);
        }
    }

    /* renamed from: a */
    public final void m20849a(String str) {
        this.f20137a.m20775b("(function () {\nvar script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);\n})();".replace("%SCRIPT_SRC%", str));
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j.AbstractC6449a
    public void injectJavaScriptResource(String str) {
        if (this.f20139c == 2) {
            m20849a(str);
        } else {
            this.f20140d.add(str);
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.p384j.C6451c.AbstractC6452a
    public void webViewDidLoadData() {
        this.f20139c = 2;
        Iterator<String> it = this.f20140d.iterator();
        while (it.hasNext()) {
            m20849a(it.next());
        }
        this.f20140d.clear();
    }
}
