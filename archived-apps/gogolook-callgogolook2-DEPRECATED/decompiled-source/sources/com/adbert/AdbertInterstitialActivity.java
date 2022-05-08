package com.adbert;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.adbert.p009a.C1373b;
import com.adbert.p009a.C1393e;
import com.adbert.p009a.C1398f;
import com.adbert.p009a.C1402g;
import com.adbert.p009a.C1409j;
import com.adbert.p009a.p011b.C1377b;
import com.adbert.p009a.p012c.EnumC1382b;
import com.adbert.p009a.p012c.EnumC1389i;
import com.adbert.p009a.p013d.C1391a;
import com.adbert.p009a.p014e.C1394a;
import com.adbert.p015b.C1412a;
import com.adbert.p015b.C1420b;
import com.adbert.p015b.C1426d;
import com.adbert.p015b.C1457j;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import java.io.File;
import org.json.JSONException;
/* loaded from: classes-dex2jar.jar:com/adbert/AdbertInterstitialActivity.class */
public class AdbertInterstitialActivity extends Activity {

    /* renamed from: d */
    public float f233d;

    /* renamed from: e */
    public float f234e;

    /* renamed from: f */
    public float f235f;

    /* renamed from: g */
    public boolean f236g;

    /* renamed from: h */
    public boolean f237h;

    /* renamed from: i */
    public boolean f238i;

    /* renamed from: k */
    public WebView f240k;

    /* renamed from: l */
    public C1377b f241l;

    /* renamed from: m */
    public C1426d f242m;

    /* renamed from: n */
    public C1420b f243n;

    /* renamed from: o */
    public C1412a f244o;

    /* renamed from: p */
    public C1412a f245p;

    /* renamed from: s */
    public ValueCallback<Uri> f248s;

    /* renamed from: w */
    public ValueCallback<Uri[]> f252w;

    /* renamed from: x */
    public String f253x;

    /* renamed from: y */
    public C1373b f254y;

    /* renamed from: z */
    public C1457j f255z;

    /* renamed from: j */
    public int f239j = 50;

    /* renamed from: q */
    public boolean f246q = false;

    /* renamed from: r */
    public String f247r = "";

    /* renamed from: t */
    public final int f249t = 1;

    /* renamed from: u */
    public final int f250u = 2;

    /* renamed from: a */
    public final int f230a = 10;

    /* renamed from: v */
    public Uri f251v = null;

    /* renamed from: b */
    public C1412a.AbstractC1418b f231b = new C1412a.AbstractC1418b() { // from class: com.adbert.AdbertInterstitialActivity.3
        @Override // com.adbert.p015b.C1412a.AbstractC1418b
        /* renamed from: a */
        public void mo37089a(boolean z, String str) {
            if (!str.isEmpty()) {
                AdbertInterstitialActivity.this.f247r = str;
                AdbertInterstitialActivity.this.m37370a(z, 2);
            }
        }
    };

    /* renamed from: c */
    public C1391a f232c = new C1391a() { // from class: com.adbert.AdbertInterstitialActivity.4
        @Override // com.adbert.p009a.p013d.C1391a
        public void closeVideo() {
            AdbertInterstitialActivity.this.finish();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void closeWeb() {
            if (AdbertInterstitialActivity.this.f246q) {
                AdbertInterstitialActivity.this.finish();
                return;
            }
            ((ViewGroup) AdbertInterstitialActivity.this.f244o.getParent()).removeView(AdbertInterstitialActivity.this.f244o);
            AdbertInterstitialActivity.this.f244o = null;
            AdbertInterstitialActivity.this.m37358f();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void endingCardAction(int i) {
            AdbertInterstitialActivity.this.m37380a(i);
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void finish() {
            AdbertInterstitialActivity.this.finish();
        }

        @Override // com.adbert.p009a.p013d.C1391a
        public void setLogo(ViewGroup viewGroup, boolean z) {
            if (!AdbertInterstitialActivity.this.f241l.f431z) {
                C1402g.m37147a(AdbertInterstitialActivity.this.getApplicationContext(), (int) ((AdbertInterstitialActivity.this.f236g ? AdbertInterstitialActivity.this.f233d : AdbertInterstitialActivity.this.f234e) * 0.04d), viewGroup, z);
            }
        }
    };

    /* renamed from: com.adbert.AdbertInterstitialActivity$a */
    /* loaded from: classes-dex2jar.jar:com/adbert/AdbertInterstitialActivity$a.class */
    public class C1342a extends WebChromeClient {
        public C1342a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, final JsResult jsResult) {
            new AlertDialog.Builder(AdbertInterstitialActivity.this).setTitle("").setMessage(str2).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.adbert.AdbertInterstitialActivity.a.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    jsResult.confirm();
                }
            }).setCancelable(false).create().show();
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:22:0x0082  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00bc  */
        @Override // android.webkit.WebChromeClient
        @android.annotation.SuppressLint({"NewApi"})
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onShowFileChooser(android.webkit.WebView r5, android.webkit.ValueCallback<android.net.Uri[]> r6, android.webkit.WebChromeClient.FileChooserParams r7) {
            /*
                Method dump skipped, instructions count: 289
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.adbert.AdbertInterstitialActivity.C1342a.onShowFileChooser(android.webkit.WebView, android.webkit.ValueCallback, android.webkit.WebChromeClient$FileChooserParams):boolean");
        }
    }

    /* renamed from: a */
    private void m37381a() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        getWindow().setFormat(-2);
        this.f233d = displayMetrics.widthPixels;
        this.f234e = displayMetrics.heightPixels;
        this.f235f = displayMetrics.density;
        this.f236g = C1402g.m37136b(this);
        this.f239j = C1402g.m37144a(this, this.f236g, this.f239j);
        if (getIntent().getExtras() == null || !getIntent().hasExtra("jsonStr")) {
            C1402g.m37134b("!jsonStr");
            return;
        }
        String string = getIntent().getExtras().getString("jsonStr");
        try {
            this.f241l = new C1377b();
            C1402g.m37146a(this, new C1402g.AbstractC1405a() { // from class: com.adbert.AdbertInterstitialActivity.1
                @Override // com.adbert.p009a.C1402g.AbstractC1405a
                public void onResult(String str) {
                    AdbertInterstitialActivity.this.f241l.f400B = str;
                }
            });
            this.f241l = new C1394a(getApplicationContext()).m37168a(string, this.f236g);
            if (this.f241l.f406a == EnumC1382b.cpm_banner) {
                m37369b();
            } else if (this.f241l.f406a == EnumC1382b.cpm_video) {
                m37365c();
            } else if (this.f241l.f406a == EnumC1382b.cpm_web) {
                m37362d();
            }
            if (!this.f241l.f419n) {
                this.f241l.f419n = true;
                C1398f.m37155b(this, this.f241l, new Runnable() { // from class: com.adbert.AdbertInterstitialActivity.2
                    @Override // java.lang.Runnable
                    public void run() {
                        AdbertInterstitialActivity.this.f241l.f419n = false;
                    }
                });
            }
        } catch (JSONException e) {
            C1402g.m37141a(e);
        } catch (Exception e2) {
            C1402g.m37141a(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37380a(int i) {
        C1398f.m37158a(this, this.f241l, EnumC1389i.init.m37181a(i));
        m37366b("click");
        C1409j.m37112a(this).m37107a(this.f241l, i, new C1409j.AbstractC1410a() { // from class: com.adbert.AdbertInterstitialActivity.5
            @Override // com.adbert.p009a.C1409j.AbstractC1410a
            public void open(String str) {
                AdbertInterstitialActivity.this.m37371a(str);
            }
        });
    }

    /* renamed from: a */
    private void m37379a(Uri uri, String str) {
        String a = C1393e.m37173a(this, uri);
        String str2 = a;
        if (a.isEmpty()) {
            str2 = uri.getPath();
        }
        String str3 = "data:image/jpeg;base64," + C1393e.m37172a(this, uri, str2);
        this.f245p.getWebView().loadUrl("javascript:" + str + "('" + str3 + "');");
    }

    /* renamed from: a */
    private void m37378a(ViewGroup viewGroup) {
        if (getApplicationContext() != null) {
            this.f255z = new C1457j(this);
            viewGroup.addView(this.f255z);
            this.f255z.loadUrl(this.f241l.f401C);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37371a(String str) {
        m37360e();
        this.f244o = new C1412a(this, this.f241l, this.f232c).m37097a(this.f231b).m37095a(str, true, this.f239j, new boolean[0]);
        if (this.f241l.f406a == EnumC1382b.cpm_banner) {
            this.f243n.addView(this.f244o);
        } else {
            this.f242m.addView(this.f244o);
        }
        this.f240k = this.f244o.getWebView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m37370a(boolean z, int i) {
        if (z && C1402g.m37145a(this, "android.permission.CAMERA") && C1402g.m37145a(this, "android.permission.WRITE_EXTERNAL_STORAGE")) {
            Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
            File file = new File(getExternalCacheDir(), "browser-cache");
            file.mkdirs();
            this.f251v = Uri.fromFile(new File(file.getAbsolutePath() + File.separator + System.currentTimeMillis() + ".jpg"));
            intent.putExtra("output", this.f251v);
            startActivityForResult(intent, i);
        } else if (C1402g.m37145a(this, "android.permission.READ_EXTERNAL_STORAGE")) {
            Intent intent2 = new Intent("android.intent.action.GET_CONTENT");
            intent2.addCategory("android.intent.category.OPENABLE");
            intent2.setType("image/*");
            startActivityForResult(intent2, i);
        }
    }

    /* renamed from: b */
    private void m37369b() {
        this.f238i = true;
        this.f243n = new C1420b(this, this.f236g, this.f241l, this.f233d, this.f234e, this.f239j, this.f232c);
        setContentView(this.f243n);
        if (!this.f241l.f401C.isEmpty()) {
            m37378a(this.f243n);
        }
    }

    /* renamed from: b */
    private void m37366b(String str) {
        C1377b bVar = this.f241l;
        String str2 = bVar != null ? bVar.f409d : "";
        Intent intent = new Intent(CatWalkWebPayload.CATWALK_AD_KEY + str2);
        LocalBroadcastManager instance = LocalBroadcastManager.getInstance(this);
        intent.putExtra("action", str);
        instance.sendBroadcast(intent);
    }

    /* renamed from: c */
    private void m37365c() {
        boolean z = true;
        this.f237h = true;
        if (!getIntent().hasExtra("hideCI") || !getIntent().getExtras().getBoolean("hideCI")) {
            z = false;
        }
        this.f242m = new C1426d(this, this.f241l, this.f239j, this.f232c);
        this.f242m.m37077a(z);
        setContentView(this.f242m);
        if (!this.f241l.f401C.isEmpty()) {
            m37378a(this.f242m);
        }
    }

    /* renamed from: d */
    private void m37362d() {
        this.f246q = true;
        C1412a a = new C1412a(this, this.f241l, this.f232c).m37097a(this.f231b);
        C1377b bVar = this.f241l;
        this.f245p = a.m37095a(bVar.f427v, bVar.f430y, this.f239j, true);
        this.f245p.getWebView().setWebChromeClient(new C1342a());
        setContentView(this.f245p);
    }

    /* renamed from: e */
    private void m37360e() {
        C1426d dVar;
        if (!this.f237h || (dVar = this.f242m) == null) {
            C1412a aVar = this.f245p;
            if (aVar != null) {
                aVar.m37100a();
                return;
            }
            C1412a aVar2 = this.f244o;
            if (aVar2 != null) {
                aVar2.m37100a();
                return;
            }
            return;
        }
        dVar.m37074b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m37358f() {
        C1426d dVar;
        if (!this.f237h || (dVar = this.f242m) == null) {
            C1412a aVar = this.f245p;
            if (aVar != null) {
                aVar.m37094b();
                return;
            }
            C1412a aVar2 = this.f244o;
            if (aVar2 != null) {
                aVar2.m37094b();
                return;
            }
            return;
        }
        dVar.m37071c();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        C1412a aVar;
        if (keyEvent.getAction() != 0 || keyEvent.getKeyCode() != 4) {
            return super.dispatchKeyEvent(keyEvent);
        }
        WebView webView = this.f240k;
        if (webView == null || !webView.canGoBack()) {
            C1412a aVar2 = this.f244o;
            if (aVar2 != null && aVar2.getVisibility() == 0) {
                if (this.f241l.f406a == EnumC1382b.cpm_banner) {
                    this.f243n.removeView(this.f244o);
                } else {
                    this.f242m.removeView(this.f244o);
                }
                this.f244o = null;
                m37358f();
                return false;
            } else if (!this.f246q || (aVar = this.f245p) == null || !aVar.getWebView().canGoBack()) {
                finish();
                return false;
            } else {
                this.f245p.getWebView().goBack();
                return false;
            }
        } else {
            this.f240k.goBack();
            return false;
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(0, 0);
        m37366b(MraidParser.MRAID_COMMAND_CLOSE);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        Uri uri;
        Uri[] uriArr;
        if (i == 10) {
            if (i != 10 || this.f252w == null) {
                super.onActivityResult(i, i2, intent);
                return;
            }
            if (i2 == -1) {
                if (intent == null) {
                    String str = this.f253x;
                    if (str != null) {
                        uriArr = new Uri[]{Uri.parse(str)};
                        this.f252w.onReceiveValue(uriArr);
                        this.f252w = null;
                    }
                } else {
                    String dataString = intent.getDataString();
                    if (dataString != null) {
                        uriArr = new Uri[]{Uri.parse(dataString)};
                        this.f252w.onReceiveValue(uriArr);
                        this.f252w = null;
                    }
                }
            }
            uriArr = null;
            this.f252w.onReceiveValue(uriArr);
            this.f252w = null;
        } else if (i == 1) {
            if (this.f248s != null) {
                if (i2 == -1) {
                    try {
                        uri = intent != null ? Uri.parse(C1393e.m37173a(this, intent.getData())) : this.f251v;
                    } catch (Exception e) {
                        C1402g.m37141a(e);
                    }
                    this.f248s.onReceiveValue(uri);
                    this.f248s = null;
                }
                uri = null;
                this.f248s.onReceiveValue(uri);
                this.f248s = null;
            } else {
                return;
            }
        } else if (i == 2 && i2 == -1) {
            try {
                m37379a(intent != null ? intent.getData() : this.f251v, this.f247r);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        finish();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        m37381a();
        C1402g.m37134b("BeaconScanner Activity Start");
        C1377b bVar = this.f241l;
        if (bVar != null && bVar.m37200a(this)) {
            this.f254y = new C1373b(this.f241l.f404F);
            this.f254y.m37214a();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        C1420b bVar;
        C1377b bVar2;
        super.onDestroy();
        C1373b bVar3 = this.f254y;
        if (!(bVar3 == null || (bVar2 = this.f241l) == null)) {
            C1398f.m37157a(this, bVar3.m37211a(bVar2.f400B), this.f241l);
            this.f254y.m37209b();
            this.f254y = null;
        }
        if (this.f237h && this.f242m != null) {
            C1398f.m37160a(getApplicationContext(), this.f241l, this.f242m.getSeekTo());
            this.f242m.m37069d();
        }
        if (this.f238i && (bVar = this.f243n) != null) {
            bVar.m37088a();
        }
        WebView webView = this.f240k;
        if (webView != null) {
            webView.destroy();
        }
        C1412a aVar = this.f245p;
        if (aVar != null) {
            aVar.m37093c();
            this.f245p.getWebView().destroy();
        }
        C1412a aVar2 = this.f244o;
        if (aVar2 != null) {
            aVar2.m37093c();
        }
        C1457j jVar = this.f255z;
        if (jVar != null) {
            jVar.destroy();
        }
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        m37360e();
        C1373b bVar = this.f254y;
        if (bVar != null) {
            bVar.m37209b();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        m37358f();
        C1402g.m37134b("onResume()");
        C1373b bVar = this.f254y;
        if (bVar != null) {
            bVar.m37214a();
        }
    }
}
