package p081h.p430l.p431a;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.MoPubErrorCode;
import java.util.EnumSet;
/* renamed from: h.l.a.c */
/* loaded from: classes2-dex2jar.jar:h/l/a/c.class */
public class C10683c extends WebViewClient {

    /* renamed from: b */
    public static final EnumSet<UrlAction> f24320b = EnumSet.of(UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
    @NonNull

    /* renamed from: a */
    public MoPubBrowser f24321a;

    /* renamed from: h.l.a.c$a */
    /* loaded from: classes2-dex2jar.jar:h/l/a/c$a.class */
    public class C10684a implements UrlHandler.ResultActions {
        public C10684a() {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingFailed(@NonNull String str, @NonNull UrlAction urlAction) {
        }

        @Override // com.mopub.common.UrlHandler.ResultActions
        public void urlHandlingSucceeded(@NonNull String str, @NonNull UrlAction urlAction) {
            if (urlAction.equals(UrlAction.OPEN_IN_APP_BROWSER)) {
                C10683c.this.f24321a.getWebView().loadUrl(str);
            } else {
                C10683c.this.f24321a.finish();
            }
        }
    }

    public C10683c(@NonNull MoPubBrowser moPubBrowser) {
        this.f24321a = moPubBrowser;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        super.onPageFinished(webView, str);
        this.f24321a.getBackButton().setImageDrawable(webView.canGoBack() ? Drawables.LEFT_ARROW.createDrawable(this.f24321a) : Drawables.UNLEFT_ARROW.createDrawable(this.f24321a));
        this.f24321a.getForwardButton().setImageDrawable(webView.canGoForward() ? Drawables.RIGHT_ARROW.createDrawable(this.f24321a) : Drawables.UNRIGHT_ARROW.createDrawable(this.f24321a));
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        super.onPageStarted(webView, str, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "MoPubBrowser error: " + str);
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(26)
    public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH);
        this.f24321a.finish();
        return true;
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return new UrlHandler.Builder().withSupportedUrlActions(f24320b).withoutMoPubBrowser().withResultActions(new C10684a()).build().handleResolvedUrl(this.f24321a.getApplicationContext(), str, true, null);
    }
}
