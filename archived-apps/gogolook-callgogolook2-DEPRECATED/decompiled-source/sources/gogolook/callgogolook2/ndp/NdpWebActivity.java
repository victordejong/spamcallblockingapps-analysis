package gogolook.callgogolook2.ndp;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.URLUtil;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.app.WhoscallActivity;
import p459j.p460a.p518j.p520f.C12484b;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14190u4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p613z0.p617p.C14687h;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NdpWebActivity.class */
public class NdpWebActivity extends WhoscallActivity {

    /* renamed from: e */
    public String f12007e;

    /* renamed from: f */
    public WebView f12008f;

    /* renamed from: g */
    public ProgressBar f12009g;

    /* renamed from: h */
    public C12484b f12010h;

    /* renamed from: gogolook.callgogolook2.ndp.NdpWebActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NdpWebActivity$a.class */
    public class View$OnTouchListenerC4870a implements View.OnTouchListener {
        public View$OnTouchListenerC4870a(NdpWebActivity ndpWebActivity) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            int action = motionEvent.getAction();
            if ((action != 0 && action != 1) || view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NdpWebActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NdpWebActivity$b.class */
    public class C4871b extends WebChromeClient {
        public C4871b() {
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            NdpWebActivity.this.f12009g.setVisibility(0);
            NdpWebActivity.this.f12008f.setVisibility(8);
            NdpWebActivity.this.f12009g.setProgress(i);
            if (i == 100) {
                NdpWebActivity.this.f12009g.setVisibility(8);
                NdpWebActivity.this.f12008f.setVisibility(0);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.ndp.NdpWebActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/ndp/NdpWebActivity$c.class */
    public class C4872c extends WebViewClient {
        public C4872c() {
        }

        @Override // android.webkit.WebViewClient
        public void onLoadResource(WebView webView, String str) {
            if (str.contains("https://maps.google.com/maps")) {
                NdpWebActivity.this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                webView.stopLoading();
                return;
            }
            super.onLoadResource(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0150  */
        /* JADX WARN: Removed duplicated region for block: B:33:0x016a A[RETURN] */
        @Override // android.webkit.WebViewClient
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean shouldOverrideUrlLoading(android.webkit.WebView r6, java.lang.String r7) {
            /*
                Method dump skipped, instructions count: 364
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.ndp.NdpWebActivity.C4872c.shouldOverrideUrlLoading(android.webkit.WebView, java.lang.String):boolean");
        }
    }

    /* renamed from: a */
    public static final void m26873a(@NonNull Context context, @NonNull String str, @NonNull String str2, int i, String str3, boolean z) {
        if (!z || C14217x3.m2137h(context)) {
            Intent intent = new Intent(context, NdpWebActivity.class);
            intent.putExtra("title", str);
            if (!str2.contains("://")) {
                str2 = "https://" + str2;
            }
            intent.putExtra("url", str2);
            intent.putExtra("type", i);
            C14217x3.m2156c(context, intent);
            return;
        }
        C14687h.m861a(context, C14217x3.m2200a((int) R$string.aboutus_service_nointernet), 1).m858c();
    }

    /* renamed from: c */
    public final void m26870c(String str) {
        this.f12009g = (ProgressBar) findViewById(2131363006);
        this.f12008f = (WebView) findViewById(2131363717);
        this.f12008f.setOnTouchListener(new View$OnTouchListenerC4870a(this));
        C14190u4.m2263a(this.f12008f);
        this.f12008f.getSettings().setBuiltInZoomControls(true);
        this.f12008f.setScrollBarStyle(33554432);
        this.f12008f.setScrollbarFadingEnabled(false);
        this.f12008f.setWebChromeClient(new C4871b());
        this.f12008f.setWebViewClient(new C4872c());
        if (URLUtil.isHttpsUrl(str)) {
            this.f12008f.loadUrl(str);
            return;
        }
        C14217x3.m2156c(this, new Intent("android.intent.action.VIEW", Uri.parse(str)));
        finish();
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f12010h = m28683i();
        this.f12010h.m6028d(true);
        this.f12010h.m6043a(true);
        this.f12010h.m6032c(false);
        this.f12010h.setBackgroundDrawable(getResources().getDrawable(2131230731));
        this.f12010h.m6026e(-13421773);
        this.f12010h.m6035c(-6710887);
        this.f12010h.m6041b(2131231687);
        Bundle extras = getIntent().getExtras();
        setContentView(2131558932);
        if (extras.getString("title") != null) {
            this.f12007e = extras.getString("title");
            C12484b bVar = this.f12010h;
            StringBuilder sb = new StringBuilder();
            sb.append("<font color=\"#333333\">");
            sb.append(C14108o4.m2493a(TextUtils.isEmpty(this.f12007e) ? "" : this.f12007e, true, false));
            sb.append("</font>");
            bVar.m6038b(Html.fromHtml(sb.toString()));
        }
        if (extras.getString("subtitle") != null) {
            this.f12010h.m6044a(extras.getString("subtitle"));
        }
        extras.getInt("type", 1);
        m26870c(extras.getString("url"));
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        return super.onCreateOptionsMenu(menu);
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 0 || i != 4) {
            return super.onKeyDown(i, keyEvent);
        }
        if (this.f12008f.canGoBack()) {
            this.f12008f.goBack();
            return true;
        }
        finish();
        return true;
    }

    @Override // gogolook.callgogolook2.app.WhoscallActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        C14217x3.m2167b((Activity) this);
        return true;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        bundle.putAll(getIntent().getExtras());
    }
}
