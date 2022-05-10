package com.applovin.sdk;

import android.app.Activity;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.Set;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinWebViewActivity.class */
public class AppLovinWebViewActivity extends Activity {
    public static final String EVENT_DISMISSED_VIA_BACK_BUTTON = "dismissed_via_back_button";
    public static final String INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON = "immersive_mode_on";
    public static final String INTENT_EXTRA_KEY_SDK_KEY = "sdk_key";

    /* renamed from: a */
    public String f21844a;

    /* renamed from: b */
    public WebView f21845b;

    /* renamed from: c */
    public EventListener f21846c;

    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinWebViewActivity$EventListener.class */
    public interface EventListener {
        void onReceivedEvent(String str);
    }

    /* renamed from: com.applovin.sdk.AppLovinWebViewActivity$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/sdk/AppLovinWebViewActivity$a.class */
    public class C7078a extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ AppLovinSdk f21847a;

        public C7078a(AppLovinSdk appLovinSdk) {
            this.f21847a = appLovinSdk;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            String path = parse.getPath();
            C2374t logger = this.f21847a.getLogger();
            logger.m30044b("AppLovinWebViewActivity", "Handling url load: " + str);
            if (!"applovin".equalsIgnoreCase(scheme) || !"com.applovin.sdk".equalsIgnoreCase(host) || AppLovinWebViewActivity.this.f21846c == null) {
                return super.shouldOverrideUrlLoading(webView, str);
            }
            if (!path.endsWith("webview_event")) {
                return true;
            }
            Set<String> queryParameterNames = parse.getQueryParameterNames();
            String str2 = queryParameterNames.isEmpty() ? "" : (String) queryParameterNames.toArray()[0];
            if (C2422o.m29851b(str2)) {
                String queryParameter = parse.getQueryParameter(str2);
                C2374t logger2 = this.f21847a.getLogger();
                logger2.m30044b("AppLovinWebViewActivity", "Parsed WebView event parameter name: " + str2 + " and value: " + queryParameter);
                AppLovinWebViewActivity.this.f21846c.onReceivedEvent(queryParameter);
                return true;
            }
            this.f21847a.getLogger().m30039e("AppLovinWebViewActivity", "Failed to parse WebView event parameter");
            return true;
        }
    }

    public void loadUrl(String str, EventListener eventListener) {
        this.f21846c = eventListener;
        WebView webView = this.f21845b;
        if (webView == null) {
            this.f21844a = str;
        } else {
            webView.loadUrl(str);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        EventListener eventListener = this.f21846c;
        if (eventListener != null) {
            eventListener.onReceivedEvent(EVENT_DISMISSED_VIA_BACK_BUTTON);
        }
        super.onBackPressed();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringExtra = getIntent().getStringExtra(INTENT_EXTRA_KEY_SDK_KEY);
        if (!TextUtils.isEmpty(stringExtra)) {
            AppLovinSdk instance = AppLovinSdk.getInstance(stringExtra, new AppLovinSdkSettings(), getApplicationContext());
            WebView webView = new WebView(this);
            this.f21845b = webView;
            setContentView(webView);
            WebSettings settings = this.f21845b.getSettings();
            settings.setSupportMultipleWindows(false);
            settings.setJavaScriptEnabled(true);
            this.f21845b.setVerticalScrollBarEnabled(true);
            this.f21845b.setHorizontalScrollBarEnabled(true);
            this.f21845b.setScrollBarStyle(33554432);
            this.f21845b.setWebViewClient(new C7078a(instance));
            if (getIntent().getBooleanExtra(INTENT_EXTRA_KEY_IMMERSIVE_MODE_ON, false)) {
                getWindow().getDecorView().setSystemUiVisibility(5894);
            }
            if (C2422o.m29851b(this.f21844a)) {
                this.f21845b.loadUrl(this.f21844a);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("No SDK key specified");
    }
}
