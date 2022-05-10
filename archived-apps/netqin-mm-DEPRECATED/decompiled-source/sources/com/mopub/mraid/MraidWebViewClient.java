package com.mopub.mraid;

import android.net.Uri;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.android.volley.Request;
import com.mopub.mobileads.resource.MraidJavascript;
import java.io.ByteArrayInputStream;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidWebViewClient.class */
public class MraidWebViewClient extends WebViewClient {

    /* renamed from: a */
    public static final String f34620a = "javascript:" + MraidJavascript.JAVASCRIPT_SOURCE;

    /* renamed from: a */
    public final WebResourceResponse m4039a() {
        return new WebResourceResponse("text/javascript", Request.DEFAULT_PARAMS_ENCODING, new ByteArrayInputStream(f34620a.getBytes()));
    }

    /* renamed from: a */
    public boolean m4038a(String str) {
        return "mraid.js".equals(Uri.parse(str.toLowerCase(Locale.US)).getLastPathSegment());
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return m4038a(str) ? m4039a() : super.shouldInterceptRequest(webView, str);
    }
}
