package com.tmobile.tmoid.agent;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.facebook.stetho.common.Utf8Charset;
import com.tmobile.tmoid.agent.IAMAgentJsInterfaceImpl;
import com.tmobile.tmoid.agent.IAMWebChromeClient;
import com.tmobile.tmoid.agent.IAMWebViewClient;
import com.tmobile.tmoid.agent.appversioning.Version;
import com.tmobile.tmoid.agent.appversioning.VersionUtils;
import com.tmobile.tmoid.agent.utils.CookieWatcher;
import com.tmobile.tmoid.helperlib.C2031R;
import com.tmobile.tmoid.helperlib.impl.APIRequest;
import com.tmobile.tmoid.helperlib.impl.APIRequestForAuthorizationCode;
import com.tmobile.tmoid.helperlib.impl.APIResponse;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMMainActivity.class */
public class IAMMainActivity extends Activity {

    /* renamed from: s */
    private static Context f14647s;

    /* renamed from: t */
    static int f14648t = 1;

    /* renamed from: u */
    static int f14649u = 2;

    /* renamed from: f */
    private Version f14650f;

    /* renamed from: h */
    WebView f14652h;

    /* renamed from: i */
    ProgressBar f14653i;

    /* renamed from: j */
    APIRequest f14654j;

    /* renamed from: k */
    String f14655k;

    /* renamed from: l */
    CookieWatcher f14656l;

    /* renamed from: m */
    Configuration f14657m;

    /* renamed from: n */
    IAMAgentJsInterfaceImpl f14658n;

    /* renamed from: o */
    IAMWebViewClient f14659o;

    /* renamed from: g */
    MenuManager f14651g = new MenuManager();

    /* renamed from: p */
    IAMWebChromeClient f14660p = new IAMWebChromeClient(new IAMWebChromeClient.ActivityInterface() { // from class: com.tmobile.tmoid.agent.IAMMainActivity.1
        @Override // com.tmobile.tmoid.agent.IAMWebChromeClient.ActivityInterface
        /* renamed from: a */
        public void mo5132a(int i) {
            IAMMainActivity.this.m5140l(i);
        }
    });

    /* renamed from: q */
    int f14661q = 0;

    /* renamed from: r */
    int f14662r = 0;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMMainActivity$IAMWebViewClientActivityInterface.class */
    class IAMWebViewClientActivityInterface implements IAMWebViewClient.ActivityInterface {
        IAMWebViewClientActivityInterface() {
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: a */
        public void mo5125a(int i) {
            IAMMainActivity.this.m5140l(i);
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: b */
        public void mo5124b(String str) {
            IAMMainActivity.this.f14656l.m5086b(str);
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: c */
        public void mo5123c(APIResponse aPIResponse) {
            IAMMainActivity iAMMainActivity = IAMMainActivity.this;
            if (iAMMainActivity.f14654j != null) {
                iAMMainActivity.m5149c().m5165e(IAMMainActivity.this.f14654j.m5046d(), aPIResponse);
                Log.m4654d("TMO-Agent", "response sending was triggered, finishing IAMAgent activity");
                Log.m4648v("TMO-Agent", "request_id:" + IAMMainActivity.this.f14654j.m5046d());
            } else {
                Log.m4654d("TMO-Agent", "returnAuthorizationCode: call has been canceled");
            }
            if (Build.VERSION.SDK_INT >= 21) {
                IAMMainActivity.this.finishAndRemoveTask();
            } else {
                IAMMainActivity.this.finish();
            }
            IAMMainActivity.this.f14654j = null;
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: d */
        public Context mo5122d() {
            return IAMMainActivity.this.getApplicationContext();
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: e */
        public APIRequest mo5121e() {
            return IAMMainActivity.this.f14654j;
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: f */
        public void mo5120f(int i, String str, String str2) {
            Log.m4652e("TMO-Agent", "Server error errorCode = " + i + ", description = " + str);
            if (IAMMainActivity.this.f14654j != null) {
                Log.m4648v("TMO-Agent", "Server error for request: " + IAMMainActivity.this.f14654j.toString());
                IAMMainActivity.this.m5149c().m5166d(IAMMainActivity.this.f14654j, i, str, str2);
                IAMMainActivity.this.f14654j = null;
            }
            Log.m4654d("TMO-Agent", "onReceivedError, finish()");
            IAMMainActivity.this.finish();
        }

        @Override // com.tmobile.tmoid.agent.IAMWebViewClient.ActivityInterface
        /* renamed from: g */
        public void mo5119g() {
            IAMMainActivity iAMMainActivity = IAMMainActivity.this;
            iAMMainActivity.f14656l.m5087a(iAMMainActivity.f14652h);
        }
    }

    /* renamed from: d */
    public static Context m5148d() {
        return f14647s;
    }

    /* renamed from: f */
    private boolean m5146f(int i) {
        return (i & this.f14662r) != 0;
    }

    /* renamed from: h */
    public static void m5144h(String str, Map<String, String> map) {
        Log.m4648v("TMO-Agent", "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv");
        Log.m4648v("TMO-Agent", "URL:" + str);
        if (map.size() > 0) {
            Log.m4648v("TMO-Agent", "Additional headers");
            for (String str2 : map.keySet()) {
                Log.m4648v("TMO-Agent", str2 + "=" + map.get(str2));
            }
        }
        Log.m4648v("TMO-Agent", "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^");
    }

    /* renamed from: i */
    private void m5143i() {
        if (!m5145g()) {
            m5141k(getResources().getString(C2031R.string.app_name), getResources().getString(C2031R.string.no_network_notice), this);
            return;
        }
        m5139m();
        this.f14656l.m5086b(this.f14657m.getLOGIN_URL());
        Map<String, String> e = IAMHttpUtils.m5155e(this);
        m5144h(this.f14657m.getLOGIN_URL(), e);
        this.f14652h.loadUrl(this.f14657m.getLOGIN_URL(), e);
        Log.m4654d("TMO-Agent", "open dashboard");
        Log.m4648v("TMO-Agent", "url: " + this.f14657m.getLOGIN_URL());
    }

    /* renamed from: m */
    private void m5139m() {
        CookieSyncManager.getInstance().sync();
        setContentView(C2031R.layout.authenticate_activity);
        setTitle(C2031R.string.title_welcome);
        this.f14652h = (WebView) findViewById(C2031R.C2034id.webview);
        this.f14653i = (ProgressBar) findViewById(C2031R.C2034id.webview_progress_bar);
        if (this.f14657m.isCLEAR_CACHE()) {
            this.f14657m.setCLEAR_CACHE(false);
            this.f14652h.clearCache(true);
            CookieManager.getInstance().removeAllCookie();
            SharedPreferences sharedPreferences = getSharedPreferences(Configuration.PREFERENCES_FILE, 0);
            sharedPreferences.edit().putBoolean("clearcache", this.f14657m.isCLEAR_CACHE());
            sharedPreferences.edit().commit();
        }
        this.f14652h.getSettings().setSavePassword(false);
        this.f14652h.getSettings().setJavaScriptEnabled(true);
        this.f14652h.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
        this.f14652h.getSettings().setLoadWithOverviewMode(true);
        this.f14652h.getSettings().setUseWideViewPort(true);
        this.f14652h.getSettings().setSupportZoom(true);
        this.f14652h.getSettings().setBuiltInZoomControls(true);
        if (Build.VERSION.SDK_INT >= 11) {
            this.f14652h.getSettings().setDisplayZoomControls(false);
        }
        this.f14652h.setScrollBarStyle(33554432);
        this.f14652h.addJavascriptInterface(this.f14658n, "IAMAgent");
        this.f14652h.setWebChromeClient(this.f14660p);
        this.f14652h.setWebViewClient(this.f14659o);
        int i = getResources().getConfiguration().orientation;
        this.f14661q = i;
        if (i != 1) {
            IAMWebViewClient iAMWebViewClient = this.f14659o;
            iAMWebViewClient.m5131a("javascript:if (IAMCallbacks) IAMCallbacks.orientationChanged('" + m5142j(this.f14661q) + "')");
        }
    }

    /* renamed from: n */
    private void m5138n(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) {
        if (!m5145g()) {
            m5141k(getResources().getString(C2031R.string.app_name), getResources().getString(C2031R.string.no_network_notice), this);
            return;
        }
        m5139m();
        String b = m5150b(aPIRequestForAuthorizationCode);
        this.f14656l.m5086b(b);
        Log.m4654d("TMO-Agent", "------ started get authorization code flow ------");
        Map<String, String> e = IAMHttpUtils.m5155e(this);
        this.f14652h.loadUrl(b, e);
        m5144h(b, e);
    }

    /* renamed from: b */
    public String m5150b(APIRequestForAuthorizationCode aPIRequestForAuthorizationCode) {
        String str;
        String uuid = UUID.randomUUID().toString();
        try {
            str = URLEncoder.encode(aPIRequestForAuthorizationCode.m5033i(), Utf8Charset.NAME);
        } catch (UnsupportedEncodingException e) {
            Log.m4651e("TMO-Agent", "while encoding", e);
            str = "";
        }
        return this.f14657m.getAUTHORIZE_URL() + "?client_id=" + aPIRequestForAuthorizationCode.m5047c() + "&scope=" + str + "&redirect_uri=" + this.f14657m.getREDIRECT_URI_ENCODED() + "&access_type=" + aPIRequestForAuthorizationCode.m5037e() + "&display=" + aPIRequestForAuthorizationCode.m5035g() + "&re_auth=" + aPIRequestForAuthorizationCode.m5034h() + "&approval_prompt=" + aPIRequestForAuthorizationCode.m5036f() + "&response_type=code&state=" + uuid;
    }

    /* renamed from: c */
    public IAMAgentCallManager m5149c() {
        return IAMAgentStateHolder.m5162c(this).m5164a();
    }

    /* renamed from: e */
    public LoginState m5147e() {
        return IAMAgentStateHolder.m5162c(this).m5161d();
    }

    /* renamed from: g */
    public boolean m5145g() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    /* renamed from: j */
    public String m5142j(int i) {
        return i != 1 ? i != 2 ? "UNDEFINED" : "LANDSCAPE" : "PORTRAIT";
    }

    /* renamed from: k */
    public void m5141k(String str, String str2, final Activity activity) {
        new AlertDialog.Builder(activity).setTitle(str).setMessage(str2).setPositiveButton(getResources().getString(C2031R.string.btn_ok), new DialogInterface.OnClickListener(this) { // from class: com.tmobile.tmoid.agent.IAMMainActivity.4
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                activity.startActivity(new Intent("android.settings.SETTINGS"));
                Log.m4654d("TMO-Agent", "popAlertDialog, activity.finish()");
                activity.finish();
            }
        }).show();
    }

    /* renamed from: l */
    public void m5140l(int i) {
        if (i == 0) {
            this.f14653i.setVisibility(0);
        } else if (this.f14653i.getProgress() == 100 && i == 100) {
            this.f14653i.setVisibility(4);
        }
        this.f14653i.setProgress(i);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.f14662r |= f14649u;
        Log.m4654d("TMO-Agent", "onBackPressed");
        super.onBackPressed();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.m4654d("TMO-Agent", "configuration changed");
        int i = configuration.orientation;
        if (i != this.f14661q) {
            this.f14661q = i;
            WebView webView = this.f14652h;
            IAMHttpUtils.m5153g(webView, "IAMCallbacks.orientationChanged('" + m5142j(configuration.orientation) + "')", new String[]{"IAMCallbacks"});
        }
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.m4654d("TMO-Agent", "activity created");
        super.onCreate(bundle);
        f14647s = this;
        Configuration b = IAMAgentStateHolder.m5162c(this).m5163b();
        this.f14657m = b;
        this.f14656l = new CookieWatcher(b.getOAUTH_SERVER_HOST(), ".*", new CookieWatcher.Listener() { // from class: com.tmobile.tmoid.agent.IAMMainActivity.2
            @Override // com.tmobile.tmoid.agent.utils.CookieWatcher.Listener
            /* renamed from: a */
            public void mo5078a(String str, String str2) {
                Log.m4648v("TMO-Agent", "cookie added: " + str + "=" + str2);
                IAMMainActivity.this.m5147e().m5116c().put(str, str2);
            }

            @Override // com.tmobile.tmoid.agent.utils.CookieWatcher.Listener
            /* renamed from: b */
            public void mo5077b(String str) {
                Log.m4648v("TMO-Agent", "cookie removed: " + str);
                IAMMainActivity.this.m5147e().m5116c().remove(str);
                if ("IAM_SESSION_ID".equals(str)) {
                    IAMMainActivity.this.m5147e().m5111h(IAMMainActivity.this);
                }
            }
        });
        this.f14659o = new IAMWebViewClient(this.f14656l, new IAMWebViewClientActivityInterface());
        getWindow().requestFeature(2);
        this.f14650f = new Version(VersionUtils.m5092b(this));
        this.f14658n = new IAMAgentJsInterfaceImpl(new IAMAgentJsInterfaceImpl.ActivityInterface() { // from class: com.tmobile.tmoid.agent.IAMMainActivity.3
            @Override // com.tmobile.tmoid.agent.IAMAgentJsInterfaceImpl.ActivityInterface
            /* renamed from: a */
            public IAMWebViewClient mo5137a() {
                return IAMMainActivity.this.f14659o;
            }

            @Override // com.tmobile.tmoid.agent.IAMAgentJsInterfaceImpl.ActivityInterface
            /* renamed from: b */
            public Context mo5136b() {
                return IAMMainActivity.this;
            }

            @Override // com.tmobile.tmoid.agent.IAMAgentJsInterfaceImpl.ActivityInterface
            /* renamed from: c */
            public void mo5135c(String str) {
                IAMMainActivity.this.f14655k = str;
            }

            @Override // com.tmobile.tmoid.agent.IAMAgentJsInterfaceImpl.ActivityInterface
            /* renamed from: d */
            public void mo5134d() {
                Log.m4654d("TMO-Agent", "jsInterface.finish()");
                if (Build.VERSION.SDK_INT >= 21) {
                    IAMMainActivity.this.finishAndRemoveTask();
                } else {
                    IAMMainActivity.this.finish();
                }
            }

            @Override // com.tmobile.tmoid.agent.IAMAgentJsInterfaceImpl.ActivityInterface
            /* renamed from: e */
            public LoginState mo5133e() {
                return IAMMainActivity.this.m5147e();
            }
        }, m5147e().m5114e());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.f14651g.m5108a(this, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        WebView webView;
        if (i == 4 && (webView = this.f14652h) != null && webView.canGoBack()) {
            if (this.f14652h.getUrl().contains("/profile")) {
                Log.m4654d("TMO-Agent", "onKeyDown, finish()");
                finish();
            } else {
                this.f14652h.goBack();
                return true;
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        this.f14651g.m5107b(menuItem);
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.app.Activity
    protected void onPause() {
        Log.m4654d("TMO-Agent", "Agent activity paused: " + m5146f(f14649u) + "/" + m5146f(f14648t));
        if ((m5146f(f14649u) || m5146f(f14648t)) && this.f14654j != null) {
            Log.m4654d("TMO-Agent", "Cancelling ongoing API call");
            Log.m4648v("TMO-Agent", this.f14654j.toString());
            m5149c().m5168b(this.f14654j);
            WebView webView = this.f14652h;
            if (webView != null) {
                webView.stopLoading();
            }
            this.f14654j = null;
        }
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        WebView webView = this.f14652h;
        if (webView == null || webView.getUrl() == null) {
            this.f14662r = 0;
            CookieManager.getInstance().getCookie("https://portal.agent.iam.msg.lab.t-mobile.com");
            new Thread(new Runnable() { // from class: com.tmobile.tmoid.agent.IAMMainActivity.5
                @Override // java.lang.Runnable
                public void run() {
                    IAMMainActivity iAMMainActivity = IAMMainActivity.this;
                    VersionUtils.m5089e(iAMMainActivity, iAMMainActivity.f14650f);
                }
            }).start();
            APIRequest a = APIRequest.m5049a(getIntent());
            if (a.m5048b() == null) {
                Log.m4654d("TMO-Agent", "resuming Agent activity from launcher");
                this.f14654j = null;
                m5143i();
            } else if (!a.equals(this.f14654j)) {
                Log.m4654d("TMO-Agent", "Resuming Agent activity with API request");
                Log.m4648v("TMO-Agent", a.toString());
                this.f14654j = a;
                Log.m4648v("TMO-Agent", "Action: " + a.m5048b());
                if ("getAuthorizationCode".equals(a.m5048b())) {
                    m5138n((APIRequestForAuthorizationCode) a);
                } else {
                    Log.m4652e("TMO-Agent", "Unknown action passed to Device Agent: " + a.m5048b());
                }
            }
            super.onResume();
            return;
        }
        Log.m4654d("TMO-Agent", "resuming from lock screen");
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        Log.m4654d("TMO-Agent", "onUserLeaveHint");
        super.onUserLeaveHint();
        this.f14662r |= f14648t;
    }
}
