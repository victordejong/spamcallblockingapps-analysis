package com.taiwanmobile.p055pt.adp.view;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.graphics.Bitmap;
import android.os.Looper;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.C4142e;
import com.taiwanmobile.p055pt.adp.view.p056a.C4147h;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b;
import com.taiwanmobile.p055pt.adp.view.webview.IRBehavior;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientMraid;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidProcessor;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.lang.ref.WeakReference;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.Callable;
import okhttp3.ResponseBody;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.TWMInterstitialAd */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMInterstitialAd.class */
public class TWMInterstitialAd implements TWMAd {

    /* renamed from: a */
    public WeakReference<Activity> f9761a;

    /* renamed from: b */
    public JSWebView f9762b;

    /* renamed from: c */
    public String f9763c;

    /* renamed from: d */
    public String f9764d;

    /* renamed from: j */
    public C4113a f9770j;

    /* renamed from: e */
    public String f9765e = null;

    /* renamed from: f */
    public String f9766f = null;

    /* renamed from: g */
    public boolean f9767g = false;

    /* renamed from: h */
    public TWMAdRequest f9768h = null;

    /* renamed from: i */
    public TWMAdViewListener f9769i = null;

    /* renamed from: k */
    public C4147h f9771k = null;

    /* renamed from: l */
    public C4147h.C4150b f9772l = null;

    /* renamed from: m */
    public final AbstractC4126b f9773m = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.1
        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
        /* renamed from: a */
        public void mo29382a(String str, TWMAdRequest.ErrorCode errorCode) {
            C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
            if (TWMInterstitialAd.this.f9772l == null) {
                TWMInterstitialAd.this.m29723a(errorCode);
            } else if (!C4147h.EnumC4149a.TAMEDIA.m29519a().equals(TWMInterstitialAd.this.f9772l.m29515b())) {
                TWMInterstitialAd.this.m29709a("12", false);
            } else if ("21".equals(str)) {
                TWMInterstitialAd.this.m29723a(errorCode);
            } else {
                TWMInterstitialAd.this.m29697e();
            }
        }
    };

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMInterstitialAd$3 */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMInterstitialAd$3.class */
    public class C41043 extends WebViewClientMraid {

        /* renamed from: a */
        public final /* synthetic */ String f9778a;

        /* renamed from: b */
        public final /* synthetic */ MraidProcessor f9779b;

        /* renamed from: c */
        public final /* synthetic */ Callable f9780c;

        /* renamed from: e */
        public boolean f9782e = false;

        /* renamed from: f */
        public final Timer f9783f = new Timer();

        /* renamed from: com.taiwanmobile.pt.adp.view.TWMInterstitialAd$3$a */
        /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMInterstitialAd$3$a.class */
        public final class C4105a extends TimerTask {

            /* renamed from: b */
            public WebView f9785b;

            public C4105a(WebView webView) {
                this.f9785b = webView;
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                C10831c.m10518c("TWMInterstitialAd", "timer runed!!!!");
                ((Activity) TWMInterstitialAd.this.f9761a.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.3.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C4105a.this.f9785b.stopLoading();
                        C41043.this.f9782e = true;
                        TWMInterstitialAd.this.f9767g = false;
                        C4127a.m29640a(C41043.this.f9778a, TWMAdRequest.ErrorCode.NETWORK_ERROR);
                    }
                });
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C41043(String str, MraidProcessor mraidProcessor, String str2, MraidProcessor mraidProcessor2, Callable callable) {
            super(str, mraidProcessor);
            this.f9778a = str2;
            this.f9779b = mraidProcessor2;
            this.f9780c = callable;
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            MraidProcessor mraidProcessor;
            C10831c.m10518c("TWMInterstitialAd", "onPageFinished(" + str + ") invoked!!");
            super.onPageFinished(webView, str);
            C10831c.m10518c("TWMInterstitialAd", "hasBeenReported ? " + this.f9782e);
            if (!this.f9782e) {
                this.f9783f.cancel();
                String str2 = this.f9778a;
                if (!(str2 == null || !MraidProcessor.isMraidAd(str2) || (mraidProcessor = this.f9779b) == null)) {
                    mraidProcessor.initMRAID(MraidProcessor.MraidPlacementType.INTERSTITIAL);
                }
                try {
                    this.f9780c.call();
                } catch (Exception e) {
                }
                this.f9782e = true;
            }
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            try {
                this.f9783f.schedule(new C4105a(webView), 4000L);
            } catch (Exception e) {
                C10831c.m10520b("TWMInterstitialAd", "onPageStarted Exception:" + e.getMessage());
            }
            C10831c.m10518c("TWMInterstitialAd", "timer started!!!!");
        }

        @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            C10831c.m10520b("TWMInterstitialAd", "onReceivedError(" + i + "/" + str + ")");
            super.onReceivedError(webView, i, str, str2);
            C4127a.m29640a(this.f9778a, TWMAdRequest.ErrorCode.NETWORK_ERROR);
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMInterstitialAd$9 */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMInterstitialAd$9.class */
    public static /* synthetic */ class C41129 {

        /* renamed from: a */
        public static final /* synthetic */ int[] f9793a = new int[C4147h.AbstractC4151c.EnumC4152a.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            try {
                f9793a[C4147h.AbstractC4151c.EnumC4152a.STATE_TP_READY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9793a[C4147h.AbstractC4151c.EnumC4152a.STATE_NO_TP_EXSITED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9793a[C4147h.AbstractC4151c.EnumC4152a.STATE_BLACK_LIST.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMInterstitialAd$UCFunnelInterstitialRetrofitListener */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMInterstitialAd$UCFunnelInterstitialRetrofitListener.class */
    public class UCFunnelInterstitialRetrofitListener extends C4142e {
        public UCFunnelInterstitialRetrofitListener(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.C4142e, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            C4117a.C4122e eVar;
            super.onResponse(bVar, rVar);
            if (isReady() && TWMInterstitialAd.this.f9763c != null) {
                if (C4117a.m29671b().m29670b(TWMInterstitialAd.this.f9763c)) {
                    eVar = (C4117a.C4122e) C4117a.m29671b().m29673a(TWMInterstitialAd.this.f9763c);
                } else {
                    C4117a b = C4117a.m29671b();
                    b.getClass();
                    eVar = new C4117a.C4122e(TWMInterstitialAd.this.f9764d);
                }
                eVar.m29658a("_context", this.contextRef.get());
                eVar.m29658a("userAgent", C10832d.m10513a(this.contextRef.get()));
                eVar.m29658a("adListener", TWMInterstitialAd.this.f9769i);
                eVar.m29658a("adRequest", TWMInterstitialAd.this.f9768h);
                eVar.m29658a(AdFetch.AD_ADTYPE_KEY, 16);
                eVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMInterstitialAd.this);
                TWMInterstitialAd.this.f9766f = getHtmlContent();
                C4117a.AbstractC4119b bVar2 = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(TWMInterstitialAd.this.f9763c);
                if (bVar2 != null) {
                    eVar.m29658a("_deviceId", bVar2.m29659a("_deviceId"));
                    eVar.m29658a("kil", Boolean.TRUE);
                    C4117a.m29671b().m29672a(TWMInterstitialAd.this.f9763c, eVar);
                }
                TWMInterstitialAd.this.m29709a("12", true);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.TWMInterstitialAd$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/TWMInterstitialAd$a.class */
    public class C4113a extends AbstractC4140c {
        public C4113a(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            super.onResponse(bVar, rVar);
            if (m29565n()) {
                TWMInterstitialAd.this.f9767g = true;
                TWMInterstitialAd.this.f9763c = m29566m();
                if (TWMInterstitialAd.this.f9763c != null) {
                    C4117a b = C4117a.m29671b();
                    b.getClass();
                    final C4117a.C4122e eVar = new C4117a.C4122e(TWMInterstitialAd.this.f9764d);
                    eVar.m29658a("_context", this.f9873b.get());
                    eVar.m29658a("userAgent", C10832d.m10513a(this.f9873b.get()));
                    eVar.m29658a("adListener", TWMInterstitialAd.this.f9769i);
                    eVar.m29658a("adRequest", TWMInterstitialAd.this.f9768h);
                    eVar.m29658a("mediaUrl", m29573f());
                    eVar.m29658a(IapPlanRealmObject.PLAN_ID, m29567l());
                    eVar.m29658a("cvt", m29570i());
                    eVar.m29658a(AdFetch.AD_ADTYPE_KEY, Integer.valueOf(m29569j()));
                    TWMInterstitialAd.this.f9765e = m29574e();
                    eVar.m29658a("targetUrl", m29568k());
                    eVar.m29658a("clickUrl", TWMInterstitialAd.this.f9765e);
                    eVar.m29658a("videoReportUrl", m29554y());
                    eVar.m29658a("isVideoAd", Boolean.valueOf(m29587A()));
                    eVar.m29658a("isDcmAdServing", Boolean.valueOf(m29585C()));
                    eVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMInterstitialAd.this);
                    eVar.m29658a("isOpenChrome", Boolean.valueOf(m29563p()));
                    eVar.m29658a("mraidUrl", m29555x());
                    boolean B = m29586B();
                    eVar.m29658a("isOmProviderExisted", Boolean.valueOf(B));
                    if (B) {
                        eVar.m29658a("OMSDK", m29584D());
                        eVar.m29658a("PartnerName", m29583E());
                        eVar.m29658a("PartnerVersion", m29582F());
                        eVar.m29658a("PartnerCustomData", m29581G());
                    }
                    C4117a.AbstractC4119b bVar2 = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(TWMInterstitialAd.this.f9763c);
                    if (bVar2 != null) {
                        eVar.m29658a("_deviceId", bVar2.m29659a("_deviceId"));
                        C4117a.m29671b().m29672a(TWMInterstitialAd.this.f9763c, eVar);
                    }
                    TWMInterstitialAd.this.m29711a(m29573f(), m29568k(), TWMInterstitialAd.this.f9763c, m29577b(), new Callable<Void>() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.a.1
                        /* renamed from: a */
                        public Void call() {
                            eVar.m29658a("kil", Boolean.TRUE);
                            C4117a.m29671b().m29672a(TWMInterstitialAd.this.f9763c, eVar);
                            TWMInterstitialAd.this.m29724a();
                            return null;
                        }
                    });
                }
            }
        }
    }

    public TWMInterstitialAd(Activity activity, String str) {
        this.f9761a = null;
        this.f9762b = null;
        this.f9770j = null;
        this.f9761a = new WeakReference<>(activity);
        this.f9764d = str;
        this.f9770j = new C4113a(this.f9761a.get(), this.f9773m);
        try {
            this.f9762b = new JSWebView(new MutableContextWrapper(this.f9761a.get()));
        } catch (Exception e) {
            C10831c.m10520b("TWMInterstitialAd", "Build webview failed. " + e.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29724a() {
        TWMAdViewListener tWMAdViewListener = this.f9769i;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onReceiveAd(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29723a(TWMAdRequest.ErrorCode errorCode) {
        TWMAdViewListener tWMAdViewListener = this.f9769i;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onFailedToReceiveAd(this, errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29715a(C4147h.AbstractC4151c.EnumC4152a aVar) {
        int i = C41129.f9793a[aVar.ordinal()];
        if (i == 1) {
            this.f9763c = this.f9771k.m29529c();
            m29713a(this.f9764d, this.f9763c);
            m29697e();
        } else if (i == 2 || i == 3) {
            this.f9763c = null;
            m29695f();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29714a(String str) {
        C4147h.C4150b bVar;
        C4147h hVar = this.f9771k;
        if (hVar != null && (bVar = this.f9772l) != null) {
            hVar.m29531b(bVar, str);
        }
    }

    /* renamed from: a */
    private void m29713a(String str, String str2) {
        C4117a b = C4117a.m29671b();
        b.getClass();
        C4117a.C4122e eVar = new C4117a.C4122e(str);
        eVar.m29658a("adRequest", this.f9768h);
        eVar.m29658a("adunitId", str);
        eVar.m29658a(AdFetch.AD_ADTYPE_KEY, 16);
        C4117a.m29671b().m29672a(str2, eVar);
    }

    /* renamed from: a */
    private void m29712a(String str, String str2, String str3, String str4, boolean z, Callable<Void> callable) {
        if (this.f9762b != null) {
            m29710a(str4, callable);
            if (z) {
                this.f9762b.getSettings().setUseWideViewPort(true);
                this.f9762b.getSettings().setLoadWithOverviewMode(true);
            }
            this.f9762b.loadHTMLWithBaseUrl(str, str2, str3, str4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29711a(String str, String str2, String str3, boolean z, Callable<Void> callable) {
        if (this.f9762b != null) {
            m29710a(str3, callable);
            if (z) {
                this.f9762b.getSettings().setUseWideViewPort(true);
                this.f9762b.getSettings().setLoadWithOverviewMode(true);
            }
            this.f9762b.loadContent(str, str2, str3);
        }
    }

    /* renamed from: a */
    private void m29710a(final String str, Callable<Void> callable) {
        final C4117a.C4122e eVar;
        if (str != null && this.f9762b != null && (eVar = (C4117a.C4122e) C4117a.m29671b().m29673a(str)) != null) {
            MraidProcessor mraidProcessor = new MraidProcessor(this.f9762b, str);
            eVar.m29658a("kmp", mraidProcessor);
            this.f9762b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.f9762b.setIRBehavior(new IRBehavior() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.2
                @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                public int checkFloatAdPosition() {
                    return 0;
                }

                @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                public void closeWebView(String str2) {
                }

                @Override // com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                public void disableCloseButton() {
                    C10831c.m10518c("TWMInterstitialAd", "disableCloseButton request!!");
                    eVar.m29658a("kcce", Boolean.TRUE);
                    C4117a.m29671b().m29672a(str, eVar);
                }
            });
            this.f9762b.setWebViewClient(new C41043(str, mraidProcessor, str, mraidProcessor, callable));
            eVar.m29658a("kjsw", this.f9762b);
            C4117a.m29671b().m29672a(str, eVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29709a(String str, final boolean z) {
        C4147h.C4150b bVar;
        C4147h hVar = this.f9771k;
        if (hVar == null || (bVar = this.f9772l) == null) {
            m29708a(z);
        } else {
            hVar.m29536a(bVar, str, z, new C4133b.AbstractC4138c() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.8
                @Override // com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4133b.AbstractC4138c
                /* renamed from: a */
                public void mo29589a() {
                    TWMInterstitialAd.this.m29708a(z);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29708a(boolean z) {
        if (z) {
            this.f9767g = true;
            m29724a();
            return;
        }
        m29697e();
    }

    /* renamed from: b */
    private void m29707b() {
        StringBuilder sb = new StringBuilder();
        sb.append("txId != null ? ");
        sb.append(this.f9763c != null);
        C10831c.m10518c("TWMInterstitialAd", sb.toString());
        if (this.f9763c != null && isLoaded()) {
            WeakReference<Activity> weakReference = this.f9761a;
            if (weakReference == null || weakReference.get() == null) {
                new Thread() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.5
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        if (TWMInterstitialAd.this.f9761a != null && TWMInterstitialAd.this.f9761a.get() != null && TWMInterstitialAd.this.f9765e != null) {
                            Looper.prepare();
                            C10831c.m10518c("TWMInterstitialAd", "reportApi : " + TWMInterstitialAd.this.f9765e);
                            C10831c.m10518c("TWMInterstitialAd", "txId : " + TWMInterstitialAd.this.f9763c);
                            C4127a.m29653a((Context) TWMInterstitialAd.this.f9761a.get(), TWMInterstitialAd.this.f9763c);
                            Looper.loop();
                        }
                    }
                }.start();
            } else {
                this.f9761a.get().runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.4
                    @Override // java.lang.Runnable
                    public void run() {
                        C10831c.m10518c("TWMInterstitialAd", "reportClickApi : " + TWMInterstitialAd.this.f9765e);
                        C10831c.m10518c("TWMInterstitialAd", "txId : " + TWMInterstitialAd.this.f9763c);
                        C4127a.m29653a((Context) TWMInterstitialAd.this.f9761a.get(), TWMInterstitialAd.this.f9763c);
                    }
                });
            }
            TWMAdActivity.launchAdActivity(this.f9763c);
        }
    }

    /* renamed from: c */
    private void m29703c() {
        StringBuilder sb = new StringBuilder();
        sb.append("txId != null ? ");
        sb.append(this.f9763c != null);
        C10831c.m10518c("TWMInterstitialAd", sb.toString());
        if (this.f9763c != null && this.f9766f != null && m29700d()) {
            m29712a((String) null, this.f9766f, (String) null, this.f9763c, false, new Callable<Void>() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.6
                /* renamed from: a */
                public Void call() {
                    TWMInterstitialAd.this.m29714a("12");
                    TWMAdActivity.launchAdActivity(TWMInterstitialAd.this.f9763c);
                    return null;
                }
            });
        }
    }

    /* renamed from: d */
    private boolean m29700d() {
        Boolean bool = (Boolean) C4117a.m29671b().m29673a("adsing");
        if (bool == null) {
            return this.f9767g;
        }
        return this.f9767g || bool.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m29697e() {
        this.f9772l = this.f9771k.m29539a();
        if (this.f9772l != null) {
            if (this.f9763c != null) {
                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.f9763c);
                bVar.m29658a("tpInfo", this.f9772l);
                bVar.m29658a("isOpenChrome", Boolean.valueOf(this.f9772l.m29506h()));
                C4117a.m29671b().m29672a(this.f9763c, bVar);
            }
            if (C4147h.EnumC4149a.TAMEDIA.m29519a().equals(this.f9772l.m29515b())) {
                m29695f();
            } else if (C4147h.EnumC4149a.UCFUNNEL.m29519a().equals(this.f9772l.m29515b())) {
                m29693g();
            } else {
                m29697e();
            }
        } else {
            m29723a(TWMAdRequest.ErrorCode.NO_FILL);
        }
    }

    /* renamed from: f */
    private void m29695f() {
        C4147h hVar = this.f9771k;
        boolean z = hVar == null || hVar.m29532b() == null;
        WeakReference<Activity> weakReference = this.f9761a;
        if (weakReference != null && weakReference.get() != null) {
            C4127a.C4131c cVar = new C4127a.C4131c(this.f9761a.get(), this.f9764d, this.f9768h, "I");
            cVar.m29625a(this.f9770j);
            cVar.m29621b(z);
            String str = this.f9763c;
            if (str != null && !"".equals(str)) {
                cVar.m29624a(this.f9763c);
            }
            C4127a.m29643a(cVar);
        }
    }

    /* renamed from: g */
    private void m29693g() {
        WeakReference<Activity> weakReference;
        String d;
        if (this.f9772l != null && (weakReference = this.f9761a) != null && weakReference.get() != null && (d = this.f9772l.m29511d()) != null && !"".equals(d)) {
            C4133b.m29608a(this.f9761a.get(), d, this.f9763c, new UCFunnelInterstitialRetrofitListener(this.f9761a.get(), this.f9773m));
        }
    }

    public TWMAdViewListener getAdListener() {
        return this.f9769i;
    }

    public String getAdUnitId() {
        return this.f9764d;
    }

    public boolean isLoaded() {
        if (this.f9763c == null) {
            return false;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("AdManager.getInstance().get(");
        sb.append(this.f9763c);
        sb.append(") is not null ? ");
        sb.append(C4117a.m29671b().m29673a(this.f9763c) != null);
        C10831c.m10518c("TWMInterstitialAd", sb.toString());
        if (C4117a.m29671b().m29673a(this.f9763c) == null) {
            return false;
        }
        C4117a.C4122e eVar = (C4117a.C4122e) C4117a.m29671b().m29673a(this.f9763c);
        if (eVar.m29659a("kil") == null) {
            return false;
        }
        Boolean bool = (Boolean) eVar.m29659a("kil");
        C10831c.m10518c("TWMInterstitialAd", "isLoaded ? " + bool.booleanValue());
        return bool.booleanValue();
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    @Deprecated
    public boolean isReady() {
        WeakReference<Activity> weakReference = this.f9761a;
        return (weakReference == null || weakReference.get() == null || this.f9764d == null) ? false : true;
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void loadAd(TWMAdRequest tWMAdRequest) {
        C10831c.m10518c("TWMInterstitialAd", "loadAd invoked!!");
        WeakReference<Activity> weakReference = this.f9761a;
        if (weakReference == null || weakReference.get() == null || this.f9762b == null || !C10832d.m10483f((Context) this.f9761a.get())) {
            TWMAdViewListener tWMAdViewListener = this.f9769i;
            if (tWMAdViewListener != null) {
                tWMAdViewListener.onFailedToReceiveAd(this, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            }
        } else if (C4127a.m29638b(this.f9761a.get())) {
            C4117a.m29671b().m29672a("TWMAd", this);
            C10831c.m10518c("TWMInterstitialAd", "isAdLoading ? " + m29700d());
            this.f9768h = tWMAdRequest;
            if (!m29700d()) {
                this.f9771k = new C4147h(this.f9761a.get(), this.f9764d, tWMAdRequest);
                this.f9771k.m29535a(new C4147h.AbstractC4151c() { // from class: com.taiwanmobile.pt.adp.view.TWMInterstitialAd.7
                    @Override // com.taiwanmobile.p055pt.adp.view.p056a.C4147h.AbstractC4151c
                    /* renamed from: a */
                    public void mo29505a(C4147h.AbstractC4151c.EnumC4152a aVar) {
                        C10831c.m10520b("TWMInterstitialAd", aVar.name());
                        TWMInterstitialAd.this.m29715a(aVar);
                    }
                });
            }
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void setAdListener(TWMAdViewListener tWMAdViewListener) {
        this.f9769i = tWMAdViewListener;
    }

    public void show() {
        C10831c.m10518c("TWMInterstitialAd", "show invoked!!");
        if (this.f9772l == null) {
            m29707b();
        } else if (C4147h.EnumC4149a.TAMEDIA.m29519a().equals(this.f9772l.m29515b())) {
            m29707b();
        } else if (C4147h.EnumC4149a.UCFUNNEL.m29519a().equals(this.f9772l.m29515b())) {
            m29703c();
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAd
    public void stopLoading() {
        this.f9767g = false;
    }
}
