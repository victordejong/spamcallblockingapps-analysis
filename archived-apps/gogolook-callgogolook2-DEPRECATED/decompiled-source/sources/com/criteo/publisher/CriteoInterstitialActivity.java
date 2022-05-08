package com.criteo.publisher;

import android.app.Activity;
import android.content.ComponentName;
import android.os.Bundle;
import android.os.ResultReceiver;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.criteo.publisher.p023p.AbstractC2089c;
import com.criteo.publisher.p023p.C2086a;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity.class */
public class CriteoInterstitialActivity extends Activity {

    /* renamed from: a */
    public WebView f1998a;

    /* renamed from: b */
    public ResultReceiver f1999b;

    /* renamed from: c */
    public ImageButton f2000c;

    /* renamed from: d */
    public FrameLayout f2001d;

    /* renamed from: e */
    public ComponentName f2002e;

    /* renamed from: com.criteo.publisher.CriteoInterstitialActivity$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$a.class */
    public class View$OnClickListenerC1901a implements View.OnClickListener {
        public View$OnClickListenerC1901a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CriteoInterstitialActivity.this.m36055b();
        }
    }

    /* renamed from: com.criteo.publisher.CriteoInterstitialActivity$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/CriteoInterstitialActivity$b.class */
    public static class C1902b implements AbstractC2089c {

        /* renamed from: a */
        public final WeakReference<CriteoInterstitialActivity> f2004a;

        public C1902b(WeakReference<CriteoInterstitialActivity> weakReference) {
            this.f2004a = weakReference;
        }

        public /* synthetic */ C1902b(WeakReference weakReference, View$OnClickListenerC1901a aVar) {
            this(weakReference);
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: a */
        public void mo35710a() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f2004a.get();
            if (criteoInterstitialActivity != null) {
                criteoInterstitialActivity.m36055b();
            }
        }

        @Override // com.criteo.publisher.p023p.AbstractC2089c
        /* renamed from: b */
        public void mo35709b() {
            CriteoInterstitialActivity criteoInterstitialActivity = this.f2004a.get();
            if (criteoInterstitialActivity != null) {
                criteoInterstitialActivity.m36058a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m36058a() {
        Bundle bundle = new Bundle();
        bundle.putInt("Action", 202);
        this.f1999b.send(100, bundle);
        finish();
    }

    /* renamed from: a */
    private void m36056a(String str) {
        this.f1998a.loadDataWithBaseURL("https://criteo.com", str, "text/html", "UTF-8", "about:blank");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m36055b() {
        Bundle bundle = new Bundle();
        bundle.putInt("Action", 201);
        this.f1999b.send(100, bundle);
        finish();
    }

    /* renamed from: c */
    private void m36053c() {
        this.f1998a.getSettings().setJavaScriptEnabled(true);
        this.f1998a.setWebViewClient(new C2086a(new C1902b(new WeakReference(this), null), this.f2002e));
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m36055b();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1903R.layout.activity_criteo_interstitial);
        this.f2001d = (FrameLayout) findViewById(C1903R.C1905id.AdLayout);
        WebView webView = new WebView(getApplicationContext());
        this.f1998a = webView;
        this.f2001d.addView(webView, 0);
        this.f2000c = (ImageButton) findViewById(C1903R.C1905id.closeButton);
        Bundle extras = getIntent().getExtras();
        if (!(extras == null || extras.getString("webviewdata") == null)) {
            String string = extras.getString("webviewdata");
            this.f1999b = (ResultReceiver) extras.getParcelable("resultreceiver");
            this.f2002e = (ComponentName) extras.getParcelable("callingactivity");
            m36053c();
            m36056a(string);
        }
        this.f2000c.setOnClickListener(new View$OnClickListenerC1901a());
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f2001d.removeAllViews();
        this.f1998a.setWebViewClient(null);
        this.f1998a.destroy();
        this.f1998a = null;
    }
}
