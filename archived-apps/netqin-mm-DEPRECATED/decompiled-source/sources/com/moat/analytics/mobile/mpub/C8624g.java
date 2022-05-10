package com.moat.analytics.mobile.mpub;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.android.volley.toolbox.JsonRequest;
import com.moat.analytics.mobile.mpub.C8636j;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
/* renamed from: com.moat.analytics.mobile.mpub.g */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/g.class */
public class C8624g {

    /* renamed from: a */
    public WebView f33458a;

    /* renamed from: b */
    public C8636j f33459b;

    /* renamed from: d */
    public final EnumC8629a f33461d;

    /* renamed from: f */
    public Handler f33463f;

    /* renamed from: g */
    public Runnable f33464g;

    /* renamed from: e */
    public boolean f33462e = false;

    /* renamed from: c */
    public final String f33460c = String.format(Locale.ROOT, "_moatTracker%d", Integer.valueOf((int) (Math.random() * 1.0E8d)));

    /* renamed from: com.moat.analytics.mobile.mpub.g$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/mpub/g$a.class */
    public enum EnumC8629a {
        DISPLAY,
        VIDEO
    }

    public C8624g(Context context, EnumC8629a aVar) {
        this.f33461d = aVar;
        WebView webView = new WebView(context);
        this.f33458a = webView;
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setDatabaseEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setGeolocationEnabled(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSaveFormData(false);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(1);
        }
        try {
            this.f33459b = new C8636j(this.f33458a, aVar == EnumC8629a.VIDEO ? C8636j.EnumC8640a.NATIVE_VIDEO : C8636j.EnumC8640a.NATIVE_DISPLAY);
        } catch (C8643m e) {
            C8643m.m4879a(e);
        }
    }

    /* renamed from: a */
    public static String m4948a(String str, String str2, Integer num, Integer num2, JSONObject jSONObject, Integer num3) {
        return String.format(Locale.ROOT, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + '_moatElToTrack'] = document.getElementById('%s');var moatapi = {'dropTime':%d,'adData': {'ids': ids, 'duration': duration, 'url': 'n/a'},'dispatchEvent': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},'dispatchMany': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {'value': moatapi});var s = document.createElement('script');s.src = 'https://z.moatads.com/' + pcode + '/moatvideo.js?' + apiname + '#' + apiname;document.body.appendChild(s);})('%s', '%s', %s, %s);</script></body></html>", "mianahwvc", num, num2, "mianahwvc", Long.valueOf(System.currentTimeMillis()), str, str2, jSONObject.toString(), num3);
    }

    /* renamed from: b */
    public static String m4945b(String str) {
        return "<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/" + str + "/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>";
    }

    /* renamed from: a */
    public void m4952a() {
        C8652p.m4848a(3, "GlobalWebView", this, "Cleaning up");
        this.f33459b.m4919b();
        this.f33459b = null;
        this.f33458a.destroy();
        this.f33458a = null;
    }

    /* renamed from: a */
    public void m4949a(String str) {
        if (this.f33461d == EnumC8629a.DISPLAY) {
            this.f33458a.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.mpub.g.1
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str2) {
                    if (!C8624g.this.f33462e) {
                        try {
                            C8624g.this.f33462e = true;
                            C8624g.this.f33459b.m4927a();
                        } catch (Exception e) {
                            C8643m.m4879a(e);
                        }
                    }
                }
            });
            this.f33458a.loadData(m4945b(str), "text/html", JsonRequest.PROTOCOL_CHARSET);
        }
    }

    /* renamed from: a */
    public void m4947a(String str, Map<String, String> map, Integer num, Integer num2, Integer num3) {
        if (this.f33461d == EnumC8629a.VIDEO) {
            if (Build.VERSION.SDK_INT >= 19) {
                C8652p.m4848a(3, "GlobalWebView", this, "Starting off polling interval to check for Video API instance presence");
                this.f33463f = new Handler();
                Runnable runnable = new Runnable() { // from class: com.moat.analytics.mobile.mpub.g.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            if (C8624g.this.f33458a != null && Build.VERSION.SDK_INT >= 19) {
                                WebView webView = C8624g.this.f33458a;
                                webView.evaluateJavascript("typeof " + C8624g.this.f33460c + " !== 'undefined'", new ValueCallback<String>() { // from class: com.moat.analytics.mobile.mpub.g.2.1
                                    /* renamed from: a */
                                    public void onReceiveValue(String str2) {
                                        if ("true".equals(str2)) {
                                            C8652p.m4848a(3, "GlobalWebView", this, String.format("Video API instance %s detected. Flushing event queue", C8624g.this.f33460c));
                                            try {
                                                C8624g.this.f33462e = true;
                                                C8624g.this.f33459b.m4927a();
                                                C8624g.this.f33459b.m4911c(C8624g.this.f33460c);
                                            } catch (Exception e) {
                                                C8643m.m4879a(e);
                                            }
                                        } else {
                                            C8624g.this.f33463f.postDelayed(C8624g.this.f33464g, 200L);
                                        }
                                    }
                                });
                            }
                        } catch (Exception e) {
                            C8643m.m4879a(e);
                        }
                    }
                };
                this.f33464g = runnable;
                this.f33463f.post(runnable);
            } else {
                C8652p.m4848a(3, "GlobalWebView", this, "Android API version is less than KitKat: " + Build.VERSION.SDK_INT);
                this.f33458a.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.mpub.g.3
                    @Override // android.webkit.WebViewClient
                    public void onPageFinished(WebView webView, String str2) {
                        if (!C8624g.this.f33462e) {
                            C8652p.m4848a(3, "GlobalWebView", this, "onPageFinished is called for the first time. Flushing event queue");
                            try {
                                C8624g.this.f33462e = true;
                                C8624g.this.f33459b.m4927a();
                                C8624g.this.f33459b.m4911c(C8624g.this.f33460c);
                            } catch (Exception e) {
                                C8643m.m4879a(e);
                            }
                        }
                    }
                });
            }
            this.f33458a.loadData(m4948a(this.f33460c, str, num, num2, new JSONObject(map), num3), "text/html", null);
        }
    }
}
