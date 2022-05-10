package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.Context;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzayp;
import com.google.android.gms.internal.ads.zzbbq;
/* renamed from: c.d.b.d.g.a.ja */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/ja.class */
public class C3687ja extends WebView {
    public C3687ja(Context context) {
        super(context);
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(2);
        }
        zzp.m17967e().mo16040a(getContext(), settings);
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        try {
            getSettings().setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            zzbbq.m15855b("Unable to enable Javascript.", e);
        }
    }

    /* renamed from: a */
    public void mo15582a(String str) {
        C3724ka.m26714a(this, str);
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        if (Build.VERSION.SDK_INT >= 17) {
            super.addJavascriptInterface(obj, str);
        } else {
            zzayp.m16153g("Ignore addJavascriptInterface due to low Android version.");
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
            zzp.m17965g().m16188a(e, "CoreWebView.loadUrl");
            zzbbq.m15851d("#007 Could not call remote method.", e);
        }
    }
}
