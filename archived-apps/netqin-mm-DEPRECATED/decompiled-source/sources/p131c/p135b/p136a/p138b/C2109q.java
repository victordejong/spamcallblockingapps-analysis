package p131c.p135b.p136a.p138b;

import android.content.Context;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
/* renamed from: c.b.a.b.q */
/* loaded from: classes-dex2jar.jar:c/b/a/b/q.class */
public class C2109q extends C2081g {

    /* renamed from: b */
    public static C2109q f8115b;

    public C2109q(C2110r rVar, Context context) {
        super(context);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setSupportMultipleWindows(false);
        settings.setJavaScriptEnabled(true);
        setWebViewClient(rVar);
        setWebChromeClient(new WebChromeClient());
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        setScrollBarStyle(33554432);
    }

    /* renamed from: a */
    public static C2109q m31045a(C2341l lVar, C2110r rVar, Context context) {
        if (!((Boolean) lVar.m30291a(C2251d.C2256e.f8639a4)).booleanValue()) {
            return new C2109q(rVar, context);
        }
        C2109q qVar = f8115b;
        if (qVar == null) {
            f8115b = new C2109q(rVar, context);
        } else {
            qVar.loadUrl("about:blank");
            f8115b.clearHistory();
            f8115b.setWebViewClient(rVar);
        }
        return f8115b;
    }

    /* renamed from: a */
    public void m31044a(String str) {
        loadDataWithBaseURL("/", str, "text/html", null, "");
    }
}
