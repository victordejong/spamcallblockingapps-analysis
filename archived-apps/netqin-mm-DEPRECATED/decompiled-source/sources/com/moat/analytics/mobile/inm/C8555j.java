package com.moat.analytics.mobile.inm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import com.moat.analytics.mobile.inm.C8574s;
import com.moat.analytics.mobile.inm.C8586w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
import p012b.p072q.p073a.C1134a;
/* renamed from: com.moat.analytics.mobile.inm.j */
/* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/j.class */
public class C8555j {

    /* renamed from: h */
    public final WeakReference<WebView> f33285h;

    /* renamed from: n */
    public final EnumC8559a f33291n;

    /* renamed from: a */
    public int f33278a = 0;

    /* renamed from: b */
    public boolean f33279b = false;

    /* renamed from: c */
    public boolean f33280c = false;

    /* renamed from: d */
    public final AtomicBoolean f33281d = new AtomicBoolean(false);

    /* renamed from: e */
    public boolean f33282e = false;

    /* renamed from: f */
    public boolean f33283f = false;

    /* renamed from: g */
    public boolean f33284g = false;

    /* renamed from: o */
    public final BroadcastReceiver f33292o = new BroadcastReceiver() { // from class: com.moat.analytics.mobile.inm.j.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                C8555j.this.m5166d();
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
            if (System.currentTimeMillis() - C8555j.this.f33288k > 30000) {
                C8555j.this.m5151i();
            }
        }
    };

    /* renamed from: p */
    public final BroadcastReceiver f33293p = new BroadcastReceiver() { // from class: com.moat.analytics.mobile.inm.j.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                C8555j.this.m5162e();
            } catch (Exception e) {
                C8562m.m5135a(e);
            }
        }
    };

    /* renamed from: j */
    public final LinkedList<String> f33287j = new LinkedList<>();

    /* renamed from: m */
    public final List<String> f33290m = new ArrayList();

    /* renamed from: i */
    public final Map<AbstractC8537b, String> f33286i = new WeakHashMap();

    /* renamed from: k */
    public final long f33288k = System.currentTimeMillis();

    /* renamed from: l */
    public final String f33289l = String.format("javascript:(function(d,k){function l(){function d(a,b){var c=ipkn[b]||ipkn[kuea];if(c){var h=function(b){var c=b.b;c.ts=b.i;c.ticks=b.g;c.buffered=!0;a(c)};h(c.first);c.a.forEach(function(a){h(a)})}}function e(a){var b=a.a,c=a.c,h=a.b;a=a.f;var d=[];if(c)b[c]&&d.push(b[c].fn[0]);else for(key in b)if(b[key])for(var g=0,e=b[key].fn.length;g<e;g++)d.push(b[key].fn[g]);g=0;for(e=d.length;g<e;g++){var f=d[g];if('function'===typeof f)try{h?f(h):f()}catch(k){}a&&delete b[c]}}function f(a,b,c){'function'===typeof a&& (b===kuea&&c[b]?c[b].fn.push(a):c[b]={ts:+new Date,fn:[a]},c===yhgt&&d(a,b))}kuea=+new Date;iymv={};briz=!1;ewat=+new Date;bnkr=[];bjmk={};dptk={};uqaj={};ryup={};yhgt={};ipkn={};csif={};this.h=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash;this.aqzx=a.aqzx;this.appId=a.appId;this.metadata=a};this.nvsj=function(a){briz||(f(a,ewat,iymv),briz=!0)};this.bpsy=function(a,b){var c=b||kuea; c!==kuea&&bjmk[c]||f(a,c,bjmk)};this.qmrv=function(a,b){var c=b||kuea;c!==kuea&&uqaj[c]||f(a,c,uqaj)};this.lgpr=function(a,b){f(a,b||kuea,yhgt)};this.hgen=function(a,b){f(a,b||kuea,csif)};this.xrnk=function(a){delete yhgt[a||kuea]};this.vgft=function(a){return dptk[a||kuea]||!1};this.lkpu=function(a){return ryup[a||kuea]||!1};this.crts=function(a){var b={a:iymv,b:a,c:ewat};briz?e(b):bnkr.push(a)};this.mqjh=function(a){var b=a||kuea;dptk[b]=!0;var c={a:bjmk,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.egpw= function(a){var b=a||kuea;ryup[b]=!0;var c={a:uqaj,f:!0};b!==kuea&&(c.b=a,c.c=a);e(c)};this.sglu=function(a){var b=a.adKey||kuea,c={a:yhgt,b:a.event||a,g:1,i:+new Date,f:!1};b!==kuea&&(c.c=a.adKey);a=0<Object.keys(yhgt).length;if(!a||!this.isNative)if(ipkn[b]){var d=ipkn[b].a.slice(-1)[0]||ipkn[b].first;JSON.stringify(c.b)==JSON.stringify(d.b)?d.g+=1:(5<=ipkn[b].a.length&&ipkn[b].a.shift(),ipkn[b].a.push(c))}else ipkn[b]={first:c,a:[]};a&&e(c);return a};this.ucbx=function(a){e({c:a.adKey||kuea,a:csif, b:a.event,f:!1})}}'undefined'===typeof d.MoatMAK&&(d.MoatMAK=new l,d.MoatMAK.h(k),d.__zMoatInit__=!0)})(window,%s);", m5153h());

    /* renamed from: com.moat.analytics.mobile.inm.j$a */
    /* loaded from: classes2-dex2jar.jar:com/moat/analytics/mobile/inm/j$a.class */
    public enum EnumC8559a {
        WEBVIEW,
        NATIVE_DISPLAY,
        NATIVE_VIDEO
    }

    public C8555j(WebView webView, EnumC8559a aVar) {
        this.f33285h = new WeakReference<>(webView);
        this.f33291n = aVar;
        if (m5163d("Initialize")) {
            IntentFilter intentFilter = new IntentFilter("UPDATE_METADATA");
            IntentFilter intentFilter2 = new IntentFilter("UPDATE_VIEW_INFO");
            C1134a.m34598a(C8574s.m5089c()).m34599a(this.f33292o, intentFilter);
            C1134a.m34598a(C8574s.m5089c()).m34599a(this.f33293p, intentFilter2);
            m5166d();
            C8552i.m5194a().m5191a(C8574s.m5089c(), this);
            C8571p.m5104a(3, "JavaScriptBridge", this, "bridge initialization succeeded");
        }
    }

    /* renamed from: a */
    private boolean m5182a(WebView webView) {
        return webView.getSettings().getJavaScriptEnabled();
    }

    /* renamed from: b */
    public static /* synthetic */ int m5173b(C8555j jVar) {
        int i = jVar.f33278a;
        jVar.f33278a = i + 1;
        return i;
    }

    /* renamed from: c */
    private void m5170c() {
        for (Map.Entry<AbstractC8537b, String> entry : this.f33286i.entrySet()) {
            AbstractC8537b key = entry.getKey();
            if (key.m5230e()) {
                m5154g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.mqjh(\"%s\");}", key.f33220e));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public void m5166d() {
        try {
            if (C8586w.m5069a().f33356a != C8586w.EnumC8594d.OFF) {
                if (!this.f33280c) {
                    C8571p.m5104a(3, "JavaScriptBridge", this, "Attempting to establish communication (setting environment variables).");
                    this.f33280c = true;
                }
                m5154g(this.f33289l);
            }
        } catch (Exception e) {
            C8571p.m5100a("JavaScriptBridge", this, "Attempt failed to establish communication (did not set environment variables).", e);
        }
    }

    /* renamed from: d */
    private void m5165d(AbstractC8537b bVar) {
        C8571p.m5104a(3, "JavaScriptBridge", this, "Stopping view update loop");
        if (bVar != null) {
            C8552i.m5194a().m5190a(bVar);
        }
    }

    /* renamed from: d */
    private boolean m5163d(String str) {
        WebView g = m5156g();
        if (g == null) {
            C8571p.m5104a(6, "JavaScriptBridge", this, "WebView is null. Can't " + str);
            throw new C8562m("WebView is null");
        } else if (m5182a(g)) {
            return true;
        } else {
            C8571p.m5104a(6, "JavaScriptBridge", this, "JavaScript is not enabled in the given WebView. Can't " + str);
            throw new C8562m("JavaScript is not enabled in the WebView");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m5162e() {
        try {
            if (C8586w.m5069a().f33356a != C8586w.EnumC8594d.OFF) {
                if (this.f33284g) {
                    C8571p.m5104a(3, "JavaScriptBridge", this, "Can't send info, already cleaned up");
                    return;
                }
                if (m5159f() && (!this.f33279b || m5156g().getUrl() != null)) {
                    if (m5156g().getUrl() != null) {
                        this.f33279b = true;
                    }
                    for (Map.Entry<AbstractC8537b, String> entry : this.f33286i.entrySet()) {
                        AbstractC8537b key = entry.getKey();
                        if (key == null || key.m5229f() == null) {
                            C8571p.m5104a(3, "JavaScriptBridge", this, "Tracker has no subject");
                            if (key != null && key.f33221f) {
                            }
                            m5169c(key);
                        }
                        if (key.m5230e()) {
                            if (!this.f33281d.get()) {
                                m5154g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.mqjh(\"%s\");}", key.f33220e));
                            }
                            String format = String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.sglu(%s);}", key.m5227h());
                            if (Build.VERSION.SDK_INT >= 19) {
                                m5156g().evaluateJavascript(format, new ValueCallback<String>() { // from class: com.moat.analytics.mobile.inm.j.1
                                    /* renamed from: a */
                                    public void onReceiveValue(String str) {
                                        String str2 = "null";
                                        if (str == null || str.equalsIgnoreCase("null") || str.equalsIgnoreCase("false")) {
                                            C8555j jVar = C8555j.this;
                                            StringBuilder sb = new StringBuilder("Received value is:");
                                            if (str != null) {
                                                str2 = "(String)" + str;
                                            }
                                            sb.append(str2);
                                            C8571p.m5104a(3, "JavaScriptBridge", jVar, sb.toString());
                                            if (C8555j.this.f33278a >= 150) {
                                                C8571p.m5104a(3, "JavaScriptBridge", C8555j.this, "Giving up on finding ad");
                                                C8555j.this.m5175b();
                                            }
                                            C8555j.m5173b(C8555j.this);
                                            if (str != null && str.equalsIgnoreCase("false") && !C8555j.this.f33282e) {
                                                C8555j.this.f33282e = true;
                                                C8571p.m5104a(3, "JavaScriptBridge", C8555j.this, "Bridge connection established");
                                            }
                                        } else if (str.equalsIgnoreCase("true")) {
                                            if (!C8555j.this.f33283f) {
                                                C8555j.this.f33283f = true;
                                                C8571p.m5104a(3, "JavaScriptBridge", C8555j.this, "Javascript has found ad");
                                                C8555j.this.m5183a();
                                            }
                                            C8555j.this.f33278a = 0;
                                        } else {
                                            C8571p.m5104a(3, "JavaScriptBridge", C8555j.this, "Received unusual value from Javascript:" + str);
                                        }
                                    }
                                });
                            } else {
                                m5156g().loadUrl(format);
                            }
                        }
                    }
                    return;
                }
                StringBuilder sb = new StringBuilder("WebView became null");
                sb.append(m5156g() == null ? "" : "based on null url");
                sb.append(", stopping tracking loop");
                C8571p.m5104a(3, "JavaScriptBridge", this, sb.toString());
                m5175b();
            }
        } catch (Exception e) {
            C8562m.m5135a(e);
            m5175b();
        }
    }

    /* renamed from: e */
    private void m5160e(String str) {
        if (this.f33290m.size() >= 50) {
            this.f33290m.subList(0, 25).clear();
        }
        this.f33290m.add(str);
    }

    /* renamed from: f */
    private void m5157f(String str) {
        if (this.f33281d.get()) {
            m5154g(str);
        } else {
            m5160e(str);
        }
    }

    /* renamed from: f */
    private boolean m5159f() {
        return m5156g() != null;
    }

    /* renamed from: g */
    private WebView m5156g() {
        return this.f33285h.get();
    }

    /* renamed from: g */
    private void m5154g(String str) {
        if (this.f33284g) {
            C8571p.m5104a(3, "JavaScriptBridge", this, "Can't send, already cleaned up");
        } else if (m5159f()) {
            C8571p.m5098b(2, "JavaScriptBridge", this, str);
            if (Build.VERSION.SDK_INT >= 19) {
                m5156g().evaluateJavascript(str, null);
            } else {
                m5156g().loadUrl(str);
            }
        }
    }

    /* renamed from: h */
    private String m5153h() {
        try {
            C8574s.C8576a d = C8574s.m5088d();
            C8574s.C8577b e = C8574s.m5087e();
            HashMap hashMap = new HashMap();
            String a = d.m5082a();
            String b = d.m5080b();
            String c = d.m5079c();
            String num = Integer.toString(Build.VERSION.SDK_INT);
            String b2 = C8574s.m5091b();
            String str = "0";
            String str2 = this.f33291n == EnumC8559a.WEBVIEW ? "0" : "1";
            String str3 = e.f33349e ? "1" : "0";
            String str4 = e.f33348d ? "1" : "0";
            if (!((C8560k) MoatAnalytics.getInstance()).m5147b()) {
                str = "1";
            }
            hashMap.put("versionHash", "c334ae83accfebb8da23104450c896463c9cfab7");
            hashMap.put("appName", a);
            hashMap.put("namespace", "INM");
            hashMap.put("version", "2.5.0");
            hashMap.put("deviceOS", num);
            hashMap.put("isNative", str2);
            hashMap.put("appId", b);
            hashMap.put("source", c);
            hashMap.put("carrier", e.f33346b);
            hashMap.put("sim", e.f33345a);
            hashMap.put("phone", String.valueOf(e.f33347c));
            hashMap.put("buildFp", Build.FINGERPRINT);
            hashMap.put("buildModel", Build.MODEL);
            hashMap.put("buildMfg", Build.MANUFACTURER);
            hashMap.put("buildBrand", Build.BRAND);
            hashMap.put("buildProduct", Build.PRODUCT);
            hashMap.put("buildTags", Build.TAGS);
            hashMap.put("f1", str4);
            hashMap.put("f2", str3);
            hashMap.put("locationEnabled", str);
            if (b2 != null) {
                hashMap.put("aqzx", b2);
            }
            return new JSONObject(hashMap).toString();
        } catch (Exception e2) {
            return "{}";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m5151i() {
        C8571p.m5104a(3, "JavaScriptBridge", this, "Stopping metadata reporting loop");
        C8552i.m5194a().m5188a(this);
        C1134a.m34598a(C8574s.m5089c()).m34600a(this.f33292o);
    }

    /* renamed from: a */
    public void m5183a() {
        C8571p.m5104a(3, "JavaScriptBridge", this, "webViewReady");
        if (this.f33281d.compareAndSet(false, true)) {
            C8571p.m5104a(3, "JavaScriptBridge", this, "webViewReady first time");
            m5151i();
            for (String str : this.f33290m) {
                m5154g(str);
            }
            this.f33290m.clear();
        }
        m5170c();
    }

    /* renamed from: a */
    public void m5181a(AbstractC8537b bVar) {
        if (bVar != null) {
            C8571p.m5104a(3, "JavaScriptBridge", this, "adding tracker" + bVar.f33220e);
            this.f33286i.put(bVar, "");
        }
    }

    /* renamed from: a */
    public void m5177a(String str) {
        m5157f(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.crts(%s);}", str));
    }

    /* renamed from: a */
    public void m5176a(String str, JSONObject jSONObject) {
        if (this.f33284g) {
            C8571p.m5104a(3, "JavaScriptBridge", this, "Can't dispatch, already cleaned up");
            return;
        }
        String jSONObject2 = jSONObject.toString();
        if (!this.f33281d.get() || !m5159f()) {
            this.f33287j.add(jSONObject2);
        } else {
            m5154g(String.format("javascript:%s.dispatchEvent(%s);", str, jSONObject2));
        }
    }

    /* renamed from: b */
    public void m5175b() {
        C8571p.m5104a(3, "JavaScriptBridge", this, "Cleaning up");
        this.f33284g = true;
        m5151i();
        for (Map.Entry<AbstractC8537b, String> entry : this.f33286i.entrySet()) {
            m5165d(entry.getKey());
        }
        this.f33286i.clear();
        C1134a.m34598a(C8574s.m5089c()).m34600a(this.f33293p);
    }

    /* renamed from: b */
    public void m5174b(AbstractC8537b bVar) {
        if (m5163d("startTracking")) {
            C8571p.m5104a(3, "JavaScriptBridge", this, "Starting tracking on tracker" + bVar.f33220e);
            m5154g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.mqjh(\"%s\");}", bVar.f33220e));
            C8552i.m5194a().m5192a(C8574s.m5089c(), bVar);
        }
    }

    /* renamed from: b */
    public void m5171b(String str) {
        C8571p.m5104a(3, "JavaScriptBridge", this, "markUserInteractionEvent:" + str);
        m5157f(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.ucbx(%s);}", str));
    }

    /* renamed from: c */
    public void m5169c(AbstractC8537b bVar) {
        C8562m e = null;
        if (!this.f33284g) {
            try {
                e = null;
                if (m5163d("stopTracking")) {
                    try {
                        C8571p.m5104a(3, "JavaScriptBridge", this, "Ending tracking on tracker" + bVar.f33220e);
                        m5154g(String.format("javascript: if(typeof MoatMAK !== 'undefined'){MoatMAK.egpw(\"%s\");}", bVar.f33220e));
                        e = null;
                    } catch (Exception e2) {
                        C8571p.m5100a("JavaScriptBridge", this, "Failed to end impression.", e2);
                        e = null;
                    }
                }
            } catch (C8562m e3) {
                e = e3;
            }
            if (this.f33291n == EnumC8559a.NATIVE_DISPLAY) {
                m5165d(bVar);
            } else {
                m5175b();
            }
            this.f33286i.remove(bVar);
        }
        if (e != null) {
            throw e;
        }
    }

    /* renamed from: c */
    public void m5167c(String str) {
        C8571p.m5104a(3, "JavaScriptBridge", this, "flushDispatchQueue");
        if (this.f33287j.size() >= 200) {
            LinkedList linkedList = new LinkedList();
            for (int i = 0; i < 10; i++) {
                linkedList.addFirst(this.f33287j.removeFirst());
            }
            int min = Math.min(Math.min(this.f33287j.size() / 200, 10) + 200, this.f33287j.size());
            for (int i2 = 0; i2 < min; i2++) {
                this.f33287j.removeFirst();
            }
            Iterator it = linkedList.iterator();
            while (it.hasNext()) {
                this.f33287j.addFirst((String) it.next());
            }
        }
        if (!this.f33287j.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            String str2 = "";
            int i3 = 1;
            while (!this.f33287j.isEmpty() && i3 < 200) {
                i3++;
                String removeFirst = this.f33287j.removeFirst();
                if (sb.length() + removeFirst.length() > 2000) {
                    break;
                }
                sb.append(str2);
                sb.append(removeFirst);
                str2 = ",";
            }
            m5154g(String.format("javascript:%s.dispatchMany([%s])", str, sb.toString()));
        }
        this.f33287j.clear();
    }

    public void finalize() {
        try {
            super.finalize();
            C8571p.m5104a(3, "JavaScriptBridge", this, "finalize");
            m5175b();
        } catch (Exception e) {
            C8562m.m5135a(e);
        }
    }
}
