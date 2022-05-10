package com.inmobi.commons.core.network;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
/* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/WebViewNetworkTask.class */
public class WebViewNetworkTask {

    /* renamed from: d */
    public static final String f32585d = "WebViewNetworkTask";

    /* renamed from: a */
    public C8383c f32586a;

    /* renamed from: b */
    public WebViewClient f32587b;

    /* renamed from: c */
    public NetworkTaskWebView f32588c;

    /* loaded from: classes2-dex2jar.jar:com/inmobi/commons/core/network/WebViewNetworkTask$NetworkTaskWebView.class */
    public class NetworkTaskWebView extends WebView {

        /* renamed from: a */
        public boolean f32589a;

        public NetworkTaskWebView(Context context) {
            super(context);
        }

        @Override // android.webkit.WebView
        public void destroy() {
            this.f32589a = true;
            super.destroy();
        }
    }

    public WebViewNetworkTask(C8383c cVar, WebViewClient webViewClient) {
        this.f32587b = webViewClient;
        this.f32586a = cVar;
    }
}
