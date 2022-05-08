package com.taiwanmobile.p055pt.adp.view.inread;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.mopub.common.FullAdType;
import com.taiwanmobile.p055pt.adp.view.TWMAdRequest;
import com.taiwanmobile.p055pt.adp.view.TWMAdSize;
import com.taiwanmobile.p055pt.adp.view.TWMAdView;
import com.taiwanmobile.p055pt.adp.view.TWMAdViewListener;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b;
import com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c;
import com.taiwanmobile.p055pt.adp.view.p056a.C4117a;
import com.taiwanmobile.p055pt.adp.view.p056a.p057a.C4124a;
import com.taiwanmobile.p055pt.adp.view.p056a.p058b.C4127a;
import com.taiwanmobile.p055pt.adp.view.webview.InReadIRBehavior;
import com.taiwanmobile.p055pt.adp.view.webview.JSWebView;
import com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientMraid;
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidProcessor;
import gogolook.callgogolook2.gson.UserProfile;
import gogolook.callgogolook2.realm.obj.iap.IapPlanRealmObject;
import java.lang.ref.WeakReference;
import okhttp3.ResponseBody;
import p081h.p447o.p448a.p449a.C10831c;
import p081h.p447o.p448a.p449a.C10832d;
import p655o.AbstractC15235b;
import p655o.C15299r;
/* renamed from: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect */
/* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/inread/TWMInReadAdRect.class */
public class TWMInReadAdRect extends TWMAdView {
    public static final String TAG = TWMInReadAdRect.class.getSimpleName();

    /* renamed from: a */
    public float f10039a = 0.0f;

    /* renamed from: b */
    public float f10040b = 0.0f;

    /* renamed from: c */
    public double f10041c = 0.0d;

    /* renamed from: d */
    public int[] f10042d = new int[4];

    /* renamed from: e */
    public RunnableC4189a f10043e = null;

    /* renamed from: f */
    public boolean f10044f = false;

    /* renamed from: g */
    public final AbstractC4126b f10045g = new AbstractC4126b() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.1
        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4126b
        /* renamed from: a */
        public void mo29382a(String str, TWMAdRequest.ErrorCode errorCode) {
            C10831c.m10518c("TWMAdServiceCallback", "noticeError(" + errorCode + ") invoked!! ");
            TWMInReadAdRect.this.m29418a(errorCode);
        }
    };

    /* renamed from: h */
    public C4193b f10046h;

    /* renamed from: i */
    public final ViewTreeObserver.OnScrollChangedListener f10047i;

    /* renamed from: j */
    public final ViewTreeObserver.OnGlobalLayoutListener f10048j;

    /* renamed from: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect$a */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/inread/TWMInReadAdRect$a.class */
    public final class RunnableC4189a implements Runnable {

        /* renamed from: b */
        public String f10054b;

        /* renamed from: c */
        public String f10055c;

        /* renamed from: d */
        public String f10056d;

        public RunnableC4189a(String str, String str2, String str3) {
            this.f10054b = str;
            this.f10055c = str2;
            this.f10056d = str3;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TWMInReadAdRect.this.jsWebView != null) {
                TWMInReadAdRect tWMInReadAdRect = TWMInReadAdRect.this;
                tWMInReadAdRect.mProcessor = new MraidProcessor(tWMInReadAdRect.jsWebView, this.f10056d);
                C4117a.C4121d dVar = (C4117a.C4121d) C4117a.m29671b().m29673a(this.f10056d);
                if (dVar != null) {
                    dVar.m29658a("kmp", TWMInReadAdRect.this.mProcessor);
                }
                TWMInReadAdRect.this.jsWebView.setIRBehavior(new InReadIRBehavior() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.a.1
                    @Override // com.taiwanmobile.p055pt.adp.view.webview.InReadIRBehavior, com.taiwanmobile.p055pt.adp.view.webview.IRBehavior
                    public void closeWebView(String str) {
                    }

                    @Override // com.taiwanmobile.p055pt.adp.view.webview.InReadIRBehavior
                    public void passElementOffset(double d, double d2, double d3, double d4) {
                        if (TWMInReadAdRect.this.activityRef != null && TWMInReadAdRect.this.activityRef.get() != null) {
                            DisplayMetrics displayMetrics = new DisplayMetrics();
                            ((WindowManager) ((Activity) TWMInReadAdRect.this.activityRef.get()).getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                            TWMInReadAdRect.this.f10042d[0] = (int) TypedValue.applyDimension(1, (float) d, displayMetrics);
                            TWMInReadAdRect.this.f10042d[1] = (int) TypedValue.applyDimension(1, (float) d2, displayMetrics);
                            TWMInReadAdRect.this.f10042d[2] = (int) TypedValue.applyDimension(1, (float) d3, displayMetrics);
                            TWMInReadAdRect.this.f10042d[3] = (int) TypedValue.applyDimension(1, (float) d4, displayMetrics);
                            String str = TWMInReadAdRect.TAG;
                            C10831c.m10518c(str, "[left, top, right, bottom] [" + TWMInReadAdRect.this.f10042d[0] + UserProfile.CARD_CATE_SEPARATOR + TWMInReadAdRect.this.f10042d[1] + UserProfile.CARD_CATE_SEPARATOR + TWMInReadAdRect.this.f10042d[2] + UserProfile.CARD_CATE_SEPARATOR + TWMInReadAdRect.this.f10042d[3] + "]");
                            ((Activity) TWMInReadAdRect.this.activityRef.get()).runOnUiThread(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.a.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    TWMInReadAdRect.this.m29409b();
                                    TWMInReadAdRect.this.getViewTreeObserver().addOnScrollChangedListener(TWMInReadAdRect.this.f10047i);
                                    TWMInReadAdRect.this.getViewTreeObserver().addOnGlobalLayoutListener(TWMInReadAdRect.this.f10048j);
                                }
                            });
                        }
                    }
                });
                TWMInReadAdRect.this.jsWebView.setWebViewClient(new WebViewClientMraid(this.f10056d, TWMInReadAdRect.this.mProcessor) { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.a.2
                    @Override // com.taiwanmobile.p055pt.adp.view.webview.client.WebViewClientBase, android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str) {
                        super.onPageFinished(webView, str);
                        if (TWMInReadAdRect.this.jsWebView != null) {
                            if (RunnableC4189a.this.f10056d != null) {
                                if (MraidProcessor.isMraidAd(RunnableC4189a.this.f10056d) && TWMInReadAdRect.this.mProcessor != null) {
                                    TWMInReadAdRect.this.mProcessor.initMRAID(MraidProcessor.MraidPlacementType.INREAD);
                                }
                                TWMInReadAdRect.this.jsWebView.passInReadInfo(RunnableC4189a.this.f10056d);
                                if (TWMInReadAdRect.this.jsWebView.getVisibility() != 0) {
                                    TWMInReadAdRect.this.jsWebView.setVisibility(0);
                                }
                                C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(RunnableC4189a.this.f10056d);
                                if (bVar == null || !((Boolean) bVar.m29659a("isOmProviderExisted")).booleanValue()) {
                                    C10831c.m10518c(TWMInReadAdRect.TAG, "Measurement Provider is Empty.");
                                } else if (!(TWMInReadAdRect.this.contextRef == null || TWMInReadAdRect.this.contextRef.get() == null)) {
                                    TWMInReadAdRect.this.omManager = new C4124a();
                                    C4127a.m29645a(TWMInReadAdRect.this.omManager, ((Context) TWMInReadAdRect.this.contextRef.get()).getApplicationContext(), RunnableC4189a.this.f10056d, TWMInReadAdRect.this.jsWebView, (View[]) null);
                                }
                            }
                            TWMInReadAdRect.this.popAdReceive("inread rect");
                        }
                    }
                });
                TWMInReadAdRect.this.jsWebView.loadContent(this.f10054b, this.f10055c, this.f10056d);
            }
        }
    }

    /* renamed from: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect$b */
    /* loaded from: classes2-dex2jar.jar:com/taiwanmobile/pt/adp/view/inread/TWMInReadAdRect$b.class */
    public class C4193b extends AbstractC4140c {
        public C4193b(Context context, AbstractC4126b bVar) {
            super(context, bVar);
        }

        @Override // com.taiwanmobile.p055pt.adp.view.p056a.AbstractC4140c, p655o.AbstractC15238d
        public void onResponse(AbstractC15235b<ResponseBody> bVar, C15299r<ResponseBody> rVar) {
            super.onResponse(bVar, rVar);
            if (m29565n()) {
                if (!(TWMInReadAdRect.this.txId == null || C4117a.m29671b().m29673a(TWMInReadAdRect.this.txId) == null)) {
                    String str = TWMInReadAdRect.TAG;
                    C10831c.m10518c(str, "Remove ad info in hashmap, key = " + TWMInReadAdRect.this.txId);
                    C4117a.m29671b().m29669c(TWMInReadAdRect.this.txId);
                }
                TWMInReadAdRect.this.isAdLoading = true;
                C4117a b = C4117a.m29671b();
                b.getClass();
                C4117a.C4121d dVar = new C4117a.C4121d(TWMInReadAdRect.this.getAdUnitId());
                dVar.m29658a("_context", this.f9873b.get());
                dVar.m29658a("adListener", TWMInReadAdRect.this.adListener);
                dVar.m29658a("adRequest", TWMInReadAdRect.this.adRequest);
                dVar.m29658a("targetUrl", m29568k());
                dVar.m29658a("mediaUrl", m29573f());
                dVar.m29658a(AdFetch.AD_ADTYPE_KEY, Integer.valueOf(m29569j()));
                dVar.m29658a("subType", Integer.valueOf(m29562q()));
                dVar.m29658a(IapPlanRealmObject.PLAN_ID, m29567l());
                dVar.m29658a("cvt", m29570i());
                dVar.m29658a(CatWalkWebPayload.CATWALK_AD_KEY, TWMInReadAdRect.this);
                dVar.m29658a("clickUrl", m29574e());
                dVar.m29658a("isVideoAd", Boolean.valueOf(m29587A()));
                dVar.m29658a("adSize", TWMInReadAdRect.this.adSize);
                dVar.m29658a("userAgent", C10832d.m10513a(this.f9873b.get()));
                dVar.m29658a("isOpenChrome", Boolean.valueOf(m29563p()));
                dVar.m29658a("mraidUrl", m29555x());
                boolean B = m29586B();
                dVar.m29658a("isOmProviderExisted", Boolean.valueOf(B));
                if (B) {
                    dVar.m29658a("OMSDK", m29584D());
                    dVar.m29658a("PartnerName", m29583E());
                    dVar.m29658a("PartnerVersion", m29582F());
                    dVar.m29658a("PartnerCustomData", m29581G());
                }
                TWMInReadAdRect.this.f10041c = m29556w();
                dVar.m29658a("impUrl", m29557v());
                dVar.m29658a(FullAdType.VAST, m29558u());
                dVar.m29658a("trackingUrl", m29559t());
                TWMInReadAdRect.this.txId = m29566m();
                dVar.m29658a("_deviceId", ((C4117a.AbstractC4119b) C4117a.m29671b().m29673a(TWMInReadAdRect.this.txId)).m29659a("_deviceId"));
                C4117a.m29671b().m29672a(TWMInReadAdRect.this.txId, dVar);
                TWMInReadAdRect tWMInReadAdRect = TWMInReadAdRect.this;
                tWMInReadAdRect.f10043e = new RunnableC4189a(m29573f(), m29568k(), m29566m());
                new Handler().post(TWMInReadAdRect.this.f10043e);
            }
        }
    }

    public TWMInReadAdRect(Activity activity, TWMAdSize tWMAdSize, String str) {
        super(activity, tWMAdSize, str);
        C4193b bVar = null;
        this.f10046h = !isInEditMode() ? new C4193b(getContext(), this.f10045g) : bVar;
        this.f10047i = new ViewTreeObserver.OnScrollChangedListener() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.3
            @Override // android.view.ViewTreeObserver.OnScrollChangedListener
            public void onScrollChanged() {
                TWMInReadAdRect.this.m29409b();
            }
        };
        this.f10048j = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.4
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                TWMInReadAdRect.this.m29409b();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m29418a(TWMAdRequest.ErrorCode errorCode) {
        TWMAdViewListener tWMAdViewListener = this.adListener;
        if (tWMAdViewListener != null) {
            tWMAdViewListener.onFailedToReceiveAd(this, errorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m29409b() {
        Rect rect;
        int i;
        if (this.mProcessor != null) {
            if (!getLocalVisibleRect(new Rect()) || !isShown() || this.f10044f) {
                C10831c.m10518c(TAG, "Ad is invisible.");
                this.mProcessor.fireViewableChangeEvent(false);
                return;
            }
            int[] iArr = this.f10042d;
            int i2 = iArr[1];
            int i3 = iArr[3];
            int i4 = iArr[0];
            double d = iArr[2] - i4;
            double d2 = this.f10041c;
            double d3 = (d * d2) / 100.0d;
            double d4 = ((i3 - i2) * d2) / 100.0d;
            if (i3 - rect.top < d4 || rect.bottom - i2 < d4 || i - rect.left < d3 || rect.right - i4 < d3) {
                C10831c.m10518c(TAG, "Ad is invisible.");
                this.mProcessor.fireViewableChangeEvent(false);
                return;
            }
            C10831c.m10518c(TAG, "Ad is visible.");
            this.mProcessor.fireViewableChangeEvent(true);
            C4124a aVar = this.omManager;
            if (aVar != null && !aVar.m29661c()) {
                C4127a.m29646a(this.omManager);
            }
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAdView
    public void destroy() {
        removeCallbacks(this.f10043e);
        this.f10043e = null;
        try {
            getViewTreeObserver().removeOnScrollChangedListener(this.f10047i);
            if (Build.VERSION.SDK_INT >= 16) {
                getViewTreeObserver().removeOnGlobalLayoutListener(this.f10048j);
            }
        } catch (Exception e) {
            C10831c.m10520b(TAG, e.getMessage());
        }
        super.destroy();
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAdView
    public void initialView(TWMAdSize tWMAdSize) {
        if (tWMAdSize.equals(TWMAdSize.IAB_MRECT)) {
            super.initialView(tWMAdSize);
        } else if (tWMAdSize.equals(TWMAdSize.IN_READ_1200X627)) {
            setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
            try {
                this.jsWebView = new JSWebView(this.activityRef.get());
                addView(this.jsWebView);
            } catch (Exception e) {
                String str = TAG;
                C10831c.m10520b(str, "Build webview failed. " + e.getMessage());
            }
        } else {
            throw new IllegalArgumentException("AdSize is not IAB_MRECT or IN_READ_1200X627. Please check your TWMAdSize.");
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAdView, com.taiwanmobile.p055pt.adp.view.TWMAd
    public void loadAd(TWMAdRequest tWMAdRequest) {
        C10831c.m10518c(TAG, "loadAd invoked!!");
        this.adRequest = tWMAdRequest;
        WeakReference<Context> weakReference = this.contextRef;
        if (weakReference == null || weakReference.get() == null || this.jsWebView == null || !C10832d.m10483f(this.contextRef.get())) {
            TWMAdViewListener tWMAdViewListener = this.adListener;
            if (tWMAdViewListener != null) {
                tWMAdViewListener.onFailedToReceiveAd(this, TWMAdRequest.ErrorCode.INVALID_REQUEST);
            }
        } else if (C4127a.m29638b(this.contextRef.get())) {
            String str = TAG;
            C10831c.m10518c(str, "isAdLoading ? " + isAdLoading());
            if (!isAdLoading()) {
                C4127a.m29652a(this.contextRef.get(), getAdUnitId(), this.adSize, tWMAdRequest, this.f10046h, true, "IR");
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        TWMAdSize tWMAdSize;
        float f = i;
        this.f10039a = f;
        this.f10040b = i2;
        if (this.adSize == TWMAdSize.IN_READ_1200X627 && i != i3) {
            this.f10039a = f;
            this.f10040b = (this.f10039a / tWMAdSize.getWidth()) * this.adSize.getHeight();
            this.jsWebView.setLayoutParams(new RelativeLayout.LayoutParams(-1, (int) this.f10040b));
            new Handler().post(new Runnable() { // from class: com.taiwanmobile.pt.adp.view.inread.TWMInReadAdRect.2
                @Override // java.lang.Runnable
                public void run() {
                    TWMInReadAdRect.this.requestLayout();
                }
            });
        }
        super.onSizeChanged((int) this.f10039a, (int) this.f10040b, i3, i4);
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAdView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        Boolean bool;
        String str = TAG;
        C10831c.m10518c(str, "onWindowFocusChanged(" + z + ") invoked!!");
        super.onWindowFocusChanged(z);
        boolean z2 = false;
        if (this.txId == null || !isAdLoading() || !z) {
            MraidProcessor mraidProcessor = this.mProcessor;
            if (mraidProcessor != null) {
                mraidProcessor.fireViewableChangeEvent(false);
                return;
            }
            return;
        }
        m29409b();
        C4117a.AbstractC4119b bVar = (C4117a.AbstractC4119b) C4117a.m29671b().m29673a(this.txId);
        String str2 = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("adunit is null ? ");
        if (bVar == null) {
            z2 = true;
        }
        sb.append(z2);
        C10831c.m10518c(str2, sb.toString());
        if (bVar != null && (bool = (Boolean) bVar.m29659a("lam")) != null && bool.booleanValue()) {
            bVar.m29660a();
            C4117a.m29671b().m29672a(this.txId, bVar);
            C10831c.m10518c(TAG, " onDismissScreen!!");
            this.adListener.onDismissScreen(this);
        }
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAdView
    public void pause() {
        this.f10044f = true;
        m29409b();
        super.pause();
    }

    @Override // com.taiwanmobile.p055pt.adp.view.TWMAdView
    public void resume() {
        super.resume();
        this.f10044f = false;
        m29409b();
    }
}
