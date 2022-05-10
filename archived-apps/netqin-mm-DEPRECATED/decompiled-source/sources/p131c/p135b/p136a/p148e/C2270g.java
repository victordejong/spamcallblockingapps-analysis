package p131c.p135b.p136a.p148e;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.android.volley.Request;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.p483a.C6900e;
import com.applovin.impl.p483a.C6902j;
import com.applovin.impl.p483a.C6905k;
import com.applovin.impl.p483a.EnumC6899d;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.EventServiceImpl;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p489ad.C7030c;
import com.applovin.impl.sdk.p489ad.EnumC7029b;
import com.applovin.impl.sdk.p489ad.NativeAdImpl;
import com.applovin.impl.sdk.p489ad.RunnableC7032f;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.AppLovinNativeAdapter;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.nativeAds.AppLovinNativeAd;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.nativeAds.AppLovinNativeAdPrecacheListener;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.inmobi.ads.C8081af;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import com.mopub.common.FullAdType;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p137a.C2031a;
import p131c.p135b.p136a.p137a.C2032b;
import p131c.p135b.p136a.p137a.C2033c;
import p131c.p135b.p136a.p137a.C2036f;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2220m;
import p131c.p135b.p136a.p143d.p147e.C2167b;
import p131c.p135b.p136a.p143d.p147e.C2168c;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2345m;
import p131c.p135b.p136a.p148e.p149a.C2238c;
import p131c.p135b.p136a.p148e.p150c.C2245a;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p151e.C2260a;
import p131c.p135b.p136a.p148e.p151e.C2262c;
import p131c.p135b.p136a.p148e.p151e.C2263d;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p151e.C2268g;
import p131c.p135b.p136a.p148e.p152q.C2356a;
import p131c.p135b.p136a.p148e.p152q.C2360b;
import p131c.p135b.p136a.p148e.p152q.C2362c;
import p131c.p135b.p136a.p148e.p152q.C2368f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2418k;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2423p;
import p131c.p135b.p136a.p148e.p153y.C2429t;
import p131c.p135b.p136a.p148e.p153y.C2430u;
/* renamed from: c.b.a.e.g */
/* loaded from: classes-dex2jar.jar:c/b/a/e/g.class */
public class C2270g implements AppLovinBroadcastManager.Receiver {

    /* renamed from: a */
    public C2423p f8902a;

    /* renamed from: b */
    public final Object f8903b = new Object();

    /* renamed from: c */
    public final C2341l f8904c;

    /* renamed from: d */
    public final WeakReference<AbstractC2273b> f8905d;

    /* renamed from: e */
    public long f8906e;

    /* renamed from: c.b.a.e.g$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$a.class */
    public class RunnableC2271a implements Runnable {
        public RunnableC2271a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2270g.this.m30502h();
            AbstractC2273b bVar = (AbstractC2273b) C2270g.this.f8905d.get();
            if (bVar != null) {
                bVar.onAdRefresh();
            }
        }
    }

    /* renamed from: c.b.a.e.g$a0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$a0.class */
    public class C2272a0 extends AbstractRunnableC2278c implements AppLovinAdLoadListener {

        /* renamed from: f */
        public final JSONObject f8908f;

        /* renamed from: g */
        public final C2246b f8909g;

        /* renamed from: h */
        public final EnumC7029b f8910h;

        /* renamed from: i */
        public final AppLovinAdLoadListener f8911i;

        public C2272a0(JSONObject jSONObject, C2246b bVar, EnumC7029b bVar2, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super("TaskProcessAdResponse", lVar);
            if (jSONObject == null) {
                throw new IllegalArgumentException("No response specified");
            } else if (bVar != null) {
                this.f8908f = jSONObject;
                this.f8909g = bVar;
                this.f8910h = bVar2;
                this.f8911i = appLovinAdLoadListener;
            } else {
                throw new IllegalArgumentException("No zone specified");
            }
        }

        /* renamed from: a */
        public final void m30499a(int i) {
            AbstractC2426r.m29813a(this.f8911i, this.f8909g, i, this.f8916a);
        }

        /* renamed from: a */
        public final void m30498a(JSONObject jSONObject) {
            String b = C2390i.m29913b(jSONObject, "type", "undefined", this.f8916a);
            if ("applovin".equalsIgnoreCase(b)) {
                m30491a("Starting task for AppLovin ad...");
                this.f8916a.m30249j().m18827a(new C2279c0(jSONObject, this.f8908f, this.f8910h, this, this.f8916a));
            } else if (FullAdType.VAST.equalsIgnoreCase(b)) {
                m30491a("Starting task for VAST ad...");
                this.f8916a.m30249j().m18827a(AbstractC2274b0.m30494a(jSONObject, this.f8908f, this.f8910h, this, this.f8916a));
            } else {
                m30486c("Unable to process ad of unknown type: " + b);
                failedToReceiveAd(AppLovinErrorCodes.INVALID_RESPONSE);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            AppLovinAdLoadListener appLovinAdLoadListener = this.f8911i;
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(appLovinAd);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            m30499a(i);
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONArray b = C2390i.m29912b(this.f8908f, "ads", new JSONArray(), this.f8916a);
            if (b.length() > 0) {
                m30491a("Processing ad...");
                m30498a(C2390i.m29934a(b, 0, new JSONObject(), this.f8916a));
                return;
            }
            m30486c("No ads were returned from the server");
            AbstractC2426r.m29802a(this.f8909g.m30650a(), this.f8908f, this.f8916a);
            m30499a(204);
        }
    }

    /* renamed from: c.b.a.e.g$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$b.class */
    public interface AbstractC2273b {
        void onAdRefresh();
    }

    /* renamed from: c.b.a.e.g$b0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$b0.class */
    public abstract class AbstractC2274b0 extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final AppLovinAdLoadListener f8912f;

        /* renamed from: g */
        public final C2275a f8913g;

        /* renamed from: c.b.a.e.g$b0$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$b0$a.class */
        public static final class C2275a extends C2032b {
            public C2275a(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, C2341l lVar) {
                super(jSONObject, jSONObject2, bVar, lVar);
            }

            /* renamed from: a */
            public void m30493a(C2429t tVar) {
                if (tVar != null) {
                    this.f7928b.add(tVar);
                    return;
                }
                throw new IllegalArgumentException("No aggregated vast response specified");
            }
        }

        /* renamed from: c.b.a.e.g$b0$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$b0$b.class */
        public static final class C2276b extends AbstractC2274b0 {

            /* renamed from: h */
            public final JSONObject f8914h;

            public C2276b(C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
                super(bVar, appLovinAdLoadListener, lVar);
                if (appLovinAdLoadListener != null) {
                    this.f8914h = bVar.m31239c();
                    return;
                }
                throw new IllegalArgumentException("No callback specified.");
            }

            @Override // java.lang.Runnable
            public void run() {
                EnumC6899d dVar;
                m30491a("Processing SDK JSON response...");
                String b = C2390i.m29913b(this.f8914h, "xml", (String) null, this.f8916a);
                if (C2422o.m29851b(b)) {
                    if (b.length() < ((Integer) this.f8916a.m30291a(C2251d.C2256e.f8541G3)).intValue()) {
                        try {
                            m30497a(C2430u.m29754a(b, this.f8916a));
                            return;
                        } catch (Throwable th) {
                            m30490a("Unable to parse VAST response", th);
                        }
                    } else {
                        m30484d("VAST response is over max length");
                    }
                    dVar = EnumC6899d.XML_PARSING;
                } else {
                    m30484d("No VAST response received.");
                    dVar = EnumC6899d.NO_WRAPPER_RESPONSE;
                }
                m30495a(dVar);
            }
        }

        /* renamed from: c.b.a.e.g$b0$c */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$b0$c.class */
        public static final class C2277c extends AbstractC2274b0 {

            /* renamed from: h */
            public final C2429t f8915h;

            public C2277c(C2429t tVar, C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
                super(bVar, appLovinAdLoadListener, lVar);
                if (tVar == null) {
                    throw new IllegalArgumentException("No response specified.");
                } else if (bVar == null) {
                    throw new IllegalArgumentException("No context specified.");
                } else if (appLovinAdLoadListener != null) {
                    this.f8915h = tVar;
                } else {
                    throw new IllegalArgumentException("No callback specified.");
                }
            }

            @Override // java.lang.Runnable
            public void run() {
                m30491a("Processing VAST Wrapper response...");
                m30497a(this.f8915h);
            }
        }

        public AbstractC2274b0(C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super("TaskProcessVastResponse", lVar);
            if (bVar != null) {
                this.f8912f = appLovinAdLoadListener;
                this.f8913g = (C2275a) bVar;
                return;
            }
            throw new IllegalArgumentException("No context specified.");
        }

        /* renamed from: a */
        public static AbstractC2274b0 m30496a(C2429t tVar, C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            return new C2277c(tVar, bVar, appLovinAdLoadListener, lVar);
        }

        /* renamed from: a */
        public static AbstractC2274b0 m30494a(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            return new C2276b(new C2275a(jSONObject, jSONObject2, bVar, lVar), appLovinAdLoadListener, lVar);
        }

        /* renamed from: a */
        public void m30497a(C2429t tVar) {
            EnumC6899d dVar;
            AbstractRunnableC2278c cVar;
            int a = this.f8913g.m31241a();
            m30491a("Finished parsing XML at depth " + a);
            this.f8913g.m30493a(tVar);
            if (C2036f.m31221a(tVar)) {
                int intValue = ((Integer) this.f8916a.m30291a(C2251d.C2256e.f8546H3)).intValue();
                if (a < intValue) {
                    m30491a("VAST response is wrapper. Resolving...");
                    cVar = new C2283e(this.f8913g, this.f8912f, this.f8916a);
                    this.f8916a.m30249j().m18827a(cVar);
                }
                m30484d("Reached beyond max wrapper depth of " + intValue);
                dVar = EnumC6899d.WRAPPER_LIMIT_REACHED;
                m30495a(dVar);
            } else if (C2036f.m31210b(tVar)) {
                m30491a("VAST response is inline. Rendering ad...");
                cVar = new C2285e0(this.f8913g, this.f8912f, this.f8916a);
                this.f8916a.m30249j().m18827a(cVar);
            } else {
                m30484d("VAST response is an error");
                dVar = EnumC6899d.NO_WRAPPER_RESPONSE;
                m30495a(dVar);
            }
        }

        /* renamed from: a */
        public void m30495a(EnumC6899d dVar) {
            m30484d("Failed to process VAST response due to VAST error code " + dVar);
            C2036f.m31222a(this.f8913g, this.f8912f, dVar, -6, this.f8916a);
        }
    }

    /* renamed from: c.b.a.e.g$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$c.class */
    public abstract class AbstractRunnableC2278c implements Runnable {

        /* renamed from: a */
        public final C2341l f8916a;

        /* renamed from: b */
        public final String f8917b;

        /* renamed from: c */
        public final C2374t f8918c;

        /* renamed from: d */
        public final Context f8919d;

        /* renamed from: e */
        public final boolean f8920e;

        public AbstractRunnableC2278c(String str, C2341l lVar) {
            this(str, lVar, false);
        }

        public AbstractRunnableC2278c(String str, C2341l lVar, boolean z) {
            this.f8917b = str;
            this.f8916a = lVar;
            this.f8918c = lVar.m30262d0();
            this.f8919d = lVar.m30264d();
            this.f8920e = z;
        }

        /* renamed from: a */
        public C2341l m30492a() {
            return this.f8916a;
        }

        /* renamed from: a */
        public void m30491a(String str) {
            this.f8918c.m30044b(this.f8917b, str);
        }

        /* renamed from: a */
        public void m30490a(String str, Throwable th) {
            this.f8918c.m30043b(this.f8917b, str, th);
        }

        /* renamed from: b */
        public String m30489b() {
            return this.f8917b;
        }

        /* renamed from: b */
        public void m30488b(String str) {
            this.f8918c.m30042c(this.f8917b, str);
        }

        /* renamed from: c */
        public Context m30487c() {
            return this.f8919d;
        }

        /* renamed from: c */
        public void m30486c(String str) {
            this.f8918c.m30040d(this.f8917b, str);
        }

        /* renamed from: d */
        public void m30484d(String str) {
            this.f8918c.m30039e(this.f8917b, str);
        }

        /* renamed from: d */
        public boolean m30485d() {
            return this.f8920e;
        }
    }

    /* renamed from: c.b.a.e.g$c0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$c0.class */
    public class C2279c0 extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final JSONObject f8921f;

        /* renamed from: g */
        public final JSONObject f8922g;

        /* renamed from: h */
        public final AppLovinAdLoadListener f8923h;

        /* renamed from: i */
        public final EnumC7029b f8924i;

        public C2279c0(JSONObject jSONObject, JSONObject jSONObject2, EnumC7029b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super("TaskRenderAppLovinAd", lVar);
            this.f8921f = jSONObject;
            this.f8922g = jSONObject2;
            this.f8924i = bVar;
            this.f8923h = appLovinAdLoadListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            m30491a("Rendering ad...");
            C2245a aVar = new C2245a(this.f8921f, this.f8922g, this.f8924i, this.f8916a);
            boolean booleanValue = C2390i.m29928a(this.f8921f, "gs_load_immediately", (Boolean) false, this.f8916a).booleanValue();
            boolean booleanValue2 = C2390i.m29928a(this.f8921f, "vs_load_immediately", (Boolean) true, this.f8916a).booleanValue();
            C2301l lVar = new C2301l(aVar, this.f8916a, this.f8923h);
            lVar.m30419a(booleanValue2);
            lVar.m30418b(booleanValue);
            C7048s.EnumC7049a aVar2 = C7048s.EnumC7049a.CACHING_OTHER;
            C7048s.EnumC7049a aVar3 = aVar2;
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8763w0)).booleanValue()) {
                if (aVar.getSize() == AppLovinAdSize.INTERSTITIAL && aVar.getType() == AppLovinAdType.REGULAR) {
                    aVar3 = C7048s.EnumC7049a.CACHING_INTERSTITIAL;
                } else {
                    aVar3 = aVar2;
                    if (aVar.getSize() == AppLovinAdSize.INTERSTITIAL) {
                        aVar3 = aVar2;
                        if (aVar.getType() == AppLovinAdType.INCENTIVIZED) {
                            aVar3 = C7048s.EnumC7049a.CACHING_INCENTIVIZED;
                        }
                    }
                }
            }
            this.f8916a.m30249j().m18826a(lVar, aVar3);
        }
    }

    /* renamed from: c.b.a.e.g$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$d.class */
    public abstract class AbstractC2280d extends AbstractC2286f {

        /* renamed from: c.b.a.e.g$d$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$d$a.class */
        public class C2281a implements C2356a.AbstractC2359c<JSONObject> {
            public C2281a() {
            }

            @Override // p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                AbstractC2280d.this.mo30457a(i);
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo18838a(JSONObject jSONObject, int i) {
                AbstractC2280d.this.mo30460b(jSONObject);
            }
        }

        public AbstractC2280d(String str, C2341l lVar) {
            super(str, lVar);
        }

        /* renamed from: a */
        public final JSONObject m30483a(C2238c cVar) {
            JSONObject g = m30471g();
            C2390i.m29926a(g, "result", cVar.m30678b(), this.f8916a);
            Map<String, String> a = cVar.m30681a();
            if (a != null) {
                C2390i.m29923a(g, "params", new JSONObject(a), this.f8916a);
            }
            return g;
        }

        /* renamed from: b */
        public abstract void mo30460b(JSONObject jSONObject);

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: f */
        public int mo30450f() {
            return ((Integer) this.f8916a.m30291a(C2251d.C2256e.f8568M0)).intValue();
        }

        /* renamed from: h */
        public abstract C2238c mo30459h();

        /* renamed from: i */
        public abstract void mo30458i();

        @Override // java.lang.Runnable
        public void run() {
            C2238c h = mo30459h();
            if (h != null) {
                m30472a(m30483a(h), new C2281a());
            } else {
                mo30458i();
            }
        }
    }

    /* renamed from: c.b.a.e.g$d0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$d0.class */
    public class C2282d0 extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final AppLovinNativeAdLoadListener f8926f;

        /* renamed from: g */
        public final JSONObject f8927g;

        public C2282d0(JSONObject jSONObject, C2341l lVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            super("TaskRenderNativeAd", lVar);
            this.f8926f = appLovinNativeAdLoadListener;
            this.f8927g = jSONObject;
        }

        /* renamed from: a */
        public final String m30480a(String str, JSONObject jSONObject, String str2) {
            String str3 = null;
            String b = C2390i.m29913b(jSONObject, str, (String) null, this.f8916a);
            if (b != null) {
                str3 = b.replace("{CLCODE}", str2);
            }
            return str3;
        }

        /* renamed from: a */
        public final String m30478a(JSONObject jSONObject, String str, String str2) {
            String b = C2390i.m29913b(jSONObject, "click_url", (String) null, this.f8916a);
            String str3 = str2;
            if (str2 == null) {
                str3 = "";
            }
            return b.replace("{CLCODE}", str).replace("{EVENT_ID}", str3);
        }

        /* renamed from: a */
        public final void m30481a(int i) {
            try {
                if (this.f8926f != null) {
                    this.f8926f.onNativeAdsFailedToLoad(i);
                }
            } catch (Exception e) {
                m30490a("Unable to notify listener about failure.", e);
            }
        }

        /* renamed from: a */
        public final void m30479a(JSONObject jSONObject) {
            JSONArray b = C2390i.m29912b(jSONObject, "native_ads", new JSONArray(), this.f8916a);
            JSONObject b2 = C2390i.m29911b(jSONObject, "native_settings", new JSONObject(), this.f8916a);
            if (b.length() > 0) {
                ArrayList arrayList = new ArrayList(b.length());
                for (int i = 0; i < b.length(); i++) {
                    JSONObject a = C2390i.m29934a(b, i, (JSONObject) null, this.f8916a);
                    String b3 = C2390i.m29913b(a, "clcode", (String) null, this.f8916a);
                    String b4 = C2390i.m29913b(a, "event_id", "", this.f8916a);
                    String a2 = m30480a("simp_url", b2, b3);
                    String a3 = m30478a(b2, b3, b4);
                    List<C2260a> a4 = AbstractC2426r.m29801a("simp_urls", b2, b3, a2, this.f8916a);
                    List<C2260a> a5 = AbstractC2426r.m29800a("click_tracking_urls", b2, b3, C2386e.m29983a("{EVENT_ID}", b4), C2390i.m29928a(b2, "should_post_click_url", (Boolean) true, this.f8916a).booleanValue() ? a3 : null, this.f8916a);
                    if (a4.size() == 0) {
                        throw new IllegalArgumentException("No impression URL available");
                    } else if (a5.size() != 0) {
                        String b5 = C2390i.m29913b(a, "resource_cache_prefix", (String) null, this.f8916a);
                        List<String> a6 = C2422o.m29851b(b5) ? C2386e.m29982a(b5) : this.f8916a.m30275b(C2251d.C2256e.f8553J0);
                        NativeAdImpl.C7028b bVar = new NativeAdImpl.C7028b();
                        bVar.m19013a(C2246b.m30627h(this.f8916a));
                        bVar.m19004e(C2390i.m29913b(a, "title", (String) null, this.f8916a));
                        bVar.m19003f(C2390i.m29913b(a, "description", (String) null, this.f8916a));
                        bVar.m19002g(C2390i.m29913b(a, "caption", (String) null, this.f8916a));
                        bVar.m18993p(C2390i.m29913b(a, "cta", (String) null, this.f8916a));
                        bVar.m19011a(C2390i.m29913b(a, "icon_url", (String) null, this.f8916a));
                        bVar.m19009b(C2390i.m29913b(a, "image_url", (String) null, this.f8916a));
                        bVar.m19005d(C2390i.m29913b(a, BaseVideoPlayerActivity.VIDEO_URL, (String) null, this.f8916a));
                        bVar.m19007c(C2390i.m29913b(a, "star_rating_url", (String) null, this.f8916a));
                        bVar.m19001h(C2390i.m29913b(a, "icon_url", (String) null, this.f8916a));
                        bVar.m19000i(C2390i.m29913b(a, "image_url", (String) null, this.f8916a));
                        bVar.m18999j(C2390i.m29913b(a, BaseVideoPlayerActivity.VIDEO_URL, (String) null, this.f8916a));
                        bVar.m19015a(C2390i.m29931a(a, "star_rating", 5.0f, this.f8916a));
                        bVar.m18994o(b3);
                        bVar.m18998k(a3);
                        bVar.m18997l(a2);
                        bVar.m18996m(m30480a("video_start_url", b2, b3));
                        bVar.m18995n(m30480a("video_end_url", b2, b3));
                        bVar.m19010a(a4);
                        bVar.m19008b(a5);
                        bVar.m19014a(C2390i.m29929a(a, AppLovinNativeAdapter.KEY_EXTRA_AD_ID, 0L, this.f8916a));
                        bVar.m19006c(a6);
                        bVar.m19012a(this.f8916a);
                        NativeAdImpl a7 = bVar.m19016a();
                        arrayList.add(a7);
                        m30491a("Prepared native ad: " + a7.getAdId());
                    } else {
                        throw new IllegalArgumentException("No click tracking URL available");
                    }
                }
                AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f8926f;
                if (appLovinNativeAdLoadListener != null) {
                    appLovinNativeAdLoadListener.onNativeAdsLoaded(arrayList);
                    return;
                }
                return;
            }
            m30486c("No ads were returned from the server");
            this.f8926f.onNativeAdsFailedToLoad(204);
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONObject jSONObject = this.f8927g;
            if (jSONObject == null || jSONObject.length() <= 0) {
                m30484d("Attempting to run task with empty or null ad response");
                m30481a(204);
                return;
            }
            m30479a(this.f8927g);
        }
    }

    /* renamed from: c.b.a.e.g$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$e.class */
    public class C2283e extends AbstractRunnableC2278c {

        /* renamed from: f */
        public C2032b f8928f;

        /* renamed from: g */
        public final AppLovinAdLoadListener f8929g;

        /* renamed from: c.b.a.e.g$e$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$e$a.class */
        public class C2284a extends AbstractC2288f0<C2429t> {
            public C2284a(C2360b bVar, C2341l lVar) {
                super(bVar, lVar);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                m30484d("Unable to resolve VAST wrapper. Server returned " + i);
                C2283e.this.m30477a(i);
            }

            /* renamed from: a */
            public void mo18838a(C2429t tVar, int i) {
                this.f8916a.m30249j().m18827a(AbstractC2274b0.m30496a(tVar, C2283e.this.f8928f, C2283e.this.f8929g, C2283e.this.f8916a));
            }
        }

        public C2283e(C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super("TaskResolveVastWrapper", lVar);
            this.f8929g = appLovinAdLoadListener;
            this.f8928f = bVar;
        }

        /* renamed from: a */
        public final void m30477a(int i) {
            m30484d("Failed to resolve VAST wrapper due to error code " + i);
            if (i == -103) {
                AbstractC2426r.m29813a(this.f8929g, this.f8928f.m31235g(), i, this.f8916a);
            } else {
                C2036f.m31222a(this.f8928f, this.f8929g, i == -102 ? EnumC6899d.TIMED_OUT : EnumC6899d.GENERAL_WRAPPER_ERROR, i, this.f8916a);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            String a = C2036f.m31224a(this.f8928f);
            if (C2422o.m29851b(a)) {
                m30491a("Resolving VAST ad with depth " + this.f8928f.m31241a() + " at " + a);
                try {
                    this.f8916a.m30249j().m18827a(new C2284a(C2360b.m30174a(this.f8916a).mo30102a(a).mo30095b("GET").mo30103a((C2360b.C2361a) C2429t.f9354e).mo30105a(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8576N3)).intValue()).mo30097b(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8581O3)).intValue()).mo30099a(false).mo30106a(), this.f8916a));
                    return;
                } catch (Throwable th) {
                    m30490a("Unable to resolve VAST wrapper", th);
                }
            } else {
                m30484d("Resolving VAST failed. Could not find resolution URL");
            }
            m30477a(-1);
        }
    }

    /* renamed from: c.b.a.e.g$e0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$e0.class */
    public class C2285e0 extends AbstractRunnableC2278c {

        /* renamed from: f */
        public C2032b f8931f;

        /* renamed from: g */
        public final AppLovinAdLoadListener f8932g;

        public C2285e0(C2032b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super("TaskRenderVastAd", lVar);
            this.f8932g = appLovinAdLoadListener;
            this.f8931f = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            m30491a("Rendering VAST ad...");
            int size = this.f8931f.m31240b().size();
            HashSet hashSet = new HashSet(size);
            HashSet hashSet2 = new HashSet(size);
            String str = "";
            C2033c cVar = null;
            C6902j jVar = null;
            C2031a aVar = null;
            String str2 = "";
            for (C2429t tVar : this.f8931f.m31240b()) {
                C2429t c = tVar.m29761c(C2036f.m31221a(tVar) ? "Wrapper" : "InLine");
                if (c != null) {
                    C2429t c2 = c.m29761c("AdSystem");
                    C2033c cVar2 = cVar;
                    if (c2 != null) {
                        cVar2 = C2033c.m31232a(c2, cVar, this.f8916a);
                    }
                    String a = C2036f.m31220a(c, "AdTitle", str);
                    String a2 = C2036f.m31220a(c, "Description", str2);
                    C2036f.m31216a(c.m29765a("Impression"), hashSet, this.f8931f, this.f8916a);
                    C2429t b = c.m29763b("ViewableImpression");
                    if (b != null) {
                        C2036f.m31216a(b.m29765a("Viewable"), hashSet, this.f8931f, this.f8916a);
                    }
                    C2036f.m31216a(c.m29765a("Error"), hashSet2, this.f8931f, this.f8916a);
                    C2429t b2 = c.m29763b("Creatives");
                    str = a;
                    str2 = a2;
                    cVar = cVar2;
                    if (b2 != null) {
                        Iterator<C2429t> it = b2.m29760d().iterator();
                        C2031a aVar2 = aVar;
                        C6902j jVar2 = jVar;
                        while (true) {
                            str = a;
                            str2 = a2;
                            cVar = cVar2;
                            jVar = jVar2;
                            aVar = aVar2;
                            if (it.hasNext()) {
                                C2429t next = it.next();
                                C2429t b3 = next.m29763b("Linear");
                                if (b3 != null) {
                                    jVar2 = C6902j.m19417a(b3, jVar2, this.f8931f, this.f8916a);
                                } else {
                                    C2429t c3 = next.m29761c("CompanionAds");
                                    if (c3 != null) {
                                        C2429t c4 = c3.m29761c("Companion");
                                        if (c4 != null) {
                                            aVar2 = C2031a.m31245a(c4, aVar2, this.f8931f, this.f8916a);
                                        }
                                    } else {
                                        m30484d("Received and will skip rendering for an unidentified creative: " + next);
                                    }
                                }
                            }
                        }
                    }
                } else {
                    m30484d("Did not find wrapper or inline response for node: " + tVar);
                }
            }
            C6894a.C6898d Z0 = C6894a.m19457Z0();
            Z0.m19448a(this.f8916a);
            Z0.m19442a(this.f8931f.m31239c());
            Z0.m19438b(this.f8931f.m31238d());
            Z0.m19445a(this.f8931f.m31237e());
            Z0.m19451a(this.f8931f.m31236f());
            Z0.m19444a(str);
            Z0.m19440b(str2);
            Z0.m19449a(cVar);
            Z0.m19446a(jVar);
            Z0.m19450a(aVar);
            Z0.m19443a(hashSet);
            Z0.m19439b(hashSet2);
            C6894a a3 = Z0.m19452a();
            EnumC6899d a4 = C2036f.m31218a(a3);
            if (a4 == null) {
                C2306p pVar = new C2306p(a3, this.f8916a, this.f8932g);
                C7048s.EnumC7049a aVar3 = C7048s.EnumC7049a.CACHING_OTHER;
                C7048s.EnumC7049a aVar4 = aVar3;
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8763w0)).booleanValue()) {
                    if (a3.getType() == AppLovinAdType.REGULAR) {
                        aVar4 = C7048s.EnumC7049a.CACHING_INTERSTITIAL;
                    } else {
                        aVar4 = aVar3;
                        if (a3.getType() == AppLovinAdType.INCENTIVIZED) {
                            aVar4 = C7048s.EnumC7049a.CACHING_INCENTIVIZED;
                        }
                    }
                }
                this.f8916a.m30249j().m18826a(pVar, aVar4);
                return;
            }
            C2036f.m31222a(this.f8931f, this.f8932g, a4, -6, this.f8916a);
        }
    }

    /* renamed from: c.b.a.e.g$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$f.class */
    public abstract class AbstractC2286f extends AbstractRunnableC2278c {

        /* renamed from: c.b.a.e.g$f$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$f$a.class */
        public class C2287a extends AbstractC2288f0<JSONObject> {

            /* renamed from: l */
            public final /* synthetic */ C2356a.AbstractC2359c f8933l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C2287a(AbstractC2286f fVar, C2360b bVar, C2341l lVar, C2356a.AbstractC2359c cVar) {
                super(bVar, lVar);
                this.f8933l = cVar;
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                this.f8933l.mo18839a(i);
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                this.f8933l.mo18838a(jSONObject, i);
            }
        }

        public AbstractC2286f(String str, C2341l lVar) {
            super(str, lVar);
        }

        /* renamed from: a */
        public void mo30457a(int i) {
            C2389h.m29966a(i, this.f8916a);
        }

        /* renamed from: a */
        public abstract void mo30456a(JSONObject jSONObject);

        /* renamed from: a */
        public void m30472a(JSONObject jSONObject, C2356a.AbstractC2359c<JSONObject> cVar) {
            C2287a aVar = new C2287a(this, C2360b.m30174a(this.f8916a).mo30102a(C2389h.m29960a(mo30455e(), this.f8916a)).mo30091c(C2389h.m29953b(mo30455e(), this.f8916a)).mo30101a(C2389h.m29963a(this.f8916a)).mo30095b("POST").mo30100a(jSONObject).mo30103a((C2360b.C2361a) new JSONObject()).mo30105a(mo30450f()).mo30106a(), this.f8916a, cVar);
            aVar.m30469a(C2251d.C2256e.f8640b0);
            aVar.m30465b(C2251d.C2256e.f8646c0);
            this.f8916a.m30249j().m18827a(aVar);
        }

        /* renamed from: e */
        public abstract String mo30455e();

        /* renamed from: f */
        public abstract int mo30450f();

        /* renamed from: g */
        public JSONObject m30471g() {
            JSONObject jSONObject = new JSONObject();
            String Q = this.f8916a.m30305Q();
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8590Q2)).booleanValue() && C2422o.m29851b(Q)) {
                C2390i.m29926a(jSONObject, "cuid", Q, this.f8916a);
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8600S2)).booleanValue()) {
                C2390i.m29926a(jSONObject, "compass_random_token", this.f8916a.m30304R(), this.f8916a);
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8610U2)).booleanValue()) {
                C2390i.m29926a(jSONObject, "applovin_random_token", this.f8916a.m30303S(), this.f8916a);
            }
            mo30456a(jSONObject);
            return jSONObject;
        }
    }

    /* renamed from: c.b.a.e.g$f0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$f0.class */
    public abstract class AbstractC2288f0<T> extends AbstractRunnableC2278c implements C2356a.AbstractC2359c<T> {

        /* renamed from: f */
        public final C2360b<T> f8934f;

        /* renamed from: g */
        public final C2356a.AbstractC2359c<T> f8935g;

        /* renamed from: h */
        public C7048s.EnumC7049a f8936h;

        /* renamed from: i */
        public C2251d.C2256e<String> f8937i;

        /* renamed from: j */
        public C2251d.C2256e<String> f8938j;

        /* renamed from: k */
        public C2356a.C2357a f8939k;

        /* renamed from: c.b.a.e.g$f0$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$f0$a.class */
        public class C2289a implements C2356a.AbstractC2359c<T> {

            /* renamed from: a */
            public final /* synthetic */ C2341l f8940a;

            public C2289a(C2341l lVar) {
                this.f8940a = lVar;
            }

            @Override // p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                C2251d.C2256e eVar;
                AbstractC2288f0 f0Var;
                boolean z = false;
                boolean z2 = i < 200 || i >= 500;
                boolean z3 = i == 429;
                if (i != -103) {
                    z = true;
                }
                if (z && (z2 || z3)) {
                    String f = AbstractC2288f0.this.f8934f.m30167f();
                    if (AbstractC2288f0.this.f8934f.m30163j() > 0) {
                        AbstractC2288f0 f0Var2 = AbstractC2288f0.this;
                        f0Var2.m30486c("Unable to send request due to server failure (code " + i + "). " + AbstractC2288f0.this.f8934f.m30163j() + " attempts left, retrying in " + TimeUnit.MILLISECONDS.toSeconds(AbstractC2288f0.this.f8934f.m30161l()) + " seconds...");
                        int j = AbstractC2288f0.this.f8934f.m30163j() - 1;
                        AbstractC2288f0.this.f8934f.m30175a(j);
                        if (j == 0) {
                            AbstractC2288f0 f0Var3 = AbstractC2288f0.this;
                            f0Var3.m30463c(f0Var3.f8937i);
                            if (C2422o.m29851b(f) && f.length() >= 4) {
                                AbstractC2288f0.this.f8934f.m30173a(f);
                                AbstractC2288f0 f0Var4 = AbstractC2288f0.this;
                                f0Var4.m30488b("Switching to backup endpoint " + f);
                            }
                        }
                        C7048s j2 = this.f8940a.m30249j();
                        AbstractC2288f0 f0Var5 = AbstractC2288f0.this;
                        j2.m18825a(f0Var5, f0Var5.f8936h, AbstractC2288f0.this.f8934f.m30161l());
                        return;
                    }
                    if (f == null || !f.equals(AbstractC2288f0.this.f8934f.m30176a())) {
                        f0Var = AbstractC2288f0.this;
                        eVar = f0Var.f8937i;
                    } else {
                        f0Var = AbstractC2288f0.this;
                        eVar = f0Var.f8938j;
                    }
                    f0Var.m30463c(eVar);
                }
                AbstractC2288f0.this.mo18839a(i);
            }

            @Override // p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18838a(T t, int i) {
                AbstractC2288f0.this.f8934f.m30175a(0);
                AbstractC2288f0.this.mo18838a((AbstractC2288f0) t, i);
            }
        }

        public AbstractC2288f0(C2360b<T> bVar, C2341l lVar) {
            this(bVar, lVar, false);
        }

        public AbstractC2288f0(C2360b<T> bVar, C2341l lVar, boolean z) {
            super("TaskRepeatRequest", lVar, z);
            this.f8936h = C7048s.EnumC7049a.BACKGROUND;
            this.f8937i = null;
            this.f8938j = null;
            if (bVar != null) {
                this.f8934f = bVar;
                this.f8939k = new C2356a.C2357a();
                this.f8935g = new C2289a(lVar);
                return;
            }
            throw new IllegalArgumentException("No request specified");
        }

        /* renamed from: a */
        public abstract void mo18839a(int i);

        /* renamed from: a */
        public void m30469a(C2251d.C2256e<String> eVar) {
            this.f8937i = eVar;
        }

        /* renamed from: a */
        public void m30466a(C7048s.EnumC7049a aVar) {
            this.f8936h = aVar;
        }

        /* renamed from: a */
        public abstract void mo18838a(T t, int i);

        /* renamed from: b */
        public void m30465b(C2251d.C2256e<String> eVar) {
            this.f8938j = eVar;
        }

        /* renamed from: c */
        public final <ST> void m30463c(C2251d.C2256e<ST> eVar) {
            if (eVar != null) {
                C2251d.C2257f c = m30492a().m30268c();
                c.m30591a((C2251d.C2256e<?>) eVar, (Object) eVar.m30595b());
                c.m30587b();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            int i;
            C2356a i2 = m30492a().m30251i();
            if (!m30492a().m30311K() && !m30492a().m30310L()) {
                m30484d("AppLovin SDK is disabled: please check your connection");
                C2374t.m30034j(AppLovinSdk.TAG, "AppLovin SDK is disabled: please check your connection");
                i = -22;
            } else if (!C2422o.m29851b(this.f8934f.m30176a()) || this.f8934f.m30176a().length() < 4) {
                m30484d("Task has an invalid or null request endpoint.");
                i = AppLovinErrorCodes.INVALID_URL;
            } else {
                if (TextUtils.isEmpty(this.f8934f.m30172b())) {
                    this.f8934f.m30171b(this.f8934f.m30168e() != null ? "POST" : "GET");
                }
                i2.m30194a(this.f8934f, this.f8939k, this.f8935g);
                return;
            }
            mo18839a(i);
        }
    }

    /* renamed from: c.b.a.e.g$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$g.class */
    public class C2290g extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final Runnable f8942f;

        public C2290g(C2341l lVar, Runnable runnable) {
            this(lVar, false, runnable);
        }

        public C2290g(C2341l lVar, boolean z, Runnable runnable) {
            super("TaskRunnable", lVar, z);
            this.f8942f = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8942f.run();
        }
    }

    /* renamed from: c.b.a.e.g$g0 */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$g0.class */
    public class C2291g0 extends AbstractC2280d {

        /* renamed from: f */
        public final AbstractC7036g f8943f;

        public C2291g0(AbstractC7036g gVar, C2341l lVar) {
            super("TaskReportAppLovinReward", lVar);
            this.f8943f = gVar;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30457a(int i) {
            super.mo30457a(i);
            m30484d("Failed to report reward for ad: " + this.f8943f + " - error code: " + i);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30456a(JSONObject jSONObject) {
            C2390i.m29926a(jSONObject, "zone_id", this.f8943f.getAdZone().m30650a(), this.f8916a);
            C2390i.m29930a(jSONObject, "fire_percent", this.f8943f.m18903e0(), this.f8916a);
            String clCode = this.f8943f.getClCode();
            if (!C2422o.m29851b(clCode)) {
                clCode = "NO_CLCODE";
            }
            C2390i.m29926a(jSONObject, "clcode", clCode, this.f8916a);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2280d
        /* renamed from: b */
        public void mo30460b(JSONObject jSONObject) {
            m30491a("Reported reward successfully for ad: " + this.f8943f);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: e */
        public String mo30455e() {
            return "2.0/cr";
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2280d
        /* renamed from: h */
        public C2238c mo30459h() {
            return this.f8943f.m18941P();
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2280d
        /* renamed from: i */
        public void mo30458i() {
            m30484d("No reward result was found for ad: " + this.f8943f);
        }
    }

    /* renamed from: c.b.a.e.g$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$h.class */
    public class C2292h extends AbstractC2293i {

        /* renamed from: f */
        public final AbstractC7036g f8944f;

        /* renamed from: g */
        public final AppLovinAdRewardListener f8945g;

        public C2292h(AbstractC7036g gVar, AppLovinAdRewardListener appLovinAdRewardListener, C2341l lVar) {
            super("TaskValidateAppLovinReward", lVar);
            this.f8944f = gVar;
            this.f8945g = appLovinAdRewardListener;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30457a(int i) {
            String str;
            super.mo30457a(i);
            if (i < 400 || i >= 500) {
                this.f8945g.validationRequestFailed(this.f8944f, i);
                str = "network_timeout";
            } else {
                this.f8945g.userRewardRejected(this.f8944f, Collections.emptyMap());
                str = "rejected";
            }
            this.f8944f.m18925a(C2238c.m30680a(str));
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2293i
        /* renamed from: a */
        public void mo30454a(C2238c cVar) {
            this.f8944f.m18925a(cVar);
            String b = cVar.m30678b();
            Map<String, String> a = cVar.m30681a();
            if (b.equals("accepted")) {
                this.f8945g.userRewardVerified(this.f8944f, a);
            } else if (b.equals("quota_exceeded")) {
                this.f8945g.userOverQuota(this.f8944f, a);
            } else if (b.equals("rejected")) {
                this.f8945g.userRewardRejected(this.f8944f, a);
            } else {
                this.f8945g.validationRequestFailed(this.f8944f, AppLovinErrorCodes.INCENTIVIZED_UNKNOWN_SERVER_ERROR);
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30456a(JSONObject jSONObject) {
            C2390i.m29926a(jSONObject, "zone_id", this.f8944f.getAdZone().m30650a(), this.f8916a);
            String clCode = this.f8944f.getClCode();
            if (!C2422o.m29851b(clCode)) {
                clCode = "NO_CLCODE";
            }
            C2390i.m29926a(jSONObject, "clcode", clCode, this.f8916a);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: e */
        public String mo30455e() {
            return "2.0/vr";
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2293i
        /* renamed from: h */
        public boolean mo30449h() {
            return this.f8944f.m18943N();
        }
    }

    /* renamed from: c.b.a.e.g$i */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$i.class */
    public abstract class AbstractC2293i extends AbstractC2286f {

        /* renamed from: c.b.a.e.g$i$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$i$a.class */
        public class C2294a implements C2356a.AbstractC2359c<JSONObject> {
            public C2294a() {
            }

            @Override // p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                if (!AbstractC2293i.this.mo30449h()) {
                    AbstractC2293i.this.mo30457a(i);
                }
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo18838a(JSONObject jSONObject, int i) {
                if (!AbstractC2293i.this.mo30449h()) {
                    AbstractC2293i.this.m30452b(jSONObject);
                }
            }
        }

        public AbstractC2293i(String str, C2341l lVar) {
            super(str, lVar);
        }

        /* renamed from: a */
        public abstract void mo30454a(C2238c cVar);

        /* renamed from: b */
        public final void m30452b(JSONObject jSONObject) {
            C2238c c = m30451c(jSONObject);
            if (c != null) {
                mo30454a(c);
            }
        }

        /* renamed from: c */
        public final C2238c m30451c(JSONObject jSONObject) {
            String str;
            try {
                JSONObject a = C2389h.m29958a(jSONObject);
                C2389h.m29952b(a, this.f8916a);
                C2389h.m29957a(jSONObject, this.f8916a);
                Map<String, String> a2 = C2390i.m29933a((JSONObject) a.get("params"));
                try {
                    str = a.getString("result");
                } catch (Throwable th) {
                    str = "network_timeout";
                }
                return C2238c.m30679a(str, a2);
            } catch (JSONException e) {
                m30490a("Unable to parse API response", e);
                return null;
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: f */
        public int mo30450f() {
            return ((Integer) this.f8916a.m30291a(C2251d.C2256e.f8563L0)).intValue();
        }

        /* renamed from: h */
        public abstract boolean mo30449h();

        @Override // java.lang.Runnable
        public void run() {
            m30472a(m30471g(), new C2294a());
        }
    }

    /* renamed from: c.b.a.e.g$j */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$j.class */
    public class C2295j extends AbstractRunnableC2278c {

        /* renamed from: c.b.a.e.g$j$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$j$a.class */
        public class C2296a extends AbstractC2288f0<JSONObject> {
            public C2296a(C2360b bVar, C2341l lVar) {
                super(bVar, lVar);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                C2389h.m29966a(i, this.f8916a);
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                C2295j.this.m30446a(jSONObject);
            }
        }

        public C2295j(C2341l lVar) {
            super("TaskApiSubmitData", lVar);
        }

        /* renamed from: a */
        public final void m30446a(JSONObject jSONObject) {
            try {
                this.f8916a.m30245n().m30531c();
                JSONObject a = C2389h.m29958a(jSONObject);
                this.f8916a.m30268c().m30591a(C2251d.C2256e.f8675h, a.getString("device_id"));
                this.f8916a.m30268c().m30591a(C2251d.C2256e.f8681i, a.getString("device_token"));
                this.f8916a.m30268c().m30591a(C2251d.C2256e.f8687j, Long.valueOf(a.getLong("publisher_id")));
                this.f8916a.m30268c().m30587b();
                C2389h.m29952b(a, this.f8916a);
                C2389h.m29948d(a, this.f8916a);
                String b = C2390i.m29913b(a, "latest_version", "", this.f8916a);
                if (!TextUtils.isEmpty(b) && !AppLovinSdk.VERSION.equals(b)) {
                    String str = "Current SDK version (" + AppLovinSdk.VERSION + ") is outdated. Please integrate the latest version of the AppLovin SDK (" + b + "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features.";
                    String str2 = str;
                    if (C2390i.m29932a(a, "sdk_update_message")) {
                        str2 = C2390i.m29913b(a, "sdk_update_message", str, this.f8916a);
                    }
                    C2374t.m30035i(AppLovinSdk.TAG, str2);
                }
                this.f8916a.m30248k().m30520b();
            } catch (Throwable th) {
                m30490a("Unable to parse API response", th);
            }
        }

        /* renamed from: b */
        public final void m30445b(JSONObject jSONObject) throws JSONException {
            C2345m m = this.f8916a.m30246m();
            C2345m.C2348c c = m.m30223c();
            C2345m.C2350e b = m.m30225b();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("model", b.f9122d);
            jSONObject2.put("os", b.f9120b);
            jSONObject2.put("brand", b.f9123e);
            jSONObject2.put("brand_name", b.f9124f);
            jSONObject2.put("hardware", b.f9125g);
            jSONObject2.put("sdk_version", b.f9121c);
            jSONObject2.put("revision", b.f9126h);
            jSONObject2.put("adns", b.f9131m);
            jSONObject2.put("adnsd", b.f9132n);
            jSONObject2.put("xdpi", String.valueOf(b.f9133o));
            jSONObject2.put("ydpi", String.valueOf(b.f9134p));
            jSONObject2.put("screen_size_in", String.valueOf(b.f9135q));
            jSONObject2.put("gy", C2422o.m29853a(b.f9103B));
            jSONObject2.put("country_code", b.f9127i);
            jSONObject2.put("carrier", b.f9128j);
            jSONObject2.put("orientation_lock", b.f9130l);
            jSONObject2.put("tz_offset", b.f9136r);
            jSONObject2.put("aida", String.valueOf(b.f9115N));
            jSONObject2.put("adr", C2422o.m29853a(b.f9138t));
            jSONObject2.put("wvvc", b.f9137s);
            jSONObject2.put(AvidVideoPlaybackListenerImpl.VOLUME, b.f9142x);
            jSONObject2.put("sb", b.f9143y);
            jSONObject2.put("type", "android");
            jSONObject2.put("sim", C2422o.m29853a(b.f9102A));
            jSONObject2.put("is_tablet", C2422o.m29853a(b.f9104C));
            jSONObject2.put("lpm", b.f9107F);
            jSONObject2.put("tv", C2422o.m29853a(b.f9105D));
            jSONObject2.put("vs", C2422o.m29853a(b.f9106E));
            jSONObject2.put("fs", b.f9109H);
            jSONObject2.put("tds", b.f9110I);
            jSONObject2.put("fm", String.valueOf(b.f9111J.f9146b));
            jSONObject2.put("tm", String.valueOf(b.f9111J.f9145a));
            jSONObject2.put("lmt", String.valueOf(b.f9111J.f9147c));
            jSONObject2.put("lm", String.valueOf(b.f9111J.f9148d));
            jSONObject2.put(C8081af.f31598d, String.valueOf(b.f9140v));
            jSONObject2.put("font", String.valueOf(b.f9141w));
            jSONObject2.put("bt_ms", String.valueOf(b.f9118Q));
            m30441f(jSONObject2);
            Boolean bool = b.f9112K;
            if (bool != null) {
                jSONObject2.put("huc", bool.toString());
            }
            Boolean bool2 = b.f9113L;
            if (bool2 != null) {
                jSONObject2.put("aru", bool2.toString());
            }
            Boolean bool3 = b.f9114M;
            if (bool3 != null) {
                jSONObject2.put("dns", bool3.toString());
            }
            C2345m.C2349d dVar = b.f9139u;
            if (dVar != null) {
                jSONObject2.put("act", dVar.f9100a);
                jSONObject2.put("acm", dVar.f9101b);
            }
            String str = b.f9144z;
            if (C2422o.m29851b(str)) {
                jSONObject2.put("ua", C2422o.m29847e(str));
            }
            String str2 = b.f9108G;
            if (!TextUtils.isEmpty(str2)) {
                jSONObject2.put("so", C2422o.m29847e(str2));
            }
            Locale locale = b.f9129k;
            if (locale != null) {
                jSONObject2.put("locale", C2422o.m29847e(locale.toString()));
            }
            float f = b.f9116O;
            if (f > 0.0f) {
                jSONObject2.put("da", f);
            }
            float f2 = b.f9117P;
            if (f2 > 0.0f) {
                jSONObject2.put("dm", f2);
            }
            jSONObject.put("device_info", jSONObject2);
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("package_name", c.f9093c);
            jSONObject3.put("installer_name", c.f9094d);
            jSONObject3.put("app_name", c.f9091a);
            jSONObject3.put("app_version", c.f9092b);
            jSONObject3.put("installed_at", c.f9098h);
            jSONObject3.put("tg", c.f9095e);
            jSONObject3.put("ltg", c.f9096f);
            jSONObject3.put("applovin_sdk_version", AppLovinSdk.VERSION);
            jSONObject3.put("first_install", String.valueOf(this.f8916a.m30255g()));
            jSONObject3.put("first_install_v2", String.valueOf(!this.f8916a.m30253h()));
            jSONObject3.put("test_ads", c.f9099i);
            jSONObject3.put("debug", Boolean.toString(c.f9097g));
            String str3 = (String) this.f8916a.m30291a(C2251d.C2256e.f8620W2);
            if (C2422o.m29851b(str3)) {
                jSONObject3.put("plugin_version", str3);
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8585P2)).booleanValue() && C2422o.m29851b(this.f8916a.m30305Q())) {
                jSONObject3.put("cuid", this.f8916a.m30305Q());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8600S2)).booleanValue()) {
                jSONObject3.put("compass_random_token", this.f8916a.m30304R());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8610U2)).booleanValue()) {
                jSONObject3.put("applovin_random_token", this.f8916a.m30303S());
            }
            jSONObject.put("app_info", jSONObject3);
        }

        /* renamed from: c */
        public final void m30444c(JSONObject jSONObject) throws JSONException {
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8766w3)).booleanValue()) {
                jSONObject.put("stats", this.f8916a.m30248k().m30517c());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8735r)).booleanValue()) {
                JSONObject b = C2362c.m30153b(m30487c());
                if (b.length() > 0) {
                    jSONObject.put("network_response_codes", b);
                }
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8741s)).booleanValue()) {
                    C2362c.m30156a(m30487c());
                }
            }
        }

        /* renamed from: d */
        public final void m30443d(JSONObject jSONObject) throws JSONException {
            JSONArray a;
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8521C3)).booleanValue() && (a = this.f8916a.m30245n().m30534a()) != null && a.length() > 0) {
                jSONObject.put("errors", a);
            }
        }

        /* renamed from: e */
        public final void m30442e(JSONObject jSONObject) {
            C2296a aVar = new C2296a(C2360b.m30174a(this.f8916a).mo30102a(C2389h.m29960a("2.0/device", this.f8916a)).mo30091c(C2389h.m29953b("2.0/device", this.f8916a)).mo30101a(C2389h.m29963a(this.f8916a)).mo30095b("POST").mo30100a(jSONObject).mo30103a((C2360b.C2361a) new JSONObject()).mo30105a(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8775y2)).intValue()).mo30106a(), this.f8916a);
            aVar.m30469a(C2251d.C2256e.f8640b0);
            aVar.m30465b(C2251d.C2256e.f8646c0);
            this.f8916a.m30249j().m18827a(aVar);
        }

        /* renamed from: f */
        public final void m30441f(JSONObject jSONObject) {
            try {
                C2345m.C2347b d = this.f8916a.m30246m().m30221d();
                String str = d.f9090b;
                if (C2422o.m29851b(str)) {
                    jSONObject.put("idfa", str);
                }
                jSONObject.put("dnt", Boolean.toString(d.f9089a));
            } catch (Throwable th) {
                m30490a("Failed to populate advertising info", th);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                m30488b("Submitting user data...");
                JSONObject jSONObject = new JSONObject();
                m30445b(jSONObject);
                m30444c(jSONObject);
                m30443d(jSONObject);
                m30442e(jSONObject);
            } catch (JSONException e) {
                m30490a("Unable to build JSON message with collected data", e);
            }
        }
    }

    /* renamed from: c.b.a.e.g$k */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$k.class */
    public abstract class AbstractC2297k extends AbstractRunnableC2278c implements C2220m.AbstractC2221a {

        /* renamed from: f */
        public final AbstractC7036g f8948f;

        /* renamed from: g */
        public AppLovinAdLoadListener f8949g;

        /* renamed from: h */
        public final C2370r f8950h;

        /* renamed from: i */
        public final Collection<Character> f8951i;

        /* renamed from: j */
        public final C2263d f8952j;

        /* renamed from: k */
        public boolean f8953k;

        /* renamed from: c.b.a.e.g$k$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$k$a.class */
        public class C2298a implements C2356a.AbstractC2359c<String> {

            /* renamed from: a */
            public final /* synthetic */ AtomicReference f8954a;

            /* renamed from: b */
            public final /* synthetic */ String f8955b;

            public C2298a(AtomicReference atomicReference, String str) {
                this.f8954a = atomicReference;
                this.f8955b = str;
            }

            @Override // p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                AbstractC2297k kVar = AbstractC2297k.this;
                kVar.m30484d("Failed to load resource from '" + this.f8955b + "'");
            }

            /* renamed from: a  reason: avoid collision after fix types in other method */
            public void mo18838a(String str, int i) {
                this.f8954a.set(str);
            }
        }

        /* renamed from: c.b.a.e.g$k$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$k$b.class */
        public class RunnableC2299b implements Runnable {
            public RunnableC2299b() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (AbstractC2297k.this.f8949g != null) {
                    AbstractC2426r.m29813a(AbstractC2297k.this.f8949g, AbstractC2297k.this.f8948f.getAdZone(), (int) AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES, AbstractC2297k.this.f8916a);
                    AbstractC2297k.this.f8949g = null;
                }
            }
        }

        /* renamed from: c.b.a.e.g$k$c */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$k$c.class */
        public class RunnableC2300c implements Runnable {
            public RunnableC2300c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (AbstractC2297k.this.f8949g != null) {
                    AbstractC2297k.this.f8949g.adReceived(AbstractC2297k.this.f8948f);
                    AbstractC2297k.this.f8949g = null;
                }
            }
        }

        public AbstractC2297k(String str, AbstractC7036g gVar, C2341l lVar, AppLovinAdLoadListener appLovinAdLoadListener) {
            super(str, lVar);
            if (gVar != null) {
                this.f8948f = gVar;
                this.f8949g = appLovinAdLoadListener;
                this.f8950h = lVar.m30239t();
                this.f8951i = mo30405j();
                this.f8952j = new C2263d();
                return;
            }
            throw new IllegalArgumentException("No ad specified.");
        }

        /* renamed from: a */
        public final Uri m30439a(Uri uri, String str) {
            StringBuilder sb;
            String str2;
            if (uri != null) {
                String uri2 = uri.toString();
                if (C2422o.m29851b(uri2)) {
                    m30491a("Caching " + str + " image...");
                    return m30424g(uri2);
                }
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Failed to cache ");
                sb2.append(str);
                str2 = " image";
                sb = sb2;
            } else {
                StringBuilder sb3 = new StringBuilder();
                sb3.append("No ");
                sb3.append(str);
                str2 = " image to cache";
                sb = sb3;
            }
            sb.append(str2);
            m30491a(sb.toString());
            return null;
        }

        /* renamed from: a */
        public final Uri m30434a(String str, String str2) {
            StringBuilder sb;
            String replace = str2.replace("/", "_");
            String l = this.f8948f.m18888l();
            String str3 = replace;
            if (C2422o.m29851b(l)) {
                str3 = l + replace;
            }
            File a = this.f8950h.m30070a(str3, this.f8916a.m30264d());
            if (a == null) {
                return null;
            }
            if (a.exists()) {
                this.f8952j.m30541b(a.length());
                sb = new StringBuilder();
            } else {
                if (!this.f8950h.m30072a(a, str + str2, Arrays.asList(str), this.f8952j)) {
                    return null;
                }
                sb = new StringBuilder();
            }
            sb.append("file://");
            sb.append(a.getAbsolutePath());
            return Uri.parse(sb.toString());
        }

        /* renamed from: a */
        public Uri m30431a(String str, List<String> list, boolean z) {
            String str2;
            if (!C2422o.m29851b(str)) {
                return null;
            }
            m30491a("Caching video " + str + "...");
            String a = this.f8950h.m30076a(m30487c(), str, this.f8948f.m18888l(), list, z, this.f8952j);
            if (C2422o.m29851b(a)) {
                File a2 = this.f8950h.m30070a(a, m30487c());
                if (a2 != null) {
                    Uri fromFile = Uri.fromFile(a2);
                    if (fromFile != null) {
                        m30491a("Finish caching video for ad #" + this.f8948f.getAdIdNumber() + ". Updating ad with cachedVideoFilename = " + a);
                        return fromFile;
                    }
                    str2 = "Unable to create URI from cached video file = " + a2;
                } else {
                    str2 = "Unable to cache video = " + str + "Video file was missing or null";
                }
            } else if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8548I0)).booleanValue()) {
                m30484d("Failed to cache video");
                m30423h();
                return null;
            } else {
                str2 = "Failed to cache video, but not failing ad load";
            }
            m30484d(str2);
            return null;
        }

        /* renamed from: a */
        public String m30433a(String str, List<String> list) {
            if (!C2422o.m29851b(str)) {
                return null;
            }
            Uri parse = Uri.parse(str);
            if (parse == null) {
                m30491a("Nothing to cache, skipping...");
                return null;
            }
            String lastPathSegment = parse.getLastPathSegment();
            String str2 = lastPathSegment;
            if (C2422o.m29851b(this.f8948f.m18888l())) {
                str2 = this.f8948f.m18888l() + lastPathSegment;
            }
            File a = this.f8950h.m30070a(str2, m30487c());
            ByteArrayOutputStream a2 = (a == null || !a.exists()) ? null : this.f8950h.m30073a(a);
            if (a2 == null) {
                ByteArrayOutputStream a3 = this.f8950h.m30069a(str, list, true);
                a2 = a3;
                if (a3 != null) {
                    this.f8950h.m30074a(a3, a);
                    this.f8952j.m30543a(a3.size());
                    a2 = a3;
                }
            } else {
                this.f8952j.m30541b(a2.size());
            }
            try {
                return a2.toString(Request.DEFAULT_PARAMS_ENCODING);
            } catch (UnsupportedEncodingException e) {
                m30490a("UTF-8 encoding not supported.", e);
                return null;
            } catch (Throwable th) {
                m30490a("String resource at " + str + " failed to load.", th);
                return null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x003d, code lost:
            continue;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String m30432a(java.lang.String r6, java.util.List<java.lang.String> r7, com.applovin.impl.sdk.p489ad.AbstractC7036g r8) {
            /*
                Method dump skipped, instructions count: 346
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.C2270g.AbstractC2297k.m30432a(java.lang.String, java.util.List, com.applovin.impl.sdk.ad.g):java.lang.String");
        }

        @Override // p131c.p135b.p136a.p143d.C2220m.AbstractC2221a
        /* renamed from: a */
        public void mo30438a(C2135c.AbstractC2137b bVar) {
            if (bVar.mo30882l().equalsIgnoreCase(this.f8948f.m18880p())) {
                m30484d("Updating flag for timeout...");
                this.f8953k = true;
            }
            this.f8916a.m30295a().m30717b(this);
        }

        /* renamed from: a */
        public void m30435a(AppLovinAdBase appLovinAdBase) {
            C2262c.m30555a(this.f8952j, appLovinAdBase, this.f8916a);
        }

        /* renamed from: b */
        public Uri m30430b(String str, List<String> list, boolean z) {
            String str2;
            try {
                String a = this.f8950h.m30076a(m30487c(), str, this.f8948f.m18888l(), list, z, this.f8952j);
                if (!C2422o.m29851b(a)) {
                    return null;
                }
                File a2 = this.f8950h.m30070a(a, m30487c());
                if (a2 != null) {
                    Uri fromFile = Uri.fromFile(a2);
                    if (fromFile != null) {
                        return fromFile;
                    }
                    str2 = "Unable to extract Uri from image file";
                } else {
                    str2 = "Unable to retrieve File from cached image filename = " + a;
                }
                m30484d(str2);
                return null;
            } catch (Throwable th) {
                m30490a("Failed to cache image at url = " + str, th);
                return null;
            }
        }

        /* renamed from: e */
        public Uri m30428e(String str) {
            return m30431a(str, this.f8948f.m18890k(), true);
        }

        /* renamed from: e */
        public void m30429e() {
            this.f8916a.m30295a().m30717b(this);
        }

        /* renamed from: f */
        public String m30426f(String str) {
            if (!C2422o.m29851b(str)) {
                return null;
            }
            C2360b a = C2360b.m30174a(this.f8916a).mo30102a(str).mo30095b("GET").mo30103a((C2360b.C2361a) "").mo30105a(0).mo30106a();
            AtomicReference atomicReference = new AtomicReference(null);
            this.f8916a.m30251i().m30194a(a, new C2356a.C2357a(), new C2298a(atomicReference, str));
            String str2 = (String) atomicReference.get();
            if (str2 != null) {
                this.f8952j.m30543a(str2.length());
            }
            return str2;
        }

        /* renamed from: f */
        public boolean m30427f() {
            return this.f8953k;
        }

        /* renamed from: g */
        public final Uri m30424g(String str) {
            return m30430b(str, this.f8948f.m18890k(), true);
        }

        /* renamed from: g */
        public void m30425g() {
            m30491a("Caching mute images...");
            Uri a = m30439a(this.f8948f.m18945L(), "mute");
            if (a != null) {
                this.f8948f.m18918b(a);
            }
            Uri a2 = m30439a(this.f8948f.m18944M(), "unmute");
            if (a2 != null) {
                this.f8948f.m18912c(a2);
            }
            m30491a("Ad updated with muteImageFilename = " + this.f8948f.m18945L() + ", unmuteImageFilename = " + this.f8948f.m18944M());
        }

        /* renamed from: h */
        public void m30423h() {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2299b());
        }

        /* renamed from: i */
        public void m30422i() {
            m30491a("Rendered new ad:" + this.f8948f);
            AppLovinSdkUtils.runOnUiThread(new RunnableC2300c());
        }

        /* renamed from: j */
        public final Collection<Character> mo30405j() {
            HashSet hashSet = new HashSet();
            for (char c : ((String) this.f8916a.m30291a(C2251d.C2256e.f8533F0)).toCharArray()) {
                hashSet.add(Character.valueOf(c));
            }
            hashSet.add('\"');
            return hashSet;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f8948f.m18882o()) {
                m30491a("Subscribing to timeout events...");
                this.f8916a.m30295a().m30718a(this);
            }
        }
    }

    /* renamed from: c.b.a.e.g$l */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$l.class */
    public class C2301l extends AbstractC2297k {

        /* renamed from: l */
        public final C2245a f8959l;

        /* renamed from: m */
        public boolean f8960m;

        /* renamed from: n */
        public boolean f8961n;

        /* renamed from: c.b.a.e.g$l$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$l$a.class */
        public class RunnableC2302a implements Runnable {
            public RunnableC2302a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2301l.this.mo30405j();
            }
        }

        public C2301l(C2245a aVar, C2341l lVar, AppLovinAdLoadListener appLovinAdLoadListener) {
            super("TaskCacheAppLovinAd", aVar, lVar, appLovinAdLoadListener);
            this.f8959l = aVar;
        }

        /* renamed from: a */
        public void m30419a(boolean z) {
            this.f8960m = z;
        }

        /* renamed from: b */
        public void m30418b(boolean z) {
            this.f8961n = z;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2297k
        /* renamed from: j */
        public final void mo30405j() {
            boolean s0 = this.f8959l.mo18873s0();
            boolean z = this.f8961n;
            if (s0 || z) {
                m30491a("Begin caching for streaming ad #" + this.f8959l.getAdIdNumber() + "...");
                m30425g();
                if (s0) {
                    if (this.f8960m) {
                        m30422i();
                    }
                    m30417k();
                    if (!this.f8960m) {
                        m30422i();
                    }
                    m30416l();
                } else {
                    m30422i();
                    m30417k();
                }
            } else {
                m30491a("Begin processing for non-streaming ad #" + this.f8959l.getAdIdNumber() + "...");
                m30425g();
                m30417k();
                m30416l();
                m30422i();
            }
            long currentTimeMillis = System.currentTimeMillis();
            long createdAtMillis = this.f8959l.getCreatedAtMillis();
            C2262c.m30554a(this.f8959l, this.f8916a);
            C2262c.m30557a(currentTimeMillis - createdAtMillis, this.f8959l, this.f8916a);
            m30435a(this.f8959l);
            m30429e();
        }

        /* renamed from: k */
        public final void m30417k() {
            m30491a("Caching HTML resources...");
            this.f8959l.m30652a(m30432a(this.f8959l.m30660J0(), this.f8959l.m18890k(), this.f8959l));
            this.f8959l.m18923a(true);
            m30491a("Finish caching non-video resources for ad #" + this.f8959l.getAdIdNumber());
            C2374t d0 = this.f8916a.m30262d0();
            String b = m30489b();
            d0.m30047a(b, "Ad updated with cachedHTML = " + this.f8959l.m30660J0());
        }

        /* renamed from: l */
        public final void m30416l() {
            Uri e;
            if (!m30427f() && (e = m30428e(this.f8959l.m30658L0())) != null) {
                this.f8959l.m30659K0();
                this.f8959l.m30651d(e);
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2297k, java.lang.Runnable
        public void run() {
            super.run();
            RunnableC2302a aVar = new RunnableC2302a();
            if (this.f8948f.m18884n()) {
                this.f8916a.m30249j().m18814c().execute(aVar);
            } else {
                aVar.run();
            }
        }
    }

    /* renamed from: c.b.a.e.g$m */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$m.class */
    public class C2303m extends AbstractC2304n {
        public C2303m(List<NativeAdImpl> list, C2341l lVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            super("TaskCacheNativeAdImages", list, lVar, appLovinNativeAdLoadListener);
        }

        public C2303m(List<NativeAdImpl> list, C2341l lVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
            super("TaskCacheNativeAdImages", list, lVar, appLovinNativeAdPrecacheListener);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2304n
        /* renamed from: a */
        public void mo30410a(NativeAdImpl nativeAdImpl) {
            AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener = this.f8965h;
            if (appLovinNativeAdPrecacheListener != null) {
                appLovinNativeAdPrecacheListener.onNativeAdImagesPrecached(nativeAdImpl);
            }
        }

        /* renamed from: a */
        public void m30415a(NativeAdImpl nativeAdImpl, int i) {
            AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener = this.f8965h;
            if (appLovinNativeAdPrecacheListener != null) {
                appLovinNativeAdPrecacheListener.onNativeAdImagePrecachingFailed(nativeAdImpl, i);
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2304n
        /* renamed from: a */
        public boolean mo30408a(NativeAdImpl nativeAdImpl, C2370r rVar) {
            m30491a("Beginning native ad image caching for #" + nativeAdImpl.getAdId());
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8543H0)).booleanValue()) {
                String a = m30412a(nativeAdImpl.getSourceIconUrl(), rVar, nativeAdImpl.getResourcePrefixes());
                if (a == null) {
                    return m30414b(nativeAdImpl);
                }
                nativeAdImpl.setIconUrl(a);
                String a2 = m30412a(nativeAdImpl.getSourceImageUrl(), rVar, nativeAdImpl.getResourcePrefixes());
                if (a2 == null) {
                    return m30414b(nativeAdImpl);
                }
                nativeAdImpl.setImageUrl(a2);
                return true;
            }
            m30491a("Resource caching is disabled, skipping...");
            return true;
        }

        /* renamed from: b */
        public final boolean m30414b(NativeAdImpl nativeAdImpl) {
            m30486c("Unable to cache image resource");
            m30415a(nativeAdImpl, !C2389h.m29964a(m30487c()) ? AppLovinErrorCodes.NO_NETWORK : AppLovinErrorCodes.UNABLE_TO_PRECACHE_IMAGE_RESOURCES);
            return false;
        }
    }

    /* renamed from: c.b.a.e.g$n */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$n.class */
    public abstract class AbstractC2304n extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final List<NativeAdImpl> f8963f;

        /* renamed from: g */
        public final AppLovinNativeAdLoadListener f8964g;

        /* renamed from: h */
        public final AppLovinNativeAdPrecacheListener f8965h;

        /* renamed from: i */
        public int f8966i;

        public AbstractC2304n(String str, List<NativeAdImpl> list, C2341l lVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            super(str, lVar);
            this.f8963f = list;
            this.f8964g = appLovinNativeAdLoadListener;
            this.f8965h = null;
        }

        public AbstractC2304n(String str, List<NativeAdImpl> list, C2341l lVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
            super(str, lVar);
            if (list != null) {
                this.f8963f = list;
                this.f8964g = null;
                this.f8965h = appLovinNativeAdPrecacheListener;
                return;
            }
            throw new IllegalArgumentException("Native ads cannot be null");
        }

        /* renamed from: a */
        public String m30412a(String str, C2370r rVar, List<String> list) {
            if (!C2422o.m29851b(str)) {
                m30491a("Asked to cache file with null/empty URL, nothing to do.");
                return null;
            } else if (!AbstractC2426r.m29803a(str, list)) {
                m30491a("Domain is not whitelisted, skipping precache for URL " + str);
                return null;
            } else {
                try {
                    String a = rVar.m30075a(m30487c(), str, null, list, true, true, null);
                    if (a != null) {
                        return a;
                    }
                    m30486c("Unable to cache icon resource " + str);
                    return null;
                } catch (Exception e) {
                    m30490a("Unable to cache icon resource " + str, e);
                    return null;
                }
            }
        }

        /* renamed from: a */
        public final void m30413a(int i) {
            AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f8964g;
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            }
        }

        /* renamed from: a */
        public abstract void mo30410a(NativeAdImpl nativeAdImpl);

        /* renamed from: a */
        public final void m30411a(List<AppLovinNativeAd> list) {
            AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f8964g;
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsLoaded(list);
            }
        }

        /* renamed from: a */
        public abstract boolean mo30408a(NativeAdImpl nativeAdImpl, C2370r rVar);

        @Override // java.lang.Runnable
        public void run() {
            for (NativeAdImpl nativeAdImpl : this.f8963f) {
                m30491a("Beginning resource caching phase...");
                if (mo30408a(nativeAdImpl, this.f8916a.m30239t())) {
                    this.f8966i++;
                    mo30410a(nativeAdImpl);
                } else {
                    m30484d("Unable to cache resources");
                }
            }
            try {
                if (this.f8966i == this.f8963f.size()) {
                    m30411a(this.f8963f);
                } else {
                    m30484d("Mismatch between successful populations and requested size");
                    m30413a(-6);
                }
            } catch (Throwable th) {
                C2374t.m30041c(m30489b(), "Encountered exception while notifying publisher code", th);
            }
        }
    }

    /* renamed from: c.b.a.e.g$o */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$o.class */
    public class C2305o extends AbstractC2304n {
        public C2305o(List<NativeAdImpl> list, C2341l lVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            super("TaskCacheNativeAdVideos", list, lVar, appLovinNativeAdLoadListener);
        }

        public C2305o(List<NativeAdImpl> list, C2341l lVar, AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener) {
            super("TaskCacheNativeAdVideos", list, lVar, appLovinNativeAdPrecacheListener);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2304n
        /* renamed from: a */
        public void mo30410a(NativeAdImpl nativeAdImpl) {
            AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener = this.f8965h;
            if (appLovinNativeAdPrecacheListener != null) {
                appLovinNativeAdPrecacheListener.onNativeAdVideoPreceached(nativeAdImpl);
            }
        }

        /* renamed from: a */
        public void m30409a(NativeAdImpl nativeAdImpl, int i) {
            AppLovinNativeAdPrecacheListener appLovinNativeAdPrecacheListener = this.f8965h;
            if (appLovinNativeAdPrecacheListener != null) {
                appLovinNativeAdPrecacheListener.onNativeAdVideoPrecachingFailed(nativeAdImpl, i);
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2304n
        /* renamed from: a */
        public boolean mo30408a(NativeAdImpl nativeAdImpl, C2370r rVar) {
            if (!C2422o.m29851b(nativeAdImpl.getSourceVideoUrl())) {
                return true;
            }
            m30491a("Beginning native ad video caching" + nativeAdImpl.getAdId());
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8543H0)).booleanValue()) {
                String a = m30412a(nativeAdImpl.getSourceVideoUrl(), rVar, nativeAdImpl.getResourcePrefixes());
                if (a == null) {
                    return m30407b(nativeAdImpl);
                }
                nativeAdImpl.setVideoUrl(a);
                return true;
            }
            m30491a("Resource caching is disabled, skipping...");
            return true;
        }

        /* renamed from: b */
        public final boolean m30407b(NativeAdImpl nativeAdImpl) {
            m30486c("Unable to cache video resource " + nativeAdImpl.getSourceVideoUrl());
            m30409a(nativeAdImpl, !C2389h.m29964a(m30487c()) ? AppLovinErrorCodes.NO_NETWORK : AppLovinErrorCodes.UNABLE_TO_PRECACHE_VIDEO_RESOURCES);
            return false;
        }
    }

    /* renamed from: c.b.a.e.g$p */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$p.class */
    public class C2306p extends AbstractC2297k {

        /* renamed from: l */
        public final C6894a f8967l;

        /* renamed from: c.b.a.e.g$p$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$p$a.class */
        public class RunnableC2307a implements Runnable {
            public RunnableC2307a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2306p.this.mo30405j();
            }
        }

        public C2306p(C6894a aVar, C2341l lVar, AppLovinAdLoadListener appLovinAdLoadListener) {
            super("TaskCacheVastAd", aVar, lVar, appLovinAdLoadListener);
            this.f8967l = aVar;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2297k
        /* renamed from: j */
        public final void mo30405j() {
            if (this.f8967l.m19465R0()) {
                m30491a("Begin caching for VAST streaming ad #" + this.f8948f.getAdIdNumber() + "...");
                m30425g();
                if (this.f8967l.m19463T0()) {
                    m30422i();
                }
                if (this.f8967l.m19464S0() == C6894a.EnumC6896b.COMPANION_AD) {
                    m30404k();
                    m30402m();
                } else {
                    m30403l();
                }
                if (!this.f8967l.m19463T0()) {
                    m30422i();
                }
                if (this.f8967l.m19464S0() == C6894a.EnumC6896b.COMPANION_AD) {
                    m30403l();
                } else {
                    m30404k();
                    m30402m();
                }
            } else {
                m30491a("Begin caching for VAST ad #" + this.f8948f.getAdIdNumber() + "...");
                m30425g();
                m30404k();
                m30403l();
                m30402m();
                m30422i();
            }
            m30491a("Finished caching VAST ad #" + this.f8967l.getAdIdNumber());
            long currentTimeMillis = System.currentTimeMillis();
            long createdAtMillis = this.f8967l.getCreatedAtMillis();
            C2262c.m30554a(this.f8967l, this.f8916a);
            C2262c.m30557a(currentTimeMillis - createdAtMillis, this.f8967l, this.f8916a);
            m30435a(this.f8967l);
            m30429e();
        }

        /* renamed from: k */
        public final void m30404k() {
            String str;
            String str2;
            String str3;
            String str4;
            if (!m30427f()) {
                if (this.f8967l.m19471L0()) {
                    C2031a Y0 = this.f8967l.m19458Y0();
                    if (Y0 != null) {
                        C6900e b = Y0.m31244b();
                        if (b != null) {
                            Uri b2 = b.m19421b();
                            String uri = b2 != null ? b2.toString() : "";
                            String c = b.m19420c();
                            if (!URLUtil.isValidUrl(uri) && !C2422o.m29851b(c)) {
                                m30486c("Companion ad does not have any resources attached. Skipping...");
                                return;
                            } else if (b.m19426a() == C6900e.EnumC6901a.STATIC) {
                                m30491a("Caching static companion ad at " + uri + "...");
                                Uri b3 = m30430b(uri, Collections.emptyList(), false);
                                if (b3 != null) {
                                    b.m19425a(b3);
                                    this.f8967l.m18923a(true);
                                    return;
                                }
                                str2 = "Failed to cache static companion ad";
                            } else if (b.m19426a() == C6900e.EnumC6901a.HTML) {
                                if (C2422o.m29851b(uri)) {
                                    m30491a("Begin caching HTML companion ad. Fetching from " + uri + "...");
                                    String f = m30426f(uri);
                                    if (C2422o.m29851b(f)) {
                                        str3 = "HTML fetched. Caching HTML now...";
                                        str4 = f;
                                    } else {
                                        str2 = "Unable to load companion ad resources from " + uri;
                                    }
                                } else {
                                    str3 = "Caching provided HTML for companion ad. No fetch required. HTML: " + c;
                                    str4 = c;
                                }
                                m30491a(str3);
                                b.m19422a(m30432a(str4, Collections.emptyList(), this.f8967l));
                                this.f8967l.m18923a(true);
                                return;
                            } else if (b.m19426a() == C6900e.EnumC6901a.IFRAME) {
                                str = "Skip caching of iFrame resource...";
                            } else {
                                return;
                            }
                        } else {
                            str2 = "Failed to retrieve non-video resources from companion ad. Skipping...";
                        }
                        m30484d(str2);
                        return;
                    }
                    str = "No companion ad provided. Skipping...";
                } else {
                    str = "Companion ad caching disabled. Skipping...";
                }
                m30491a(str);
            }
        }

        /* renamed from: l */
        public final void m30403l() {
            C6905k X0;
            Uri b;
            if (!m30427f()) {
                if (!this.f8967l.m19470M0()) {
                    m30491a("Video caching disabled. Skipping...");
                } else if (this.f8967l.m19460W0() != null && (X0 = this.f8967l.m19459X0()) != null && (b = X0.m19405b()) != null) {
                    Uri a = m30431a(b.toString(), Collections.emptyList(), false);
                    if (a != null) {
                        m30491a("Video file successfully cached into: " + a);
                        X0.m19408a(a);
                        return;
                    }
                    m30484d("Failed to cache video file: " + X0);
                }
            }
        }

        /* renamed from: m */
        public final void m30402m() {
            String str;
            String str2;
            if (!m30427f()) {
                if (this.f8967l.m19472K0() != null) {
                    m30491a("Begin caching HTML template. Fetching from " + this.f8967l.m19472K0() + "...");
                    str = m30433a(this.f8967l.m19472K0().toString(), this.f8967l.m18890k());
                } else {
                    str = this.f8967l.m19473J0();
                }
                if (C2422o.m29851b(str)) {
                    C6894a aVar = this.f8967l;
                    aVar.m19453a(m30432a(str, aVar.m18890k(), this.f8967l));
                    str2 = "Finish caching HTML template " + this.f8967l.m19473J0() + " for ad #" + this.f8967l.getAdIdNumber();
                } else {
                    str2 = "Unable to load HTML template";
                }
                m30491a(str2);
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2297k, java.lang.Runnable
        public void run() {
            super.run();
            RunnableC2307a aVar = new RunnableC2307a();
            if (this.f8948f.m18884n()) {
                this.f8916a.m30249j().m18814c().execute(aVar);
            } else {
                aVar.run();
            }
        }
    }

    /* renamed from: c.b.a.e.g$q */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$q.class */
    public class C2308q extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final AbstractC2309a f8969f;

        /* renamed from: c.b.a.e.g$q$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$q$a.class */
        public interface AbstractC2309a {
            /* renamed from: a */
            void mo19037a(C2345m.C2347b bVar);
        }

        public C2308q(C2341l lVar, AbstractC2309a aVar) {
            super("TaskCollectAdvertisingId", lVar);
            this.f8969f = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8969f.mo19037a(this.f8916a.m30246m().m30221d());
        }
    }

    /* renamed from: c.b.a.e.g$r */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$r.class */
    public class C2310r extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final C2368f f8970f;

        /* renamed from: g */
        public final AppLovinPostbackListener f8971g;

        /* renamed from: h */
        public final C7048s.EnumC7049a f8972h;

        /* renamed from: c.b.a.e.g$r$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$r$a.class */
        public class C2311a extends AbstractC2288f0<Object> {

            /* renamed from: l */
            public final /* synthetic */ String f8973l;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C2311a(C2360b bVar, C2341l lVar, String str) {
                super(bVar, lVar);
                this.f8973l = str;
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                m30484d("Failed to dispatch postback. Error code: " + i + " URL: " + this.f8973l);
                if (C2310r.this.f8971g != null) {
                    C2310r.this.f8971g.onPostbackFailure(this.f8973l, i);
                }
                if (C2310r.this.f8970f.m30108o()) {
                    this.f8916a.m30320B().m30355a(C2310r.this.f8970f.m30107p(), C2310r.this.f8970f.m30176a(), i, null);
                }
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18838a(Object obj, int i) {
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8625X3)).booleanValue()) {
                    if (obj instanceof JSONObject) {
                        JSONObject jSONObject = (JSONObject) obj;
                        Iterator<String> it = this.f8916a.m30275b(C2251d.C2256e.f8607U).iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            if (C2310r.this.f8970f.m30176a().startsWith(it.next())) {
                                C2389h.m29952b(jSONObject, this.f8916a);
                                C2389h.m29957a(jSONObject, this.f8916a);
                                break;
                            }
                        }
                    }
                } else if (obj instanceof String) {
                    for (String str : this.f8916a.m30275b(C2251d.C2256e.f8607U)) {
                        if (C2310r.this.f8970f.m30176a().startsWith(str)) {
                            String str2 = (String) obj;
                            if (!TextUtils.isEmpty(str2)) {
                                try {
                                    JSONObject jSONObject2 = new JSONObject(str2);
                                    C2389h.m29952b(jSONObject2, this.f8916a);
                                    C2389h.m29957a(jSONObject2, this.f8916a);
                                    break;
                                } catch (JSONException e) {
                                }
                            } else {
                                continue;
                            }
                        }
                    }
                }
                if (C2310r.this.f8971g != null) {
                    C2310r.this.f8971g.onPostbackSuccess(this.f8973l);
                }
                if (C2310r.this.f8970f.m30108o()) {
                    this.f8916a.m30320B().m30355a(C2310r.this.f8970f.m30107p(), C2310r.this.f8970f.m30176a(), i, obj);
                }
            }
        }

        public C2310r(C2368f fVar, C7048s.EnumC7049a aVar, C2341l lVar, AppLovinPostbackListener appLovinPostbackListener) {
            super("TaskDispatchPostback", lVar);
            if (fVar != null) {
                this.f8970f = fVar;
                this.f8971g = appLovinPostbackListener;
                this.f8972h = aVar;
                return;
            }
            throw new IllegalArgumentException("No request specified");
        }

        @Override // java.lang.Runnable
        public void run() {
            String a = this.f8970f.m30176a();
            if (!C2422o.m29851b(a)) {
                m30488b("Requested URL is not valid; nothing to do...");
                AppLovinPostbackListener appLovinPostbackListener = this.f8971g;
                if (appLovinPostbackListener != null) {
                    appLovinPostbackListener.onPostbackFailure(a, AppLovinErrorCodes.INVALID_URL);
                    return;
                }
                return;
            }
            C2311a aVar = new C2311a(this.f8970f, m30492a(), a);
            aVar.m30466a(this.f8972h);
            m30492a().m30249j().m18827a(aVar);
        }
    }

    /* renamed from: c.b.a.e.g$s */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$s.class */
    public class C2312s extends AbstractRunnableC2278c {

        /* renamed from: g */
        public static int f8975g;

        /* renamed from: f */
        public final AtomicBoolean f8976f = new AtomicBoolean();

        /* renamed from: c.b.a.e.g$s$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$s$a.class */
        public class C2313a extends AbstractC2288f0<JSONObject> {
            public C2313a(C2360b bVar, C2341l lVar, boolean z) {
                super(bVar, lVar, z);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                m30484d("Unable to fetch basic SDK settings: server returned " + i);
                C2312s.this.m30397a(new JSONObject());
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                C2312s.this.m30397a(jSONObject);
            }
        }

        /* renamed from: c.b.a.e.g$s$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$s$b.class */
        public class C2314b extends AbstractRunnableC2278c {
            public C2314b(C2341l lVar) {
                super("TaskTimeoutFetchBasicSettings", lVar, true);
            }

            @Override // java.lang.Runnable
            public void run() {
                if (!C2312s.this.f8976f.get()) {
                    m30484d("Timing out fetch basic settings...");
                    C2312s.this.m30397a(new JSONObject());
                }
            }
        }

        public C2312s(C2341l lVar) {
            super("TaskFetchBasicSettings", lVar, true);
        }

        /* renamed from: a */
        public final void m30397a(JSONObject jSONObject) {
            boolean z = true;
            if (this.f8976f.compareAndSet(false, true)) {
                C2389h.m29952b(jSONObject, this.f8916a);
                C2389h.m29957a(jSONObject, this.f8916a);
                if (jSONObject.length() <= 0) {
                    z = false;
                }
                C2389h.m29956a(jSONObject, z, this.f8916a);
                C2167b.m30815f(jSONObject, this.f8916a);
                C2167b.m30813g(jSONObject, this.f8916a);
                m30488b("Executing initialize SDK...");
                this.f8916a.m30252h0().m30994a(C2390i.m29928a(jSONObject, "smd", (Boolean) false, this.f8916a).booleanValue());
                C2389h.m29946e(jSONObject, this.f8916a);
                C2389h.m29950c(jSONObject, this.f8916a);
                this.f8916a.m30279a(jSONObject);
                this.f8916a.m30249j().m18827a(new C2325z(this.f8916a));
                C2389h.m29948d(jSONObject, this.f8916a);
                m30488b("Finished executing initialize SDK");
            }
        }

        /* renamed from: e */
        public Map<String, String> m30396e() {
            HashMap hashMap = new HashMap();
            hashMap.put("rid", UUID.randomUUID().toString());
            if (!((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
                hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8916a.m30269b0());
            }
            Boolean a = C2328i.m30353a(m30487c());
            if (a != null) {
                hashMap.put("huc", a.toString());
            }
            Boolean b = C2328i.m30349b(m30487c());
            if (b != null) {
                hashMap.put("aru", b.toString());
            }
            Boolean c = C2328i.m30347c(m30487c());
            if (c != null) {
                hashMap.put("dns", c.toString());
            }
            return hashMap;
        }

        /* renamed from: f */
        public JSONObject m30395f() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("sdk_version", AppLovinSdk.VERSION);
                jSONObject.put("build", String.valueOf(131));
                int i = f8975g + 1;
                f8975g = i;
                jSONObject.put("init_count", String.valueOf(i));
                jSONObject.put("server_installed_at", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8717o)));
                if (this.f8916a.m30255g()) {
                    jSONObject.put("first_install", true);
                }
                if (!this.f8916a.m30253h()) {
                    jSONObject.put("first_install_v2", true);
                }
                String str = (String) this.f8916a.m30291a(C2251d.C2256e.f8620W2);
                if (C2422o.m29851b(str)) {
                    jSONObject.put("plugin_version", C2422o.m29847e(str));
                }
                String V = this.f8916a.m30300V();
                if (C2422o.m29851b(V)) {
                    jSONObject.put("mediation_provider", C2422o.m29847e(V));
                }
                C2168c.C2170b a = C2168c.m30809a(this.f8916a);
                jSONObject.put("installed_mediation_adapters", a.m30803a());
                jSONObject.put("uninstalled_mediation_adapter_classnames", a.m30802b());
                C2345m.C2348c c = this.f8916a.m30246m().m30223c();
                jSONObject.put("package_name", C2422o.m29847e(c.f9093c));
                jSONObject.put("app_version", C2422o.m29847e(c.f9092b));
                jSONObject.put("test_ads", c.f9099i);
                jSONObject.put("debug", String.valueOf(c.f9097g));
                jSONObject.put("platform", "android");
                jSONObject.put("os", C2422o.m29847e(Build.VERSION.RELEASE));
                jSONObject.put("tg", AbstractC2426r.m29816a(C2251d.C2258g.f8799i, this.f8916a));
                jSONObject.put("ltg", AbstractC2426r.m29816a(C2251d.C2258g.f8800j, this.f8916a));
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8595R2)).booleanValue()) {
                    jSONObject.put("compass_random_token", this.f8916a.m30304R());
                }
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8605T2)).booleanValue()) {
                    jSONObject.put("applovin_random_token", this.f8916a.m30303S());
                }
            } catch (JSONException e) {
                m30490a("Failed to construct JSON body", e);
            }
            return jSONObject;
        }

        /* renamed from: g */
        public final String m30394g() {
            return C2389h.m29959a((String) this.f8916a.m30291a(C2251d.C2256e.f8612V), "5.0/i", m30492a());
        }

        /* renamed from: h */
        public final String m30393h() {
            return C2389h.m29959a((String) this.f8916a.m30291a(C2251d.C2256e.f8617W), "5.0/i", m30492a());
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> e = m30396e();
            C2360b.C2361a b = C2360b.m30174a(this.f8916a).mo30102a(m30394g()).mo30091c(m30393h()).mo30101a(e).mo30100a(m30395f()).mo30095b("POST").mo30103a((C2360b.C2361a) new JSONObject()).mo30105a(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8515B2)).intValue()).mo30092c(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8530E2)).intValue()).mo30097b(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8510A2)).intValue());
            b.m30158b(true);
            C2360b a = b.mo30106a();
            this.f8916a.m30249j().m18825a(new C2314b(this.f8916a), C7048s.EnumC7049a.TIMEOUT, ((Integer) this.f8916a.m30291a(C2251d.C2256e.f8510A2)).intValue() + 250);
            C2313a aVar = new C2313a(a, this.f8916a, m30485d());
            aVar.m30469a(C2251d.C2256e.f8630Z);
            aVar.m30465b(C2251d.C2256e.f8635a0);
            this.f8916a.m30249j().m18827a(aVar);
        }
    }

    /* renamed from: c.b.a.e.g$t */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$t.class */
    public class C2315t extends C2316u {

        /* renamed from: i */
        public final List<String> f8979i;

        public C2315t(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super(C2246b.m30644a(m30391a(list), lVar), appLovinAdLoadListener, "TaskFetchMultizoneAd", lVar);
            this.f8979i = Collections.unmodifiableList(list);
        }

        /* renamed from: a */
        public static String m30391a(List<String> list) {
            if (list != null && !list.isEmpty()) {
                return list.get(0);
            }
            throw new IllegalArgumentException("No zone identifiers specified");
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: e */
        public Map<String, String> mo30378e() {
            HashMap hashMap = new HashMap(1);
            List<String> list = this.f8979i;
            hashMap.put("zone_ids", C2422o.m29847e(C2386e.m29980a(list, list.size())));
            return hashMap;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: f */
        public EnumC7029b mo30377f() {
            return EnumC7029b.APPLOVIN_MULTIZONE;
        }
    }

    /* renamed from: c.b.a.e.g$u */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$u.class */
    public class C2316u extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final C2246b f8980f;

        /* renamed from: g */
        public final AppLovinAdLoadListener f8981g;

        /* renamed from: h */
        public boolean f8982h;

        /* renamed from: c.b.a.e.g$u$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$u$a.class */
        public class C2317a extends AbstractC2288f0<JSONObject> {
            public C2317a(C2360b bVar, C2341l lVar) {
                super(bVar, lVar);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                C2316u.this.m30386b(i);
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                if (i == 200) {
                    C2390i.m29915b(jSONObject, "ad_fetch_latency_millis", this.f8939k.m30186a(), this.f8916a);
                    C2390i.m29915b(jSONObject, "ad_fetch_response_size", this.f8939k.m30183b(), this.f8916a);
                    C2316u.this.m30385b(jSONObject);
                    return;
                }
                C2316u.this.m30386b(i);
            }
        }

        public C2316u(C2246b bVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            this(bVar, appLovinAdLoadListener, "TaskFetchNextAd", lVar);
        }

        public C2316u(C2246b bVar, AppLovinAdLoadListener appLovinAdLoadListener, String str, C2341l lVar) {
            super(str, lVar);
            this.f8982h = false;
            this.f8980f = bVar;
            this.f8981g = appLovinAdLoadListener;
        }

        /* renamed from: a */
        public AbstractRunnableC2278c mo30381a(JSONObject jSONObject) {
            RunnableC7032f.C7035c cVar = new RunnableC7032f.C7035c(this.f8980f, this.f8981g, this.f8916a);
            cVar.m18966a(m30384i());
            return new C2272a0(jSONObject, this.f8980f, mo30377f(), cVar, this.f8916a);
        }

        /* renamed from: a */
        public void mo30382a(int i) {
            AppLovinAdLoadListener appLovinAdLoadListener = this.f8981g;
            if (appLovinAdLoadListener == null) {
                return;
            }
            if (appLovinAdLoadListener instanceof AbstractC2355p) {
                ((AbstractC2355p) appLovinAdLoadListener).mo30032a(this.f8980f, i);
            } else {
                appLovinAdLoadListener.failedToReceiveAd(i);
            }
        }

        /* renamed from: a */
        public final void m30390a(C2268g gVar) {
            long b = gVar.m30519b(C2267f.f8882f);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - b > TimeUnit.MINUTES.toMillis(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8550I2)).intValue())) {
                gVar.m30518b(C2267f.f8882f, currentTimeMillis);
                gVar.m30516c(C2267f.f8883g);
            }
        }

        /* renamed from: a */
        public void m30387a(boolean z) {
            this.f8982h = z;
        }

        /* renamed from: b */
        public final void m30386b(int i) {
            boolean z = i != 204;
            C2374t d0 = m30492a().m30262d0();
            String b = m30489b();
            d0.m30049a(b, Boolean.valueOf(z), "Unable to fetch " + this.f8980f + " ad: server returned " + i);
            if (i == -800) {
                this.f8916a.m30248k().m30522a(C2267f.f8887k);
            }
            this.f8916a.m30238u().m30621a(this.f8980f, m30384i(), i);
            try {
                mo30382a(i);
            } catch (Throwable th) {
                C2374t.m30041c(m30489b(), "Unable process a failure to receive an ad", th);
            }
        }

        /* renamed from: b */
        public final void m30385b(JSONObject jSONObject) {
            C2389h.m29952b(jSONObject, this.f8916a);
            C2389h.m29957a(jSONObject, this.f8916a);
            C2389h.m29948d(jSONObject, this.f8916a);
            C2246b.m30642a(jSONObject, this.f8916a);
            this.f8916a.m30249j().m18827a(mo30381a(jSONObject));
        }

        /* renamed from: e */
        public Map<String, String> mo30378e() {
            HashMap hashMap = new HashMap(4);
            hashMap.put("zone_id", C2422o.m29847e(this.f8980f.m30650a()));
            if (this.f8980f.m30638c() != null) {
                hashMap.put("size", this.f8980f.m30638c().getLabel());
            }
            if (this.f8980f.m30636d() != null) {
                hashMap.put("require", this.f8980f.m30636d().getLabel());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8723p)).booleanValue()) {
                hashMap.put("n", String.valueOf(this.f8916a.m30321A().m29998a(this.f8980f.m30650a())));
            }
            return hashMap;
        }

        /* renamed from: f */
        public EnumC7029b mo30377f() {
            return this.f8980f.m30625j() ? EnumC7029b.APPLOVIN_PRIMARY_ZONE : EnumC7029b.APPLOVIN_CUSTOM_ZONE;
        }

        /* renamed from: g */
        public String mo30380g() {
            return C2389h.m29951c(this.f8916a);
        }

        /* renamed from: h */
        public String mo30379h() {
            return C2389h.m29949d(this.f8916a);
        }

        /* renamed from: i */
        public final boolean m30384i() {
            return (this instanceof C2319w) || (this instanceof C2315t);
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            StringBuilder sb;
            if (this.f8982h) {
                sb = new StringBuilder();
                str = "Preloading next ad of zone: ";
            } else {
                sb = new StringBuilder();
                str = "Fetching next ad of zone: ";
            }
            sb.append(str);
            sb.append(this.f8980f);
            m30491a(sb.toString());
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8655d3)).booleanValue() && AbstractC2426r.m29778d()) {
                m30491a("User is connected to a VPN");
            }
            C2268g k = this.f8916a.m30248k();
            k.m30522a(C2267f.f8880d);
            if (k.m30519b(C2267f.f8882f) == 0) {
                k.m30518b(C2267f.f8882f, System.currentTimeMillis());
            }
            try {
                Map<String, String> a = this.f8916a.m30246m().m30226a(mo30378e(), this.f8982h, false);
                Map<String, String> map = null;
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8721o3)).booleanValue()) {
                    map = C2070d.m31119b(((Long) this.f8916a.m30291a(C2251d.C2256e.f8727p3)).longValue());
                }
                m30390a(k);
                C2360b.C2361a b = C2360b.m30174a(this.f8916a).mo30102a(mo30380g()).mo30101a(a).mo30091c(mo30379h()).mo30095b("GET").mo30094b(map).mo30103a((C2360b.C2361a) new JSONObject()).mo30105a(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8770x2)).intValue()).mo30097b(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8765w2)).intValue());
                b.m30158b(true);
                C2317a aVar = new C2317a(b.mo30106a(), this.f8916a);
                aVar.m30469a(C2251d.C2256e.f8630Z);
                aVar.m30465b(C2251d.C2256e.f8635a0);
                this.f8916a.m30249j().m18827a(aVar);
            } catch (Throwable th) {
                m30490a("Unable to fetch ad " + this.f8980f, th);
                m30386b(0);
            }
        }
    }

    /* renamed from: c.b.a.e.g$v */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$v.class */
    public class C2318v extends C2316u {

        /* renamed from: i */
        public final AppLovinNativeAdLoadListener f8984i;

        public C2318v(C2341l lVar, AppLovinNativeAdLoadListener appLovinNativeAdLoadListener) {
            super(C2246b.m30627h(lVar), null, "TaskFetchNextNativeAd", lVar);
            this.f8984i = appLovinNativeAdLoadListener;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: a */
        public AbstractRunnableC2278c mo30381a(JSONObject jSONObject) {
            return new C2282d0(jSONObject, this.f8916a, this.f8984i);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: a */
        public void mo30382a(int i) {
            AppLovinNativeAdLoadListener appLovinNativeAdLoadListener = this.f8984i;
            if (appLovinNativeAdLoadListener != null) {
                appLovinNativeAdLoadListener.onNativeAdsFailedToLoad(i);
            }
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: g */
        public String mo30380g() {
            return ((String) this.f8916a.m30291a(C2251d.C2256e.f8630Z)) + "4.0/nad";
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: h */
        public String mo30379h() {
            return ((String) this.f8916a.m30291a(C2251d.C2256e.f8635a0)) + "4.0/nad";
        }
    }

    /* renamed from: c.b.a.e.g$w */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$w.class */
    public class C2319w extends C2316u {

        /* renamed from: i */
        public final C7030c f8985i;

        public C2319w(C7030c cVar, AppLovinAdLoadListener appLovinAdLoadListener, C2341l lVar) {
            super(C2246b.m30644a("adtoken_zone", lVar), appLovinAdLoadListener, "TaskFetchTokenAd", lVar);
            this.f8985i = cVar;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: e */
        public Map<String, String> mo30378e() {
            HashMap hashMap = new HashMap(2);
            hashMap.put("adtoken", C2422o.m29847e(this.f8985i.m18992a()));
            hashMap.put("adtoken_prefix", C2422o.m29847e(this.f8985i.m18989c()));
            return hashMap;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2316u
        /* renamed from: f */
        public EnumC7029b mo30377f() {
            return EnumC7029b.REGULAR_AD_TOKEN;
        }
    }

    /* renamed from: c.b.a.e.g$x */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$x.class */
    public class C2320x extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final AbstractC2322b f8986f;

        /* renamed from: c.b.a.e.g$x$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$x$a.class */
        public class C2321a extends AbstractC2288f0<JSONObject> {
            public C2321a(C2360b bVar, C2341l lVar) {
                super(bVar, lVar);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                m30484d("Unable to fetch variables: server returned " + i);
                C2374t.m30034j("AppLovinVariableService", "Failed to load variables.");
                C2320x.this.f8986f.mo19017a();
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                C2389h.m29952b(jSONObject, this.f8916a);
                C2389h.m29957a(jSONObject, this.f8916a);
                C2389h.m29946e(jSONObject, this.f8916a);
                C2320x.this.f8986f.mo19017a();
            }
        }

        /* renamed from: c.b.a.e.g$x$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$x$b.class */
        public interface AbstractC2322b {
            /* renamed from: a */
            void mo19017a();
        }

        public C2320x(C2341l lVar, AbstractC2322b bVar) {
            super("TaskFetchVariables", lVar);
            this.f8986f = bVar;
        }

        /* renamed from: a */
        public final void m30375a(Map<String, String> map) {
            try {
                C2345m.C2347b d = this.f8916a.m30246m().m30221d();
                String str = d.f9090b;
                if (C2422o.m29851b(str)) {
                    map.put("idfa", str);
                }
                map.put("dnt", Boolean.toString(d.f9089a));
            } catch (Throwable th) {
                m30490a("Failed to populate advertising info", th);
            }
        }

        /* renamed from: e */
        public final Map<String, String> m30374e() {
            C2345m m = this.f8916a.m30246m();
            C2345m.C2350e b = m.m30225b();
            C2345m.C2348c c = m.m30223c();
            HashMap hashMap = new HashMap();
            hashMap.put("platform", C2422o.m29847e(b.f9119a));
            hashMap.put("model", C2422o.m29847e(b.f9122d));
            hashMap.put("api_level", String.valueOf(b.f9121c));
            hashMap.put("package_name", C2422o.m29847e(c.f9093c));
            hashMap.put("installer_name", C2422o.m29847e(c.f9094d));
            hashMap.put("ia", Long.toString(c.f9098h));
            hashMap.put("api_did", this.f8916a.m30291a(C2251d.C2256e.f8675h));
            hashMap.put("brand", C2422o.m29847e(b.f9123e));
            hashMap.put("brand_name", C2422o.m29847e(b.f9124f));
            hashMap.put("hardware", C2422o.m29847e(b.f9125g));
            hashMap.put("revision", C2422o.m29847e(b.f9126h));
            hashMap.put("sdk_version", AppLovinSdk.VERSION);
            hashMap.put("os", C2422o.m29847e(b.f9120b));
            hashMap.put("orientation_lock", b.f9130l);
            hashMap.put("app_version", C2422o.m29847e(c.f9092b));
            hashMap.put("country_code", C2422o.m29847e(b.f9127i));
            hashMap.put("carrier", C2422o.m29847e(b.f9128j));
            hashMap.put("tz_offset", String.valueOf(b.f9136r));
            hashMap.put("aida", String.valueOf(b.f9115N));
            String str = "1";
            hashMap.put("adr", b.f9138t ? "1" : "0");
            hashMap.put(AvidVideoPlaybackListenerImpl.VOLUME, String.valueOf(b.f9142x));
            hashMap.put("sb", String.valueOf(b.f9143y));
            if (!b.f9102A) {
                str = "0";
            }
            hashMap.put("sim", str);
            hashMap.put("gy", String.valueOf(b.f9103B));
            hashMap.put("is_tablet", String.valueOf(b.f9104C));
            hashMap.put("tv", String.valueOf(b.f9105D));
            hashMap.put("vs", String.valueOf(b.f9106E));
            hashMap.put("lpm", String.valueOf(b.f9107F));
            hashMap.put("tg", c.f9095e);
            hashMap.put("ltg", c.f9096f);
            hashMap.put("fs", String.valueOf(b.f9109H));
            hashMap.put("tds", String.valueOf(b.f9110I));
            hashMap.put("fm", String.valueOf(b.f9111J.f9146b));
            hashMap.put("tm", String.valueOf(b.f9111J.f9145a));
            hashMap.put("lmt", String.valueOf(b.f9111J.f9147c));
            hashMap.put("lm", String.valueOf(b.f9111J.f9148d));
            hashMap.put("adns", String.valueOf(b.f9131m));
            hashMap.put("adnsd", String.valueOf(b.f9132n));
            hashMap.put("xdpi", String.valueOf(b.f9133o));
            hashMap.put("ydpi", String.valueOf(b.f9134p));
            hashMap.put("screen_size_in", String.valueOf(b.f9135q));
            hashMap.put("debug", Boolean.toString(c.f9097g));
            hashMap.put(C8081af.f31598d, String.valueOf(b.f9140v));
            hashMap.put("font", String.valueOf(b.f9141w));
            hashMap.put("bt_ms", String.valueOf(b.f9118Q));
            if (!((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
                hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8916a.m30269b0());
            }
            m30375a(hashMap);
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8585P2)).booleanValue()) {
                AbstractC2426r.m29804a("cuid", this.f8916a.m30305Q(), hashMap);
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8600S2)).booleanValue()) {
                hashMap.put("compass_random_token", this.f8916a.m30304R());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8610U2)).booleanValue()) {
                hashMap.put("applovin_random_token", this.f8916a.m30303S());
            }
            Boolean bool = b.f9112K;
            if (bool != null) {
                hashMap.put("huc", bool.toString());
            }
            Boolean bool2 = b.f9113L;
            if (bool2 != null) {
                hashMap.put("aru", bool2.toString());
            }
            Boolean bool3 = b.f9114M;
            if (bool3 != null) {
                hashMap.put("dns", bool3.toString());
            }
            C2345m.C2349d dVar = b.f9139u;
            if (dVar != null) {
                hashMap.put("act", String.valueOf(dVar.f9100a));
                hashMap.put("acm", String.valueOf(dVar.f9101b));
            }
            String str2 = b.f9144z;
            if (C2422o.m29851b(str2)) {
                hashMap.put("ua", C2422o.m29847e(str2));
            }
            String str3 = b.f9108G;
            if (!TextUtils.isEmpty(str3)) {
                hashMap.put("so", C2422o.m29847e(str3));
            }
            float f = b.f9116O;
            if (f > 0.0f) {
                hashMap.put("da", String.valueOf(f));
            }
            float f2 = b.f9117P;
            if (f2 > 0.0f) {
                hashMap.put("dm", String.valueOf(f2));
            }
            hashMap.put("sc", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8699l)));
            hashMap.put("sc2", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8705m)));
            hashMap.put("sc3", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8711n)));
            hashMap.put("server_installed_at", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8717o)));
            AbstractC2426r.m29804a("persisted_data", C2422o.m29847e((String) this.f8916a.m30290a(C2251d.C2258g.f8791A)), hashMap);
            return hashMap;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2321a aVar = new C2321a(C2360b.m30174a(this.f8916a).mo30102a(C2389h.m29947e(this.f8916a)).mo30091c(C2389h.m29945f(this.f8916a)).mo30101a(m30374e()).mo30095b("GET").mo30103a((C2360b.C2361a) new JSONObject()).mo30097b(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8535F2)).intValue()).mo30106a(), this.f8916a);
            aVar.m30469a(C2251d.C2256e.f8664f0);
            aVar.m30465b(C2251d.C2256e.f8670g0);
            this.f8916a.m30249j().m18827a(aVar);
        }
    }

    /* renamed from: c.b.a.e.g$y */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$y.class */
    public class C2323y extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final RunnableC7032f.EnumC7034b f8988f;

        /* renamed from: g */
        public final RunnableC7032f.EnumC7034b f8989g;

        /* renamed from: h */
        public final JSONArray f8990h;

        /* renamed from: i */
        public final MaxAdFormat f8991i;

        /* renamed from: c.b.a.e.g$y$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$y$a.class */
        public class C2324a extends AbstractC2288f0<JSONObject> {
            public C2324a(C2323y yVar, C2360b bVar, C2341l lVar) {
                super(bVar, lVar);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                C2389h.m29952b(jSONObject, this.f8916a);
            }
        }

        public C2323y(RunnableC7032f.EnumC7034b bVar, RunnableC7032f.EnumC7034b bVar2, JSONArray jSONArray, MaxAdFormat maxAdFormat, C2341l lVar) {
            super("TaskFlushZones", lVar);
            this.f8988f = bVar;
            this.f8989g = bVar2;
            this.f8990h = jSONArray;
            this.f8991i = maxAdFormat;
        }

        /* renamed from: a */
        public final void m30372a(Map<String, String> map) {
            try {
                C2345m.C2347b d = this.f8916a.m30246m().m30221d();
                String str = d.f9090b;
                if (C2422o.m29851b(str)) {
                    map.put("idfa", str);
                }
                map.put("dnt", Boolean.toString(d.f9089a));
            } catch (Throwable th) {
                m30490a("Failed to populate advertising info", th);
            }
        }

        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object] */
        /* renamed from: e */
        public final Map<String, String> m30371e() {
            Map<String, String> a = this.f8916a.m30246m().m30223c().m30205a();
            a.putAll(this.f8916a.m30246m().m30225b().m30204a());
            if (!((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
                a.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8916a.m30269b0());
            }
            a.put("api_did", this.f8916a.m30291a(C2251d.C2256e.f8675h));
            m30372a(a);
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8585P2)).booleanValue()) {
                AbstractC2426r.m29804a("cuid", this.f8916a.m30305Q(), a);
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8600S2)).booleanValue()) {
                a.put("compass_random_token", this.f8916a.m30304R());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8610U2)).booleanValue()) {
                a.put("applovin_random_token", this.f8916a.m30303S());
            }
            a.put("sc", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8699l)));
            a.put("sc2", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8705m)));
            a.put("sc3", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8711n)));
            a.put("server_installed_at", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8717o)));
            AbstractC2426r.m29804a("persisted_data", C2422o.m29847e((String) this.f8916a.m30290a(C2251d.C2258g.f8791A)), a);
            return a;
        }

        /* renamed from: f */
        public final JSONObject m30370f() {
            JSONObject jSONObject = new JSONObject();
            C2390i.m29915b(jSONObject, "ts_s", TimeUnit.MILLISECONDS.toSeconds(System.currentTimeMillis()), this.f8916a);
            if (this.f8988f != RunnableC7032f.EnumC7034b.UNKNOWN_ZONE) {
                C2390i.m29926a(jSONObject, "format", this.f8991i.getLabel(), this.f8916a);
                C2390i.m29930a(jSONObject, "previous_trigger_code", this.f8989g.m18968a(), this.f8916a);
                C2390i.m29926a(jSONObject, "previous_trigger_reason", this.f8989g.m18967b(), this.f8916a);
            }
            C2390i.m29930a(jSONObject, "trigger_code", this.f8988f.m18968a(), this.f8916a);
            C2390i.m29926a(jSONObject, "trigger_reason", this.f8988f.m18967b(), this.f8916a);
            C2390i.m29924a(jSONObject, "zones", this.f8990h, this.f8916a);
            return jSONObject;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> e = m30371e();
            JSONObject f = m30370f();
            String a = C2389h.m29959a((String) this.f8916a.m30291a(C2251d.C2256e.f8704l4), "1.0/flush_zones", this.f8916a);
            C2324a aVar = new C2324a(this, C2360b.m30174a(this.f8916a).mo30102a(a).mo30091c(C2389h.m29959a((String) this.f8916a.m30291a(C2251d.C2256e.f8710m4), "1.0/flush_zones", this.f8916a)).mo30101a(e).mo30100a(f).mo30095b("POST").mo30103a((C2360b.C2361a) new JSONObject()).mo30097b(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8716n4)).intValue()).mo30106a(), this.f8916a);
            aVar.m30469a(C2251d.C2256e.f8664f0);
            aVar.m30465b(C2251d.C2256e.f8670g0);
            this.f8916a.m30249j().m18827a(aVar);
        }
    }

    /* renamed from: c.b.a.e.g$z */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/g$z.class */
    public class C2325z extends AbstractRunnableC2278c {

        /* renamed from: f */
        public final C2341l f8992f;

        /* renamed from: c.b.a.e.g$z$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/g$z$a.class */
        public class RunnableC2326a implements Runnable {
            public RunnableC2326a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2325z.this.f8992f.m30256f0().m30795a(C2325z.this.f8992f.m30234y().m30676a());
            }
        }

        public C2325z(C2341l lVar) {
            super("TaskInitializeSdk", lVar);
            this.f8992f = lVar;
        }

        /* renamed from: a */
        public final void m30368a(C2251d.C2256e<Boolean> eVar) {
            if (((Boolean) this.f8992f.m30291a(eVar)).booleanValue()) {
                this.f8992f.m30241r().m30015f(C2246b.m30647a(AppLovinAdSize.INTERSTITIAL, AppLovinAdType.INCENTIVIZED, this.f8992f));
            }
        }

        /* renamed from: e */
        public final void m30366e() {
            if (!this.f8992f.m30256f0().m30796a()) {
                Activity G = this.f8992f.m30315G();
                if (G != null) {
                    this.f8992f.m30256f0().m30795a(G);
                } else {
                    this.f8992f.m30249j().m18825a(new C2290g(this.f8992f, true, new RunnableC2326a()), C7048s.EnumC7049a.MAIN, TimeUnit.SECONDS.toMillis(1L));
                }
            }
        }

        /* renamed from: f */
        public final void m30365f() {
            this.f8992f.m30249j().m18826a(new C2295j(this.f8992f), C7048s.EnumC7049a.MAIN);
        }

        /* renamed from: g */
        public final void m30364g() {
            this.f8992f.m30241r().m30513a();
            this.f8992f.m30240s().m30033a();
        }

        /* renamed from: h */
        public final void m30363h() {
            m30362i();
            m30361j();
            m30360k();
        }

        /* renamed from: i */
        public final void m30362i() {
            LinkedHashSet<C2246b> a = this.f8992f.m30238u().m30623a();
            if (!a.isEmpty()) {
                m30491a("Scheduling preload(s) for " + a.size() + " zone(s)");
                Iterator<C2246b> it = a.iterator();
                while (it.hasNext()) {
                    C2246b next = it.next();
                    if (next.m30634e()) {
                        this.f8992f.m30298X().preloadAds(next);
                    } else {
                        this.f8992f.m30299W().preloadAds(next);
                    }
                }
            }
        }

        /* renamed from: j */
        public final void m30361j() {
            C2251d.C2256e<Boolean> eVar = C2251d.C2256e.f8742s0;
            String str = (String) this.f8992f.m30291a(C2251d.C2256e.f8736r0);
            boolean z = false;
            boolean z2 = false;
            if (str.length() > 0) {
                Iterator<String> it = C2386e.m29982a(str).iterator();
                while (true) {
                    z = z2;
                    if (!it.hasNext()) {
                        break;
                    }
                    AppLovinAdSize fromString = AppLovinAdSize.fromString(it.next());
                    if (fromString != null) {
                        this.f8992f.m30241r().m30015f(C2246b.m30647a(fromString, AppLovinAdType.REGULAR, this.f8992f));
                        if (AppLovinAdSize.INTERSTITIAL.getLabel().equals(fromString.getLabel())) {
                            m30368a(eVar);
                            z2 = true;
                        }
                    }
                }
            }
            if (!z) {
                m30368a(eVar);
            }
        }

        /* renamed from: k */
        public final void m30360k() {
            if (((Boolean) this.f8992f.m30291a(C2251d.C2256e.f8748t0)).booleanValue()) {
                this.f8992f.m30240s().m30015f(C2246b.m30627h(this.f8992f));
            }
        }

        /* renamed from: l */
        public final void m30359l() {
            if (!this.f8992f.m30309M()) {
                C2418k kVar = new C2418k();
                kVar.m29878a();
                kVar.m29877a(AppLovinSdk.TAG);
                kVar.m29876a("Version", AppLovinSdk.VERSION);
                kVar.m29876a("Plugin Version", this.f8992f.m30291a(C2251d.C2256e.f8620W2));
                kVar.m29876a("SafeDK Version", AbstractC2426r.m29772f());
                kVar.m29876a("OS", AbstractC2426r.m29775e() + " " + Build.VERSION.SDK_INT);
                StringBuilder sb = new StringBuilder();
                sb.append(this.f8992f.m30246m().m30221d().f9090b);
                sb.append(" (use this for test devices)");
                kVar.m29876a("GAID", sb.toString());
                kVar.m29876a("SDK Key", this.f8992f.m30269b0());
                C2345m.C2350e b = this.f8992f.m30246m().m30225b();
                kVar.m29876a("Model", b.f9122d);
                kVar.m29876a("Locale", b.f9129k);
                kVar.m29876a("Emulator", Boolean.valueOf(b.f9102A));
                kVar.m29876a("Application ID", m30487c().getPackageName());
                kVar.m29876a("Test Mode On", Boolean.valueOf(this.f8992f.m30314H()));
                kVar.m29876a("Verbose Logging On", Boolean.valueOf(this.f8992f.m30268c().m30583e()));
                kVar.m29876a("Mediation Provider", this.f8992f.m30300V());
                kVar.m29876a("TG", AbstractC2426r.m29816a(C2251d.C2258g.f8799i, this.f8992f));
                kVar.m29876a("LTG", AbstractC2426r.m29816a(C2251d.C2258g.f8800j, this.f8992f));
                kVar.m29876a("ARU", C2328i.m30349b(m30487c()));
                kVar.m29876a("HUC", C2328i.m30353a(m30487c()));
                kVar.m29876a("DNS", C2328i.m30347c(m30487c()));
                kVar.m29878a();
                C2374t.m30037g(AppLovinSdk.TAG, kVar.toString());
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb;
            StringBuilder sb2;
            String str = "succeeded";
            long currentTimeMillis = System.currentTimeMillis();
            m30491a("Initializing AppLovin SDK " + AppLovinSdk.VERSION + "...");
            try {
                this.f8992f.m30248k().m30515d();
                this.f8992f.m30248k().m30516c(C2267f.f8881e);
                this.f8992f.m30239t().m30077a(m30487c());
                this.f8992f.m30239t().m30067b(m30487c());
                m30364g();
                m30363h();
                m30366e();
                this.f8992f.m30237v().m18858a();
                m30365f();
                this.f8992f.m30246m().m30220e();
                this.f8992f.m30319C().m29863a();
                this.f8992f.m30278a(true);
                m30359l();
                this.f8992f.m30247l().m30152a();
                ((EventServiceImpl) this.f8992f.m30297Y()).maybeTrackAppOpenEvent();
                this.f8992f.m30276b().m30736a();
                if (this.f8992f.m30252h0().m30999a()) {
                    this.f8992f.m30252h0().m30993b();
                }
                if (((Boolean) this.f8992f.m30291a(C2251d.C2256e.f8532F)).booleanValue()) {
                    this.f8992f.m30294a(((Long) this.f8992f.m30291a(C2251d.C2256e.f8537G)).longValue());
                }
                sb2 = new StringBuilder();
                sb2.append("AppLovin SDK ");
                sb2.append(AppLovinSdk.VERSION);
                sb2.append(" initialization ");
                sb = sb2;
            } catch (Throwable th) {
                try {
                    m30490a("Unable to initialize SDK.", th);
                    this.f8992f.m30278a(false);
                    if (((Boolean) this.f8992f.m30291a(C2251d.C2256e.f8532F)).booleanValue()) {
                        this.f8992f.m30294a(((Long) this.f8992f.m30291a(C2251d.C2256e.f8537G)).longValue());
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("AppLovin SDK ");
                    sb3.append(AppLovinSdk.VERSION);
                    sb3.append(" initialization ");
                    sb = sb3;
                    if (this.f8992f.m30310L()) {
                        sb = sb3;
                    }
                } catch (Throwable th2) {
                    if (((Boolean) this.f8992f.m30291a(C2251d.C2256e.f8532F)).booleanValue()) {
                        this.f8992f.m30294a(((Long) this.f8992f.m30291a(C2251d.C2256e.f8537G)).longValue());
                    }
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append("AppLovin SDK ");
                    sb4.append(AppLovinSdk.VERSION);
                    sb4.append(" initialization ");
                    if (!this.f8992f.m30310L()) {
                        str = "failed";
                    }
                    sb4.append(str);
                    sb4.append(" in ");
                    sb4.append(System.currentTimeMillis() - currentTimeMillis);
                    sb4.append("ms");
                    m30491a(sb4.toString());
                    throw th2;
                }
            }
            if (this.f8992f.m30310L()) {
                sb = sb2;
                sb.append(str);
                sb.append(" in ");
                sb.append(System.currentTimeMillis() - currentTimeMillis);
                sb.append("ms");
                m30491a(sb.toString());
            }
            str = "failed";
            sb.append(str);
            sb.append(" in ");
            sb.append(System.currentTimeMillis() - currentTimeMillis);
            sb.append("ms");
            m30491a(sb.toString());
        }
    }

    public C2270g(C2341l lVar, AbstractC2273b bVar) {
        this.f8905d = new WeakReference<>(bVar);
        this.f8904c = lVar;
    }

    /* renamed from: a */
    public void m30511a(long j) {
        synchronized (this.f8903b) {
            m30507c();
            this.f8906e = j;
            this.f8902a = C2423p.m29844a(j, this.f8904c, new RunnableC2271a());
            if (!((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8478O4)).booleanValue()) {
                this.f8904c.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_paused"));
                this.f8904c.m30317E().registerReceiver(this, new IntentFilter("com.applovin.application_resumed"));
                this.f8904c.m30317E().registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_displayed"));
                this.f8904c.m30317E().registerReceiver(this, new IntentFilter("com.applovin.fullscreen_ad_hidden"));
            }
            if (((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8477N4)).booleanValue() && (this.f8904c.m30235x().m30056b() || this.f8904c.m30236w().m29746a())) {
                this.f8902a.m29841b();
            }
        }
    }

    /* renamed from: a */
    public boolean m30512a() {
        boolean z;
        synchronized (this.f8903b) {
            z = this.f8902a != null;
        }
        return z;
    }

    /* renamed from: b */
    public long m30509b() {
        long a;
        synchronized (this.f8903b) {
            a = this.f8902a != null ? this.f8902a.m29845a() : -1L;
        }
        return a;
    }

    /* renamed from: c */
    public void m30507c() {
        synchronized (this.f8903b) {
            if (this.f8902a != null) {
                this.f8902a.m29837d();
                m30502h();
            }
        }
    }

    /* renamed from: d */
    public void m30506d() {
        synchronized (this.f8903b) {
            if (this.f8902a != null) {
                this.f8902a.m29841b();
            }
        }
    }

    /* renamed from: e */
    public void m30505e() {
        synchronized (this.f8903b) {
            if (this.f8902a != null) {
                this.f8902a.m29839c();
            }
        }
    }

    /* renamed from: f */
    public void m30504f() {
        if (((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8476M4)).booleanValue()) {
            m30506d();
        }
    }

    /* renamed from: g */
    public void m30503g() {
        AbstractC2273b bVar;
        if (((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8476M4)).booleanValue()) {
            synchronized (this.f8903b) {
                if (this.f8904c.m30235x().m30056b()) {
                    this.f8904c.m30262d0().m30044b("AdRefreshManager", "Waiting for the full screen ad to be dismissed to resume the timer.");
                    return;
                }
                boolean z = false;
                if (this.f8902a != null) {
                    long j = this.f8906e;
                    long b = m30509b();
                    long longValue = ((Long) this.f8904c.m30291a(C2251d.C2255d.f8475L4)).longValue();
                    if (longValue < 0 || j - b <= longValue) {
                        this.f8902a.m29839c();
                        z = false;
                    } else {
                        m30507c();
                        z = true;
                    }
                }
                if (z && (bVar = this.f8905d.get()) != null) {
                    bVar.onAdRefresh();
                }
            }
        }
    }

    /* renamed from: h */
    public final void m30502h() {
        synchronized (this.f8903b) {
            this.f8902a = null;
            if (!((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8478O4)).booleanValue()) {
                this.f8904c.m30317E().unregisterReceiver(this);
            }
        }
    }

    /* renamed from: i */
    public final void m30501i() {
        if (((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8477N4)).booleanValue()) {
            m30506d();
        }
    }

    /* renamed from: j */
    public final void m30500j() {
        if (((Boolean) this.f8904c.m30291a(C2251d.C2255d.f8477N4)).booleanValue()) {
            synchronized (this.f8903b) {
                if (this.f8904c.m30236w().m29746a()) {
                    this.f8904c.m30262d0().m30044b("AdRefreshManager", "Waiting for the application to enter foreground to resume the timer.");
                    return;
                }
                if (this.f8902a != null) {
                    this.f8902a.m29839c();
                }
            }
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
    public void onReceive(Context context, Intent intent, Map<String, Object> map) {
        String action = intent.getAction();
        if ("com.applovin.application_paused".equals(action)) {
            m30504f();
        } else if ("com.applovin.application_resumed".equals(action)) {
            m30503g();
        } else if ("com.applovin.fullscreen_ad_displayed".equals(action)) {
            m30501i();
        } else if ("com.applovin.fullscreen_ad_hidden".equals(action)) {
            m30500j();
        }
    }
}
