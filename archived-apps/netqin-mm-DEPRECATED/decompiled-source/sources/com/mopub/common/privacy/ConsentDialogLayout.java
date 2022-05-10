package com.mopub.common.privacy;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.android.volley.Request;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Intents;
import com.mopub.exceptions.IntentNotResolvableException;
import com.mopub.mobileads.MoPubErrorCode;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout.class */
public class ConsentDialogLayout extends CloseableLayout {

    /* renamed from: s */
    public static int f33849s = 101;

    /* renamed from: p */
    public AbstractC8734d f33851p;

    /* renamed from: q */
    public AbstractC8733c f33852q;

    /* renamed from: r */
    public final WebViewClient f33853r = new C8732b();

    /* renamed from: o */
    public final WebView f33850o = m4558d();

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$a.class */
    public class C8731a implements CloseableLayout.OnCloseListener {
        public C8731a() {
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            if (ConsentDialogLayout.this.f33852q != null) {
                ConsentDialogLayout.this.f33852q.onCloseClick();
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$b.class */
    public class C8732b extends WebViewClient {
        public C8732b() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (ConsentDialogLayout.this.f33851p != null) {
                ConsentDialogLayout.this.f33851p.onLoadProgress(ConsentDialogLayout.f33849s);
            }
            super.onPageFinished(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            if (ConsentDialogLayout.this.f33851p != null) {
                ConsentDialogLayout.this.f33851p.onLoadProgress(0);
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if ("mopub://consent?yes".equals(str)) {
                if (ConsentDialogLayout.this.f33852q == null) {
                    return true;
                }
                ConsentDialogLayout.this.f33852q.onConsentClick(ConsentStatus.EXPLICIT_YES);
                return true;
            } else if ("mopub://consent?no".equals(str)) {
                if (ConsentDialogLayout.this.f33852q == null) {
                    return true;
                }
                ConsentDialogLayout.this.f33852q.onConsentClick(ConsentStatus.EXPLICIT_NO);
                return true;
            } else if (!"mopub://close".equals(str)) {
                if (!TextUtils.isEmpty(str)) {
                    try {
                        Context context = ConsentDialogLayout.this.getContext();
                        Uri parse = Uri.parse(str);
                        Intents.launchActionViewIntent(context, parse, "Cannot open native browser for " + str);
                        return true;
                    } catch (IntentNotResolvableException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, e.getMessage());
                    }
                }
                return super.shouldOverrideUrlLoading(webView, str);
            } else if (ConsentDialogLayout.this.f33852q == null) {
                return true;
            } else {
                ConsentDialogLayout.this.f33852q.onCloseClick();
                return true;
            }
        }
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$c.class */
    public interface AbstractC8733c {
        void onCloseClick();

        void onConsentClick(ConsentStatus consentStatus);
    }

    /* renamed from: com.mopub.common.privacy.ConsentDialogLayout$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/privacy/ConsentDialogLayout$d.class */
    public interface AbstractC8734d {
        void onLoadProgress(int i);
    }

    public ConsentDialogLayout(Context context) {
        super(context);
    }

    public ConsentDialogLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public ConsentDialogLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: a */
    public final void m4563a(WebView webView) {
        webView.setWebViewClient(this.f33853r);
        setOnCloseListener(new C8731a());
    }

    /* renamed from: a */
    public void m4562a(AbstractC8733c cVar) {
        Preconditions.checkNotNull(cVar);
        this.f33852q = cVar;
    }

    /* renamed from: a */
    public void m4560a(String str, AbstractC8734d dVar) {
        Preconditions.checkNotNull(str);
        this.f33851p = dVar;
        m4563a(this.f33850o);
        WebView webView = this.f33850o;
        webView.loadDataWithBaseURL("https://" + Constants.HOST + "/", str, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
    }

    /* renamed from: d */
    public final WebView m4558d() {
        WebView webView = new WebView(getContext());
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        WebSettings settings = webView.getSettings();
        settings.setSupportZoom(false);
        settings.setBuiltInZoomControls(false);
        settings.setLoadsImagesAutomatically(true);
        settings.setLoadWithOverviewMode(true);
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAppCacheEnabled(true);
        settings.setAppCachePath(getContext().getCacheDir().getAbsolutePath());
        settings.setAllowFileAccess(false);
        settings.setAllowContentAccess(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        webView.setId(View.generateViewId());
        setCloseVisible(false);
        addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return webView;
    }
}
