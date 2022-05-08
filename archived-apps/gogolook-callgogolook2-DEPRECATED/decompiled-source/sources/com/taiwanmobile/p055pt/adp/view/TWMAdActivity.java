package com.taiwanmobile.p055pt.adp.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.p059b.C4157b;
import com.taiwanmobile.p055pt.adp.view.webview.IRBehavior;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientMraid;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidProcessor;
import java.io.ByteArrayOutputStream;
import java.lang.ref.WeakReference;
import java.util.Timer;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMAdActivity */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdActivity.class */
public class TWMAdActivity extends Activity {
    public static final int CAMERA_REQUEST_THUMBNAIL = 17301559;

    /* renamed from: b */
    public static boolean f9620b = false;

    /* renamed from: c */
    public static final StaticMethodWrapper f9621c = new StaticMethodWrapper();

    /* renamed from: f */
    public String f9625f;

    /* renamed from: a */
    public boolean f9622a = true;

    /* renamed from: d */
    public long f9623d = 0;

    /* renamed from: e */
    public int f9624e = 0;

    /* renamed from: g */
    public Timer f9626g = null;

    /* renamed from: h */
    public WeakReference<Context> f9627h = null;

    /* renamed from: i */
    public MraidProcessor f9628i = null;

    /* renamed from: j */
    public C4124a f9629j = null;

    /* renamed from: k */
    public JSWebView f9630k = null;

    /* renamed from: l */
    public RelativeLayout f9631l = null;

    /* renamed from: m */
    public ProgressBar f9632m = null;

    /* renamed from: n */
    public ImageButton f9633n = null;

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdActivity$StaticMethodWrapper */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdActivity$StaticMethodWrapper.class */
    public static class StaticMethodWrapper {
        public boolean isShowing() {
            return TWMAdActivity.f9620b;
        }

        public void launchAdActivity(String str) {
            C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str);
            if (bVar != null) {
                Context context = (Context) bVar.m29659a("_context");
                Intent intent = new Intent(context.getApplicationContext(), TWMAdActivity.class);
                intent.setFlags(268435456);
                intent.putExtra("txId", str);
                boolean unused = TWMAdActivity.f9620b = true;
                context.startActivity(intent);
                return;
            }
            C10831c.m10520b("TWMAdActivity", "AdUnit is null in AdManager");
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdActivity$a.class */
    public class C4064a extends WebViewClientMraid {

        /* renamed from: b */
        public final String f9638b;

        /* renamed from: c */
        public final MraidProcessor f9639c;

        public C4064a(String str, MraidProcessor mraidProcessor) {
            super(str, mraidProcessor);
            this.f9638b = str;
            this.f9639c = mraidProcessor;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            MraidProcessor mraidProcessor;
            C10831c.m10518c("InterstitialClient", "onPageFinished invoked!!");
            super.onPageFinished(webView, str);
            C10831c.m10518c("InterstitialClient", "page finished loading in " + (System.currentTimeMillis() - TWMAdActivity.this.f9623d));
            if (TWMAdActivity.this.f9622a) {
                TWMAdActivity.this.f9633n.setVisibility(0);
            }
            TWMAdActivity.this.f9630k.setVisibility(0);
            TWMAdActivity.this.f9632m.setVisibility(8);
            if (this.f9638b != null && (C4117a.m29671b().m29673a(this.f9638b) instanceof C4117a.C4118a)) {
                C4117a.C4118a aVar = (C4117a.C4118a) C4117a.m29671b().m29673a(this.f9638b);
                if (aVar.m29659a("kie") == null) {
                    aVar.m29658a("kie", Boolean.TRUE);
                    C4117a.m29671b().m29672a(this.f9638b, aVar);
                    TWMAdViewListener tWMAdViewListener = (TWMAdViewListener) aVar.m29659a("adListener");
                    TWMAd tWMAd = (TWMAd) aVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY);
                    if (!(tWMAdViewListener == null || tWMAd == null)) {
                        tWMAdViewListener.onPresentScreen(tWMAd);
                    }
                    String str2 = this.f9638b;
                    if (str2 != null && MraidProcessor.isMraidAd(str2) && (mraidProcessor = this.f9639c) != null) {
                        mraidProcessor.initMRAID(MraidProcessor.MraidPlacementType.INLINE);
                        this.f9639c.fireViewableChangeEvent(true);
                    }
                }
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C10831c.m10518c("InterstitialClient", "onPageStarted invoked!!");
            super.onPageStarted(webView, str, bitmap);
            TWMAdActivity.this.f9623d = System.currentTimeMillis();
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            C10831c.m10518c("InterstitialClient", "onReceivedError(" + i + "/" + str + ") invoked!!");
            TWMAdActivity.this.f9630k.setVisibility(4);
            TWMAdActivity.this.f9632m.setVisibility(8);
            C4127a.m29640a(this.f9638b, TWMAdRequest.ErrorCode.NETWORK_ERROR);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMAdActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMAdActivity$b.class */
    public final class C4065b implements IRBehavior {
        public C4065b() {
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
        public int checkFloatAdPosition() {
            return -1;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
        public void closeWebView(String str) {
            TWMAdActivity.this.m29858a(str);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
        public void disableCloseButton() {
            TWMAdActivity.this.runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMAdActivity.b.1
                @Override // java.lang.Runnable
                public void run() {
                    if (TWMAdActivity.this.f9633n != null) {
                        TWMAdActivity.this.f9633n.setVisibility(8);
                        TWMAdActivity.this.f9622a = false;
                    }
                }
            });
        }
    }

    /* renamed from: a */
    private void m29859a(JSWebView jSWebView) {
        C10831c.m10518c("TWMAdActivity", "onShow invoked!!");
        jSWebView.loadUrl("javascript:try{tamediaCustomLoad();}catch(e){}");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29858a(String str) {
        C4117a.m29671b().m29672a("adsing", Boolean.FALSE);
        runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMAdActivity.2
            @Override // java.lang.Runnable
            public void run() {
                TWMAdActivity.this.f9630k.pauseVideo();
            }
        });
        finish();
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    private void m29857a(String str, String str2, String str3, boolean z) {
        C4117a.AbstractC4119b bVar;
        C10831c.m10518c("TWMAdActivity", "buildFundamentalViews(" + str + "/" + str2 + "/" + str3 + ")");
        getWindow().setFlags(1024, 1024);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        requestWindowFeature(1);
        this.f9631l = new RelativeLayout(this);
        setContentView(this.f9631l);
        m29853c();
        m29851d();
        C4157b.m29499a(this);
        if (z) {
            bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str3);
            this.f9630k = new JSWebView((Activity) this);
            this.f9630k.setIRBehavior(new C4065b());
            this.f9630k.setLayoutParams(layoutParams);
            if (str3 != null && MraidProcessor.isMraidAd(str3)) {
                this.f9628i = new MraidProcessor(this.f9630k, str3);
            }
            this.f9630k.setWebViewClient(new C4064a(str3, this.f9628i));
            this.f9630k.loadContent(str, str2, str3);
            this.f9631l.addView(this.f9630k);
        } else {
            C10831c.m10518c("TWMAdActivity", "not expandable ad");
            if (str3 == null || C4117a.m29671b().m29673a(str3) == null) {
                finish();
                C10831c.m10520b("TWMAdActivity", "invalid request");
                C10831c.m10518c("TWMAdActivity", "interstitial is null");
                bVar = null;
            } else {
                C4117a.AbstractC4119b bVar2 = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(str3);
                if (MraidProcessor.isMraidAd(str3)) {
                    this.f9628i = (MraidProcessor) bVar2.m29659a("kmp");
                }
                if (bVar2.m29659a("kjsw") != null) {
                    this.f9630k = (JSWebView) bVar2.m29659a("kjsw");
                    this.f9630k.setActivity(this);
                    this.f9630k.setIRBehavior(new C4065b());
                    this.f9630k.setWebViewClient(new C4064a(str3, this.f9628i));
                    C10831c.m10518c("TWMAdActivity", "jsWebView is visibile ? " + String.valueOf(this.f9630k.getVisibility()));
                    this.f9630k.setVisibility(0);
                    if (this.f9630k.getParent() == null) {
                        this.f9631l.addView(this.f9630k);
                    }
                    if (bVar2 == null || !((Boolean) bVar2.m29659a("isOmProviderExisted")).booleanValue()) {
                        C10831c.m10518c("TWMAdActivity", "Measurement Provider is Empty.");
                        bVar = bVar2;
                    } else {
                        WeakReference<Context> weakReference = this.f9627h;
                        bVar = bVar2;
                        if (weakReference != null) {
                            bVar = bVar2;
                            if (weakReference.get() != null) {
                                this.f9629j = new C4124a();
                                C4127a.m29645a(this.f9629j, this.f9627h.get().getApplicationContext(), str3, this.f9630k, new View[]{this.f9633n});
                                bVar = bVar2;
                                if (!((Boolean) bVar2.m29659a("isVideoAd")).booleanValue()) {
                                    C4127a.m29646a(this.f9629j);
                                    bVar = bVar2;
                                }
                            }
                        }
                    }
                } else {
                    finish();
                    C10831c.m10520b("TWMAdActivity", "invalid request");
                    C10831c.m10518c("TWMAdActivity", "jswebview is null");
                    bVar = bVar2;
                }
            }
        }
        this.f9631l.addView(this.f9633n);
        if (z) {
            this.f9631l.addView(this.f9632m);
            this.f9630k.setVisibility(4);
        }
        if (bVar == null) {
            return;
        }
        if (bVar.m29659a("kcce") == null) {
            this.f9633n.setVisibility(0);
        } else if (((Boolean) bVar.m29659a("kcce")).booleanValue()) {
            this.f9633n.setVisibility(8);
            this.f9631l.removeView(this.f9633n);
        } else {
            this.f9633n.setVisibility(0);
        }
    }

    @SuppressLint({"InlinedApi"})
    /* renamed from: b */
    private int m29855b() {
        int i;
        int rotation = getWindowManager().getDefaultDisplay().getRotation();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        if (((rotation == 0 || rotation == 2) && i3 > i2) || ((rotation == 1 || rotation == 3) && i2 > i3)) {
            if (rotation != 0) {
                i = 0;
                if (rotation != 1) {
                    if (rotation != 2) {
                        if (rotation != 3) {
                            C10831c.m10520b("TWMAdActivity", "Unknown screen orientation. Defaulting to portrait.");
                        }
                        i = 8;
                    }
                    i = 9;
                }
            }
            i = 1;
        } else {
            i = 0;
            if (rotation != 0) {
                if (rotation != 1) {
                    if (rotation != 2) {
                        if (rotation != 3) {
                            C10831c.m10520b("TWMAdActivity", "Unknown screen orientation. Defaulting to landscape.");
                            i = 0;
                        }
                        i = 9;
                    }
                    i = 8;
                }
                i = 1;
            }
        }
        return i;
    }

    /* renamed from: c */
    private void m29853c() {
        this.f9633n = new ImageButton(this);
        this.f9633n.setVisibility(4);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f9633n.getLayoutParams();
        RelativeLayout.LayoutParams layoutParams2 = layoutParams;
        if (layoutParams == null) {
            layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
        }
        layoutParams2.addRule(11);
        layoutParams2.addRule(10);
        this.f9633n.setImageBitmap(C10832d.m10498b("iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeCAYAAAA7MK6iAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyJpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoV2luZG93cykiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MjA3RkM0NUY0NEE3MTFFNThBOUNDQkI4MjFBQzQ2NzEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MjA3RkM0NjA0NEE3MTFFNThBOUNDQkI4MjFBQzQ2NzEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoyMDdGQzQ1RDQ0QTcxMUU1OEE5Q0NCQjgyMUFDNDY3MSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoyMDdGQzQ1RTQ0QTcxMUU1OEE5Q0NCQjgyMUFDNDY3MSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PmbWFa8AAAZbSURBVHjarFcJTFRX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"));
        if (Build.VERSION.SDK_INT < 16) {
            this.f9633n.setBackgroundDrawable(null);
        } else {
            this.f9633n.setBackground(null);
        }
        this.f9633n.setLayoutParams(layoutParams2);
        this.f9633n.setOnClickListener(new View.OnClickListener() { // from class: com.taiwanmobile.pt.adp.view.TWMAdActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TWMAdActivity tWMAdActivity = TWMAdActivity.this;
                tWMAdActivity.m29858a(tWMAdActivity.f9625f);
            }
        });
    }

    /* renamed from: d */
    private void m29851d() {
        this.f9632m = new ProgressBar(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(13);
        this.f9632m.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m29849e() {
        JSWebView jSWebView = this.f9630k;
        if (jSWebView != null) {
            jSWebView.clearWebView();
            this.f9630k = null;
        }
    }

    public static boolean isShowing() {
        return f9621c.isShowing();
    }

    public static void launchAdActivity(String str) {
        f9621c.launchAdActivity(str);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (i == 17301559 && i2 == -1) {
            Bitmap bitmap = (Bitmap) intent.getExtras().get("data");
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            String encodeToString = Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2);
            C10831c.m10518c("TWMAdActivity", "imgString : " + encodeToString);
            JSWebView jSWebView = this.f9630k;
            jSWebView.loadUrl("javascript:try{showImage('capturePhoto','" + encodeToString + "');}catch(e){}");
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        C10831c.m10518c("TWMAdActivity", "onConfigurationChanged invoked!!");
        super.onConfigurationChanged(configuration);
        C10831c.m10518c("TWMAdActivity", "newConfig.orientation : " + configuration.orientation);
        C10831c.m10518c("TWMAdActivity", "getScreenOrientation : " + m29855b());
        this.f9631l.setBackgroundColor(0);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        C10831c.m10518c("TWMAdActivity", ">>>>> onCreate invoked!!");
        super.onCreate(bundle);
        this.f9625f = getIntent().getStringExtra("txId");
        String str = this.f9625f;
        if (str == null || "".equals(str)) {
            C10831c.m10520b("TWMAdActivity", "invalid request !!!");
            finish();
        }
        C10831c.m10518c("TWMAdActivity", "txId : " + this.f9625f);
        this.f9627h = new WeakReference<>(getBaseContext());
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f9625f);
        if (bVar == null) {
            C10831c.m10520b("TWMAdActivity", "invalid status, adunit is null, force activity finish.");
            finish();
            return;
        }
        ((TWMAd) bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY)).stopLoading();
        this.f9624e = ((Integer) bVar.m29659a(AdFetch.AD_ADTYPE_KEY)).intValue();
        C10831c.m10518c("TWMAdActivity", "adType : " + this.f9624e);
        try {
            if (bVar instanceof C4117a.C4118a) {
                m29857a((String) bVar.m29659a("subMediaUrl"), (String) bVar.m29659a("targetUrl"), this.f9625f, true);
            } else if (bVar instanceof C4117a.C4122e) {
                m29857a((String) bVar.m29659a("mediaUrl"), (String) bVar.m29659a("targetUrl"), this.f9625f, false);
            } else {
                finish();
            }
        } catch (Exception e) {
            C10831c.m10520b("TWMAdActivity", "Build webview failed. " + e.getMessage());
            finish();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        TWMAd tWMAd;
        MraidProcessor mraidProcessor;
        C10831c.m10518c("TWMAdActivity", "onDestroy invoked!!");
        String stringExtra = getIntent().getStringExtra("txId");
        if (stringExtra != null) {
            C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(stringExtra);
            TWMAdViewListener tWMAdViewListener = null;
            if (bVar != null) {
                tWMAd = (TWMAd) bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY);
                tWMAdViewListener = (TWMAdViewListener) bVar.m29659a("adListener");
                if (bVar instanceof C4117a.C4118a) {
                    C4117a.C4118a aVar = (C4117a.C4118a) bVar;
                    aVar.m29658a("kie", null);
                    C4117a.m29671b().m29672a(stringExtra, aVar);
                    if (aVar.m29659a("kmp") != null) {
                        ((MraidProcessor) aVar.m29659a("kmp")).fireStateChangeEvent(MraidProcessor.MraidStates.DEFAULT);
                    }
                } else {
                    if ((bVar instanceof C4117a.C4122e) && (mraidProcessor = this.f9628i) != null) {
                        mraidProcessor.fireStateChangeEvent(MraidProcessor.MraidStates.HIDEEEN);
                    }
                    if (C4117a.m29671b().m29673a(stringExtra) != null) {
                        C10831c.m10518c("TWMAdActivity", "Remove ad info in hashmap, key = " + stringExtra);
                        C4117a.m29671b().m29669c(stringExtra);
                    }
                }
            } else {
                tWMAd = null;
            }
            if (!(tWMAdViewListener == null || tWMAd == null)) {
                tWMAdViewListener.onDismissScreen(tWMAd);
            }
        }
        C4124a aVar2 = this.f9629j;
        if (aVar2 != null) {
            C4127a.m29644a(aVar2, new C4124a.AbstractC4125a() { // from class: com.taiwanmobile.pt.adp.view.TWMAdActivity.3
                @Override // com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a.AbstractC4125a
                /* renamed from: a */
                public void mo29430a() {
                    TWMAdActivity.this.m29849e();
                    TWMAdActivity.this.f9629j = null;
                }
            });
        } else {
            m29849e();
        }
        f9620b = false;
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        C4117a.AbstractC4119b bVar;
        C10831c.m10518c("TWMAdActivity", "onPause invoked!!");
        super.onPause();
        Timer timer = this.f9626g;
        if (timer != null) {
            timer.cancel();
            this.f9626g.purge();
        }
        JSWebView jSWebView = this.f9630k;
        if (jSWebView != null) {
            jSWebView.releaseResource();
        }
        f9620b = false;
        String stringExtra = getIntent().getStringExtra("txId");
        C10831c.m10517d("TWMAdActivity", "txId : " + stringExtra);
        C4117a.m29671b().m29672a("adsing", Boolean.FALSE);
        if (!(stringExtra == null || (bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(stringExtra)) == null || !(bVar instanceof C4117a.C4122e))) {
            C4117a.C4122e eVar = (C4117a.C4122e) bVar;
            eVar.m29658a("kil", Boolean.FALSE);
            C4117a.m29671b().m29672a(stringExtra, eVar);
        }
        MraidProcessor mraidProcessor = this.f9628i;
        if (mraidProcessor != null) {
            mraidProcessor.fireViewableChangeEvent(false);
        }
        if (this.f9630k != null) {
            C10831c.m10518c("TWMAdActivity", "load sdkDestory!!");
            this.f9630k.loadUrl("javascript:try{sdkDestroy();}catch(e){}");
        }
    }

    @Override // android.app.Activity
    public void onRestart() {
        C10831c.m10518c("TWMAdActivity", "onRestart invoked!!");
        super.onRestart();
        JSWebView jSWebView = this.f9630k;
        if (jSWebView != null) {
            jSWebView.loadUrl("javascript:try{sdkRestart();}catch(e){}");
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        C10831c.m10518c("TWMAdActivity", "onResume invoked!!");
        super.onResume();
        String stringExtra = getIntent().getStringExtra("txId");
        C10831c.m10517d("TWMAdActivity", "txId : " + stringExtra);
        if (stringExtra != null) {
            C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(stringExtra);
            if (bVar != null && (bVar instanceof C4117a.C4122e)) {
                C4117a.C4122e eVar = (C4117a.C4122e) bVar;
                eVar.m29658a("kil", Boolean.TRUE);
                MraidProcessor mraidProcessor = this.f9628i;
                if (mraidProcessor != null) {
                    mraidProcessor.fireViewableChangeEvent(true);
                }
                if (eVar.m29659a("kis") == null) {
                    m29859a(this.f9630k);
                    TWMAdViewListener tWMAdViewListener = (TWMAdViewListener) bVar.m29659a("adListener");
                    TWMAd tWMAd = (TWMAd) bVar.m29659a(CatWalkWebPayload.CATWALK_AD_KEY);
                    if (!(tWMAdViewListener == null || tWMAd == null)) {
                        tWMAdViewListener.onPresentScreen(tWMAd);
                    }
                    eVar.m29658a("kis", Boolean.TRUE);
                }
            } else if (bVar != null && (bVar instanceof C4117a.C4118a)) {
                C4117a.C4118a aVar = (C4117a.C4118a) bVar;
                if (!(this.f9628i == null || aVar.m29659a("kie") == null)) {
                    this.f9628i.fireViewableChangeEvent(true);
                }
            }
        }
        JSWebView jSWebView = this.f9630k;
        if (jSWebView != null) {
            jSWebView.loadUrl("javascript:try{sdkResume();}catch(e){}");
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        C10831c.m10518c("TWMAdActivity", "onStart invoked!!");
        super.onStart();
    }
}
