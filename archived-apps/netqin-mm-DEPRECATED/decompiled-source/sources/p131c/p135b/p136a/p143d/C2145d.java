package p131c.p135b.p136a.p143d;

import android.app.Activity;
import android.graphics.Point;
import android.text.TextUtils;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxErrorCodes;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.sdk.AppLovinMediationProvider;
import com.applovin.sdk.AppLovinPostbackListener;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.google.common.collect.RegularImmutableMap;
import com.inmobi.ads.C8081af;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.p147e.C2166a;
import p131c.p135b.p136a.p143d.p147e.C2167b;
import p131c.p135b.p136a.p143d.p147e.C2168c;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2345m;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p149a.C2238c;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p151e.C2268g;
import p131c.p135b.p136a.p148e.p152q.C2356a;
import p131c.p135b.p136a.p148e.p152q.C2360b;
import p131c.p135b.p136a.p148e.p152q.C2365e;
import p131c.p135b.p136a.p148e.p152q.C2368f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2384d;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2388g;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.d.d */
/* loaded from: classes-dex2jar.jar:c/b/a/d/d.class */
public class C2145d {

    /* renamed from: a */
    public final C2341l f8201a;

    /* renamed from: b */
    public final C2374t f8202b;

    /* renamed from: c */
    public final AbstractC2147b f8203c;

    /* renamed from: d */
    public C2384d f8204d;

    /* renamed from: c.b.a.d.d$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$a.class */
    public class RunnableC2146a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2135c.C2139d f8205a;

        public RunnableC2146a(C2135c.C2139d dVar) {
            this.f8205a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2145d.this.f8202b.m30044b("AdHiddenCallbackTimeoutManager", "Timing out...");
            C2145d.this.f8203c.mo30876b(this.f8205a);
        }
    }

    /* renamed from: c.b.a.d.d$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$b.class */
    public interface AbstractC2147b {
        /* renamed from: b */
        void mo30876b(C2135c.C2139d dVar);
    }

    /* renamed from: c.b.a.d.d$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$c.class */
    public class C2148c extends C2270g.AbstractRunnableC2278c {

        /* renamed from: f */
        public final Activity f8207f;

        /* renamed from: c.b.a.d.d$c$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$c$a.class */
        public class RunnableC2149a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2135c.C2141f f8208a;

            public RunnableC2149a(C2135c.C2141f fVar) {
                this.f8208a = fVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2148c cVar = C2148c.this;
                cVar.m30491a("Auto-initing adapter: " + this.f8208a);
                C2148c.this.f8916a.m30256f0().m30792a(this.f8208a, C2148c.this.f8207f);
            }
        }

        public C2148c(Activity activity, C2341l lVar) {
            super("TaskAutoInitAdapters", lVar, true);
            this.f8207f = activity;
        }

        /* renamed from: a */
        public final List<C2135c.C2141f> m30873a(JSONArray jSONArray, JSONObject jSONObject) {
            ArrayList arrayList = new ArrayList(jSONArray.length());
            for (int i = 0; i < jSONArray.length(); i++) {
                arrayList.add(new C2135c.C2141f(C2390i.m29934a(jSONArray, i, (JSONObject) null, this.f8916a), jSONObject, this.f8916a));
            }
            return arrayList;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            JSONException th;
            String str2 = (String) this.f8916a.m30290a(C2251d.C2258g.f8816z);
            if (C2422o.m29851b(str2)) {
                if (this.f8207f == null) {
                    C2374t.m30034j(AppLovinSdk.TAG, "Failed to initialize 3rd-party SDKs. Please contact us at devsupport@applovin.com for more information.");
                    this.f8916a.m30248k().m30518b(C2267f.f8895s, 1L);
                    return;
                }
                try {
                    JSONObject jSONObject = new JSONObject(str2);
                    List<C2135c.C2141f> a = m30873a(C2390i.m29912b(jSONObject, this.f8916a.m30314H() ? "test_mode_auto_init_adapters" : "auto_init_adapters", new JSONArray(), this.f8916a), jSONObject);
                    if (a.size() > 0) {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Auto-initing ");
                        sb.append(a.size());
                        sb.append(" adapters");
                        sb.append(this.f8916a.m30314H() ? " in test mode" : "");
                        sb.append("...");
                        m30491a(sb.toString());
                        this.f8916a.m30266c(AppLovinMediationProvider.MAX);
                        for (C2135c.C2141f fVar : a) {
                            this.f8916a.m30249j().m18816b().execute(new RunnableC2149a(fVar));
                        }
                    }
                } catch (JSONException e) {
                    th = e;
                    str = "Failed to parse auto-init adapters JSON";
                    m30490a(str, th);
                } catch (Throwable th2) {
                    th = th2;
                    str = "Failed to auto-init adapters";
                    m30490a(str, th);
                }
            }
        }
    }

    /* renamed from: c.b.a.d.d$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$d.class */
    public class C2150d extends C2270g.AbstractRunnableC2278c {

        /* renamed from: j */
        public static String f8210j;

        /* renamed from: f */
        public final MaxAdFormat f8211f;

        /* renamed from: g */
        public final boolean f8212g;

        /* renamed from: h */
        public final Activity f8213h;

        /* renamed from: i */
        public final AbstractC2154c f8214i;

        /* renamed from: c.b.a.d.d$d$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$d$a.class */
        public class RunnableC2151a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2135c.C2144h f8215a;

            /* renamed from: b */
            public final /* synthetic */ AtomicBoolean f8216b;

            /* renamed from: c */
            public final /* synthetic */ List f8217c;

            /* renamed from: d */
            public final /* synthetic */ CountDownLatch f8218d;

            /* renamed from: c.b.a.d.d$d$a$a */
            /* loaded from: classes-dex2jar.jar:c/b/a/d/d$d$a$a.class */
            public class C2152a implements C2135c.C2142g.AbstractC2143a {
                public C2152a() {
                }

                @Override // p131c.p135b.p136a.p143d.C2135c.C2142g.AbstractC2143a
                /* renamed from: a */
                public void mo30860a(C2135c.C2142g gVar) {
                    if (RunnableC2151a.this.f8216b.get() && gVar != null) {
                        RunnableC2151a.this.f8217c.add(gVar);
                    }
                    RunnableC2151a.this.f8218d.countDown();
                }
            }

            public RunnableC2151a(C2135c.C2144h hVar, AtomicBoolean atomicBoolean, List list, CountDownLatch countDownLatch) {
                this.f8215a = hVar;
                this.f8216b = atomicBoolean;
                this.f8217c = list;
                this.f8218d = countDownLatch;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2150d.this.m30871a(this.f8215a, new C2152a());
            }
        }

        /* renamed from: c.b.a.d.d$d$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$d$b.class */
        public class RunnableC2153b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2135c.C2144h f8221a;

            /* renamed from: b */
            public final /* synthetic */ C2135c.C2142g.AbstractC2143a f8222b;

            public RunnableC2153b(C2135c.C2144h hVar, C2135c.C2142g.AbstractC2143a aVar) {
                this.f8221a = hVar;
                this.f8222b = aVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2150d.this.f8916a.m30254g0().collectSignal(C2150d.this.f8211f, this.f8221a, C2150d.this.f8213h, this.f8222b);
            }
        }

        /* renamed from: c.b.a.d.d$d$c */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$d$c.class */
        public interface AbstractC2154c {
            /* renamed from: a */
            void mo19185a(JSONArray jSONArray);
        }

        static {
            try {
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(m30867a("APPLOVIN_NETWORK", "com.applovin.mediation.adapters.AppLovinMediationAdapter"));
                m30867a("FACEBOOK_NETWORK", "com.applovin.mediation.adapters.FacebookMediationAdapter").put("run_on_ui_thread", false);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("signal_providers", jSONArray);
                f8210j = jSONObject.toString();
            } catch (JSONException e) {
            }
        }

        public C2150d(MaxAdFormat maxAdFormat, boolean z, Activity activity, C2341l lVar, AbstractC2154c cVar) {
            super("TaskCollectSignals", lVar);
            this.f8211f = maxAdFormat;
            this.f8212g = z;
            this.f8213h = activity;
            this.f8214i = cVar;
        }

        /* renamed from: a */
        public static JSONObject m30867a(String str, String str2) throws JSONException {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("name", str);
            jSONObject.put("class", str2);
            jSONObject.put("adapter_timeout_ms", 30000);
            jSONObject.put("max_signal_length", RegularImmutableMap.SHORT_MAX_SIZE);
            jSONObject.put("scode", "");
            return jSONObject;
        }

        /* renamed from: a */
        public final String m30868a(String str, C2251d.C2256e<Integer> eVar) {
            int intValue;
            return (!TextUtils.isEmpty(str) && (intValue = ((Integer) this.f8916a.m30291a(eVar)).intValue()) > 0) ? str.substring(0, Math.min(str.length(), intValue)) : "";
        }

        /* renamed from: a */
        public final void m30871a(C2135c.C2144h hVar, C2135c.C2142g.AbstractC2143a aVar) {
            RunnableC2153b bVar = new RunnableC2153b(hVar, aVar);
            if (hVar.m30896g()) {
                m30491a("Running signal collection for " + hVar + " on the main thread");
                this.f8213h.runOnUiThread(bVar);
                return;
            }
            m30491a("Running signal collection for " + hVar + " on the background thread");
            bVar.run();
        }

        /* renamed from: a */
        public final void m30866a(Collection<C2135c.C2142g> collection) {
            String str;
            String a;
            JSONArray jSONArray = new JSONArray();
            for (C2135c.C2142g gVar : collection) {
                try {
                    JSONObject jSONObject = new JSONObject();
                    C2135c.C2144h a2 = gVar.m30890a();
                    jSONObject.put("name", a2.m30902d());
                    jSONObject.put("class", a2.m30906c());
                    jSONObject.put("adapter_version", m30868a(gVar.m30885c(), C2251d.C2255d.f8468E4));
                    jSONObject.put("sdk_version", m30868a(gVar.m30887b(), C2251d.C2255d.f8469F4));
                    JSONObject jSONObject2 = new JSONObject();
                    if (C2422o.m29851b(gVar.m30883e())) {
                        str = "error_message";
                        a = gVar.m30883e();
                    } else {
                        str = "signal";
                        a = m30868a(gVar.m30884d(), C2251d.C2255d.f8470G4);
                    }
                    jSONObject2.put(str, a);
                    jSONObject.put("data", jSONObject2);
                    jSONArray.put(jSONObject);
                    m30491a("Collected signal from " + a2);
                } catch (JSONException e) {
                    m30490a("Failed to create signal data", e);
                }
            }
            m30865a(jSONArray);
        }

        /* renamed from: a */
        public final void m30865a(JSONArray jSONArray) {
            AbstractC2154c cVar = this.f8214i;
            if (cVar != null) {
                cVar.mo19185a(jSONArray);
            }
        }

        /* renamed from: a */
        public final void m30864a(JSONArray jSONArray, JSONObject jSONObject) throws JSONException, InterruptedException {
            List a = C2386e.m29984a(jSONArray.length());
            AtomicBoolean atomicBoolean = new AtomicBoolean(true);
            CountDownLatch countDownLatch = new CountDownLatch(jSONArray.length());
            ScheduledExecutorService b = this.f8916a.m30249j().m18816b();
            for (int i = 0; i < jSONArray.length(); i++) {
                b.execute(new RunnableC2151a(new C2135c.C2144h(jSONArray.getJSONObject(i), jSONObject, this.f8916a), atomicBoolean, a, countDownLatch));
            }
            countDownLatch.await(((Long) this.f8916a.m30291a(C2251d.C2255d.f8467D4)).longValue(), TimeUnit.MILLISECONDS);
            atomicBoolean.set(false);
            m30866a(a);
        }

        /* renamed from: b */
        public final void m30862b(String str, Throwable th) {
            m30490a("No signals collected: " + str, th);
            m30865a(new JSONArray());
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            Throwable th;
            try {
                JSONObject jSONObject = new JSONObject((String) this.f8916a.m30273b(C2251d.C2258g.f8815y, f8210j));
                JSONArray b = C2390i.m29912b(jSONObject, "signal_providers", (JSONArray) null, this.f8916a);
                JSONArray jSONArray = b;
                if (this.f8212g) {
                    List<String> b2 = this.f8916a.m30275b(C2251d.C2255d.f8496g5);
                    jSONArray = new JSONArray();
                    for (int i = 0; i < b.length(); i++) {
                        JSONObject a = C2390i.m29934a(b, i, (JSONObject) null, this.f8916a);
                        if (b2.contains(C2390i.m29913b(a, "class", (String) null, this.f8916a))) {
                            jSONArray.put(a);
                        }
                    }
                }
                if (jSONArray.length() == 0) {
                    m30862b("No signal providers found", null);
                } else {
                    m30864a(jSONArray, jSONObject);
                }
            } catch (InterruptedException e) {
                th = e;
                str = "Failed to wait for signals";
                m30862b(str, th);
            } catch (JSONException e2) {
                th = e2;
                str = "Failed to parse signals JSON";
                m30862b(str, th);
            } catch (Throwable th2) {
                th = th2;
                str = "Failed to collect signals";
                m30862b(str, th);
            }
        }
    }

    /* renamed from: c.b.a.d.d$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$e.class */
    public class C2155e extends C2270g.AbstractRunnableC2278c {

        /* renamed from: f */
        public final String f8224f;

        /* renamed from: g */
        public final MaxAdFormat f8225g;

        /* renamed from: h */
        public final C2173h f8226h;

        /* renamed from: i */
        public final JSONArray f8227i;

        /* renamed from: j */
        public final Activity f8228j;

        /* renamed from: k */
        public final MaxAdListener f8229k;

        /* renamed from: c.b.a.d.d$e$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$e$a.class */
        public class C2156a extends C2270g.AbstractC2288f0<JSONObject> {
            public C2156a(C2360b bVar, C2341l lVar) {
                super(bVar, lVar);
            }

            @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2288f0, p131c.p135b.p136a.p148e.p152q.C2356a.AbstractC2359c
            /* renamed from: a */
            public void mo18839a(int i) {
                C2155e.this.m30859a(i);
            }

            /* renamed from: a */
            public void mo18838a(JSONObject jSONObject, int i) {
                if (i == 200) {
                    C2390i.m29915b(jSONObject, "ad_fetch_latency_millis", this.f8939k.m30186a(), this.f8916a);
                    C2390i.m29915b(jSONObject, "ad_fetch_response_size", this.f8939k.m30183b(), this.f8916a);
                    C2155e.this.m30855a(jSONObject);
                    return;
                }
                C2155e.this.m30859a(i);
            }
        }

        public C2155e(String str, MaxAdFormat maxAdFormat, C2173h hVar, JSONArray jSONArray, Activity activity, C2341l lVar, MaxAdListener maxAdListener) {
            super("TaskFetchMediatedAd " + str, lVar);
            this.f8224f = str;
            this.f8225g = maxAdFormat;
            this.f8226h = hVar;
            this.f8227i = jSONArray;
            this.f8228j = activity;
            this.f8229k = maxAdListener;
        }

        /* renamed from: a */
        public final void m30859a(int i) {
            boolean z = i != 204;
            C2374t d0 = this.f8916a.m30262d0();
            String b = m30489b();
            d0.m30049a(b, Boolean.valueOf(z), "Unable to fetch " + this.f8224f + " ad: server returned " + i);
            if (i == -800) {
                this.f8916a.m30248k().m30522a(C2267f.f8894r);
            }
            m30854b(i);
        }

        /* renamed from: a */
        public final void m30856a(C2268g gVar) {
            long b = gVar.m30519b(C2267f.f8882f);
            long currentTimeMillis = System.currentTimeMillis();
            if (currentTimeMillis - b > TimeUnit.MINUTES.toMillis(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8550I2)).intValue())) {
                gVar.m30518b(C2267f.f8882f, currentTimeMillis);
                gVar.m30516c(C2267f.f8883g);
            }
        }

        /* renamed from: a */
        public final void m30855a(JSONObject jSONObject) {
            try {
                C2389h.m29952b(jSONObject, this.f8916a);
                C2389h.m29957a(jSONObject, this.f8916a);
                C2389h.m29946e(jSONObject, this.f8916a);
                C2167b.m30815f(jSONObject, this.f8916a);
                C2167b.m30813g(jSONObject, this.f8916a);
                this.f8916a.m30249j().m18827a(m30853b(jSONObject));
            } catch (Throwable th) {
                m30490a("Unable to process mediated ad response", th);
                throw new RuntimeException("Unable to process ad: " + th);
            }
        }

        /* renamed from: b */
        public final C2160h m30853b(JSONObject jSONObject) {
            return new C2160h(this.f8224f, this.f8225g, jSONObject, this.f8228j, this.f8916a, this.f8229k);
        }

        /* renamed from: b */
        public final void m30854b(int i) {
            C2391j.m29902a(this.f8229k, this.f8224f, i);
        }

        /* renamed from: c */
        public final void m30852c(JSONObject jSONObject) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("loaded", new JSONArray((Collection) this.f8916a.m30259e0().m30789a()));
                jSONObject2.put("failed", new JSONArray((Collection) this.f8916a.m30259e0().m30785b()));
                jSONObject.put("classname_info", jSONObject2);
                jSONObject.put("initialized_adapters", this.f8916a.m30256f0().m30790c());
                jSONObject.put("initialized_adapter_classnames", new JSONArray((Collection) this.f8916a.m30256f0().m30791b()));
                jSONObject.put("installed_mediation_adapters", C2168c.m30809a(this.f8916a).m30803a());
            } catch (Exception e) {
                m30490a("Failed to populate adapter classnames", e);
                throw new RuntimeException("Failed to populate classnames: " + e);
            }
        }

        /* renamed from: d */
        public final void m30851d(JSONObject jSONObject) throws JSONException {
            JSONArray jSONArray = this.f8227i;
            if (jSONArray != null) {
                jSONObject.put("signal_data", jSONArray);
            }
        }

        /* renamed from: e */
        public final String m30850e() {
            return C2167b.m30814g(this.f8916a);
        }

        /* renamed from: e */
        public final void m30849e(JSONObject jSONObject) throws JSONException {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("ad_unit_id", this.f8224f);
            jSONObject2.put("ad_format", C2168c.m30804b(this.f8225g));
            if (this.f8226h != null && ((Boolean) this.f8916a.m30291a(C2251d.C2255d.f8464A4)).booleanValue()) {
                jSONObject2.put("extra_parameters", C2390i.m29938a((Map<String, ?>) C2390i.m29944a(this.f8226h.m30801a())));
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8723p)).booleanValue()) {
                jSONObject2.put("n", String.valueOf(this.f8916a.m30321A().m29998a(this.f8224f)));
            }
            jSONObject.put("ad_info", jSONObject2);
        }

        /* renamed from: f */
        public final String m30848f() {
            return C2167b.m30812h(this.f8916a);
        }

        /* renamed from: f */
        public final void m30847f(JSONObject jSONObject) throws JSONException {
            C2345m m = this.f8916a.m30246m();
            C2345m.C2350e b = m.m30225b();
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("brand", b.f9123e);
            jSONObject2.put("brand_name", b.f9124f);
            jSONObject2.put("hardware", b.f9125g);
            jSONObject2.put("api_level", b.f9121c);
            jSONObject2.put("carrier", b.f9128j);
            jSONObject2.put("country_code", b.f9127i);
            jSONObject2.put("locale", b.f9129k);
            jSONObject2.put("model", b.f9122d);
            jSONObject2.put("os", b.f9120b);
            jSONObject2.put("platform", b.f9119a);
            jSONObject2.put("revision", b.f9126h);
            jSONObject2.put("orientation_lock", b.f9130l);
            jSONObject2.put("tz_offset", b.f9136r);
            jSONObject2.put("aida", C2422o.m29853a(b.f9115N));
            jSONObject2.put("wvvc", b.f9137s);
            jSONObject2.put("adns", b.f9131m);
            jSONObject2.put("adnsd", b.f9132n);
            jSONObject2.put("xdpi", b.f9133o);
            jSONObject2.put("ydpi", b.f9134p);
            jSONObject2.put("screen_size_in", b.f9135q);
            jSONObject2.put("sim", C2422o.m29853a(b.f9102A));
            jSONObject2.put("gy", C2422o.m29853a(b.f9103B));
            jSONObject2.put("is_tablet", C2422o.m29853a(b.f9104C));
            jSONObject2.put("tv", C2422o.m29853a(b.f9105D));
            jSONObject2.put("vs", C2422o.m29853a(b.f9106E));
            jSONObject2.put("lpm", b.f9107F);
            jSONObject2.put("fs", b.f9109H);
            jSONObject2.put("tds", b.f9110I);
            jSONObject2.put("fm", b.f9111J.f9146b);
            jSONObject2.put("tm", b.f9111J.f9145a);
            jSONObject2.put("lmt", b.f9111J.f9147c);
            jSONObject2.put("lm", b.f9111J.f9148d);
            jSONObject2.put("adr", C2422o.m29853a(b.f9138t));
            jSONObject2.put(AvidVideoPlaybackListenerImpl.VOLUME, b.f9142x);
            jSONObject2.put("sb", b.f9143y);
            jSONObject2.put("network", C2389h.m29954b(this.f8916a));
            jSONObject2.put(C8081af.f31598d, b.f9140v);
            jSONObject2.put("font", b.f9141w);
            if (C2422o.m29851b(b.f9144z)) {
                jSONObject2.put("ua", b.f9144z);
            }
            if (C2422o.m29851b(b.f9108G)) {
                jSONObject2.put("so", b.f9108G);
            }
            jSONObject2.put("bt_ms", String.valueOf(b.f9118Q));
            C2345m.C2349d dVar = b.f9139u;
            if (dVar != null) {
                jSONObject2.put("act", dVar.f9100a);
                jSONObject2.put("acm", dVar.f9101b);
            }
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
            Point a = C2388g.m29975a(m30487c());
            jSONObject2.put("dx", Integer.toString(a.x));
            jSONObject2.put("dy", Integer.toString(a.y));
            float f = b.f9116O;
            if (f > 0.0f) {
                jSONObject2.put("da", f);
            }
            float f2 = b.f9117P;
            if (f2 > 0.0f) {
                jSONObject2.put("dm", f2);
            }
            m30845g(jSONObject2);
            jSONObject.put("device_info", jSONObject2);
            C2345m.C2348c c = m.m30223c();
            JSONObject jSONObject3 = new JSONObject();
            jSONObject3.put("package_name", c.f9093c);
            jSONObject3.put("installer_name", c.f9094d);
            jSONObject3.put("app_name", c.f9091a);
            jSONObject3.put("app_version", c.f9092b);
            jSONObject3.put("installed_at", c.f9098h);
            jSONObject3.put("tg", c.f9095e);
            jSONObject3.put("ltg", c.f9096f);
            jSONObject3.put("api_did", this.f8916a.m30291a(C2251d.C2256e.f8675h));
            jSONObject3.put("sdk_version", AppLovinSdk.VERSION);
            jSONObject3.put("build", 131);
            jSONObject3.put("first_install", String.valueOf(this.f8916a.m30255g()));
            jSONObject3.put("first_install_v2", String.valueOf(!this.f8916a.m30253h()));
            jSONObject3.put("test_ads", c.f9099i);
            jSONObject3.put("debug", Boolean.toString(c.f9097g));
            String Q = this.f8916a.m30305Q();
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8585P2)).booleanValue() && C2422o.m29851b(Q)) {
                jSONObject3.put("cuid", Q);
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8600S2)).booleanValue()) {
                jSONObject3.put("compass_random_token", this.f8916a.m30304R());
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8610U2)).booleanValue()) {
                jSONObject3.put("applovin_random_token", this.f8916a.m30303S());
            }
            String str = (String) this.f8916a.m30291a(C2251d.C2256e.f8620W2);
            if (C2422o.m29851b(str)) {
                jSONObject3.put("plugin_version", str);
            }
            jSONObject.put("app_info", jSONObject3);
            C2356a.C2358b a2 = this.f8916a.m30251i().m30196a();
            if (a2 != null) {
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("lrm_ts_ms", String.valueOf(a2.m30180a()));
                jSONObject4.put("lrm_url", a2.m30179b());
                jSONObject4.put("lrm_ct_ms", String.valueOf(a2.m30177d()));
                jSONObject4.put("lrm_rs", String.valueOf(a2.m30178c()));
                jSONObject.put("connection_info", jSONObject4);
            }
        }

        /* renamed from: g */
        public final JSONObject m30846g() throws JSONException {
            JSONObject jSONObject = new JSONObject();
            m30849e(jSONObject);
            m30847f(jSONObject);
            m30851d(jSONObject);
            m30852c(jSONObject);
            jSONObject.put("sc", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8699l)));
            jSONObject.put("sc2", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8705m)));
            jSONObject.put("sc3", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8711n)));
            jSONObject.put("server_installed_at", C2422o.m29847e((String) this.f8916a.m30291a(C2251d.C2256e.f8717o)));
            String str = (String) this.f8916a.m30290a(C2251d.C2258g.f8791A);
            if (C2422o.m29851b(str)) {
                jSONObject.put("persisted_data", C2422o.m29847e(str));
            }
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8766w3)).booleanValue()) {
                m30844h(jSONObject);
            }
            jSONObject.put("mediation_provider", this.f8916a.m30300V());
            return jSONObject;
        }

        /* renamed from: g */
        public final void m30845g(JSONObject jSONObject) throws JSONException {
            C2345m.C2347b d = this.f8916a.m30246m().m30221d();
            String str = d.f9090b;
            if (C2422o.m29851b(str)) {
                jSONObject.put("idfa", str);
            }
            jSONObject.put("dnt", d.f9089a);
        }

        /* renamed from: h */
        public final void m30844h(JSONObject jSONObject) throws JSONException {
            C2268g k = this.f8916a.m30248k();
            jSONObject.put("li", String.valueOf(k.m30519b(C2267f.f8881e)));
            jSONObject.put("si", String.valueOf(k.m30519b(C2267f.f8883g)));
            jSONObject.put("pf", String.valueOf(k.m30519b(C2267f.f8887k)));
            jSONObject.put("mpf", String.valueOf(k.m30519b(C2267f.f8894r)));
            jSONObject.put("gpf", String.valueOf(k.m30519b(C2267f.f8888l)));
            jSONObject.put("asoac", String.valueOf(k.m30519b(C2267f.f8892p)));
        }

        @Override // java.lang.Runnable
        public void run() {
            m30491a("Fetching next ad for ad unit id: " + this.f8224f + " and format: " + this.f8225g);
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8655d3)).booleanValue() && AbstractC2426r.m29778d()) {
                m30491a("User is connected to a VPN");
            }
            C2268g k = this.f8916a.m30248k();
            k.m30522a(C2267f.f8893q);
            if (k.m30519b(C2267f.f8882f) == 0) {
                k.m30518b(C2267f.f8882f, System.currentTimeMillis());
            }
            try {
                JSONObject g = m30846g();
                HashMap hashMap = new HashMap();
                hashMap.put("rid", UUID.randomUUID().toString());
                if (g.has("huc")) {
                    hashMap.put("huc", String.valueOf(C2390i.m29928a(g, "huc", (Boolean) false, this.f8916a)));
                }
                if (g.has("aru")) {
                    hashMap.put("aru", String.valueOf(C2390i.m29928a(g, "aru", (Boolean) false, this.f8916a)));
                }
                if (g.has("dns")) {
                    hashMap.put("dns", String.valueOf(C2390i.m29928a(g, "dns", (Boolean) false, this.f8916a)));
                }
                if (!((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
                    hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f8916a.m30269b0());
                }
                Map<String, String> map = null;
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8721o3)).booleanValue()) {
                    map = C2070d.m31119b(((Long) this.f8916a.m30291a(C2251d.C2256e.f8727p3)).longValue());
                }
                m30856a(k);
                C2360b.C2361a c = C2360b.m30174a(this.f8916a).mo30095b("POST").mo30094b(map).mo30102a(m30850e()).mo30091c(m30848f()).mo30101a((Map<String, String>) hashMap).mo30100a(g).mo30103a((C2360b.C2361a) new JSONObject()).mo30097b(((Long) this.f8916a.m30291a(C2251d.C2255d.f8505y4)).intValue()).mo30105a(((Integer) this.f8916a.m30291a(C2251d.C2256e.f8770x2)).intValue()).mo30092c(((Long) this.f8916a.m30291a(C2251d.C2255d.f8504x4)).intValue());
                c.m30158b(true);
                C2156a aVar = new C2156a(c.mo30106a(), this.f8916a);
                aVar.m30469a(C2251d.C2255d.f8502v4);
                aVar.m30465b(C2251d.C2255d.f8503w4);
                this.f8916a.m30249j().m18827a(aVar);
            } catch (Throwable th) {
                m30490a("Unable to fetch ad " + this.f8224f, th);
                throw new RuntimeException("Unable to fetch ad: " + th);
            }
        }
    }

    /* renamed from: c.b.a.d.d$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$f.class */
    public class C2157f extends C2270g.AbstractRunnableC2278c {

        /* renamed from: f */
        public final String f8231f;

        /* renamed from: g */
        public final C2135c.C2141f f8232g;

        /* renamed from: h */
        public final Map<String, String> f8233h;

        /* renamed from: i */
        public final Map<String, String> f8234i;

        /* renamed from: j */
        public final C2172g f8235j;

        /* renamed from: c.b.a.d.d$f$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$f$a.class */
        public class C2158a implements AppLovinPostbackListener {
            public C2158a() {
            }

            @Override // com.applovin.sdk.AppLovinPostbackListener
            public void onPostbackFailure(String str, int i) {
                C2157f fVar = C2157f.this;
                fVar.m30484d("Failed to fire postback with code: " + i + " and url: " + str);
            }

            @Override // com.applovin.sdk.AppLovinPostbackListener
            public void onPostbackSuccess(String str) {
            }
        }

        public C2157f(String str, Map<String, String> map, C2172g gVar, C2135c.C2141f fVar, C2341l lVar) {
            super("TaskFireMediationPostbacks", lVar);
            this.f8231f = str + "_urls";
            this.f8233h = AbstractC2426r.m29783b(map);
            this.f8235j = gVar != null ? gVar : C2172g.EMPTY;
            this.f8232g = fVar;
            HashMap hashMap = new HashMap(6);
            hashMap.put("AppLovin-Event-Type", str);
            hashMap.put("AppLovin-Ad-Network-Name", fVar.m30902d());
            if (fVar instanceof C2135c.AbstractC2137b) {
                C2135c.AbstractC2137b bVar = (C2135c.AbstractC2137b) fVar;
                hashMap.put("AppLovin-Ad-Unit-Id", bVar.getAdUnitId());
                hashMap.put("AppLovin-Ad-Format", bVar.getFormat().getLabel());
            }
            if (gVar != null) {
                hashMap.put("AppLovin-Error-Code", String.valueOf(gVar.getErrorCode()));
                hashMap.put("AppLovin-Error-Message", gVar.getErrorMessage());
            }
            this.f8234i = hashMap;
        }

        /* renamed from: a */
        public final C2368f m30840a(String str, C2172g gVar, Map<String, String> map) {
            String a = m30841a(str, gVar);
            C2368f.C2369a b = C2368f.m30109b(m30492a());
            b.m30087d(a);
            b.m30089c(false);
            b.m30086d(map);
            return b.mo30106a();
        }

        /* renamed from: a */
        public final String m30841a(String str, C2172g gVar) {
            int i;
            String str2;
            if (gVar instanceof MaxAdapterError) {
                MaxAdapterError maxAdapterError = (MaxAdapterError) gVar;
                i = maxAdapterError.getThirdPartySdkErrorCode();
                str2 = maxAdapterError.getThirdPartySdkErrorMessage();
            } else {
                i = 0;
                str2 = "";
            }
            return str.replace("{ERROR_CODE}", String.valueOf(gVar.getErrorCode())).replace("{ERROR_MESSAGE}", C2422o.m29847e(gVar.getErrorMessage())).replace("{THIRD_PARTY_SDK_ERROR_CODE}", String.valueOf(i)).replace("{THIRD_PARTY_SDK_ERROR_MESSAGE}", C2422o.m29847e(str2));
        }

        /* renamed from: b */
        public final C2365e m30839b(String str, C2172g gVar, Map<String, String> map) {
            String a = m30841a(str, gVar);
            C2365e.C2367b l = C2365e.m30125l();
            l.m30122a(a);
            l.m30120a(false);
            l.m30117b(map);
            return l.m30124a();
        }

        /* renamed from: e */
        public final void m30838e() {
            List<String> a = this.f8232g.m30918a(this.f8231f, this.f8233h);
            if (!a.isEmpty()) {
                for (String str : a) {
                    m30492a().m30243p().dispatchPostbackRequest(m30840a(str, this.f8235j, this.f8234i), C7048s.EnumC7049a.MEDIATION_POSTBACKS, new C2158a());
                }
            }
        }

        /* renamed from: f */
        public final void m30837f() {
            List<String> a = this.f8232g.m30918a(this.f8231f, this.f8233h);
            if (!a.isEmpty()) {
                for (String str : a) {
                    m30492a().m30247l().m30149a(m30839b(str, this.f8235j, this.f8234i));
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((Boolean) m30492a().m30291a(C2251d.C2255d.f8466C4)).booleanValue()) {
                m30837f();
            } else {
                m30838e();
            }
        }
    }

    /* renamed from: c.b.a.d.d$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$g.class */
    public class C2159g extends C2270g.AbstractRunnableC2278c {

        /* renamed from: f */
        public final String f8237f;

        /* renamed from: g */
        public final JSONObject f8238g;

        /* renamed from: h */
        public final JSONObject f8239h;

        /* renamed from: i */
        public final MaxAdListener f8240i;

        /* renamed from: j */
        public final WeakReference<Activity> f8241j;

        public C2159g(String str, JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar, Activity activity, MaxAdListener maxAdListener) {
            super("TaskLoadAdapterAd " + str, lVar);
            this.f8237f = str;
            this.f8238g = jSONObject;
            this.f8239h = jSONObject2;
            this.f8241j = new WeakReference<>(activity);
            this.f8240i = maxAdListener;
        }

        /* renamed from: e */
        public final void m30836e() {
            this.f8916a.m30254g0().loadThirdPartyMediatedAd(this.f8237f, m30834g(), m30835f(), this.f8240i);
        }

        /* renamed from: f */
        public final Activity m30835f() {
            Activity activity = this.f8241j.get();
            return activity != null ? activity : this.f8916a.m30315G();
        }

        /* renamed from: g */
        public final C2135c.AbstractC2137b m30834g() {
            String b = C2390i.m29913b(this.f8239h, "ad_format", (String) null, this.f8916a);
            MaxAdFormat c = AbstractC2426r.m29779c(b);
            if (c == MaxAdFormat.BANNER || c == MaxAdFormat.MREC || c == MaxAdFormat.LEADER) {
                return new C2135c.C2138c(this.f8238g, this.f8239h, this.f8916a);
            }
            if (c == MaxAdFormat.NATIVE) {
                return new C2135c.C2140e(this.f8238g, this.f8239h, this.f8916a);
            }
            if (c == MaxAdFormat.INTERSTITIAL || c == MaxAdFormat.REWARDED) {
                return new C2135c.C2139d(this.f8238g, this.f8239h, this.f8916a);
            }
            throw new IllegalArgumentException("Unsupported ad format: " + b);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8634Z3)).booleanValue()) {
                try {
                    m30836e();
                } catch (Throwable th) {
                    m30490a("Unable to process adapter ad", th);
                    C2391j.m29902a(this.f8240i, this.f8237f, (int) MaxErrorCodes.MEDIATION_ADAPTER_LOAD_FAILED);
                }
            } else {
                m30836e();
            }
        }
    }

    /* renamed from: c.b.a.d.d$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$h.class */
    public class C2160h extends C2270g.AbstractRunnableC2278c {

        /* renamed from: f */
        public final String f8242f;

        /* renamed from: g */
        public final MaxAdFormat f8243g;

        /* renamed from: h */
        public final JSONObject f8244h;

        /* renamed from: i */
        public final MaxAdListener f8245i;

        /* renamed from: j */
        public final WeakReference<Activity> f8246j;

        /* renamed from: c.b.a.d.d$h$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$h$a.class */
        public class RunnableC2161a implements Runnable {
            public RunnableC2161a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2160h.this.m30833a(204);
            }
        }

        /* renamed from: c.b.a.d.d$h$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/d$h$b.class */
        public class C2162b extends C2270g.AbstractRunnableC2278c {

            /* renamed from: f */
            public final JSONArray f8248f;

            /* renamed from: g */
            public final int f8249g;

            /* renamed from: c.b.a.d.d$h$b$a */
            /* loaded from: classes-dex2jar.jar:c/b/a/d/d$h$b$a.class */
            public class C2163a extends C2166a {
                public C2163a(MaxAdListener maxAdListener, C2341l lVar) {
                    super(maxAdListener, lVar);
                }

                @Override // com.applovin.mediation.MaxAdListener
                public void onAdLoadFailed(String str, int i) {
                    C2162b bVar = C2162b.this;
                    bVar.m30817e("failed to load ad: " + i);
                    C2162b.this.m30816f();
                }

                @Override // com.applovin.mediation.MaxAdListener
                public void onAdLoaded(MaxAd maxAd) {
                    C2162b.this.m30817e("loaded ad");
                    C2160h.this.m30829a(maxAd);
                }
            }

            public C2162b(int i, JSONArray jSONArray) {
                super("TaskProcessNextWaterfallAd", C2160h.this.f8916a);
                if (i < 0 || i >= jSONArray.length()) {
                    throw new IllegalArgumentException("Invalid ad index specified: " + i);
                }
                this.f8248f = jSONArray;
                this.f8249g = i;
            }

            /* renamed from: a */
            public final String m30821a(int i) {
                return (i < 0 || i >= this.f8248f.length()) ? "undefined" : C2390i.m29913b(C2390i.m29934a(this.f8248f, i, new JSONObject(), this.f8916a), "type", "undefined", this.f8916a);
            }

            /* renamed from: e */
            public final void m30818e() {
                JSONObject a = C2390i.m29934a(this.f8248f, this.f8249g, (JSONObject) null, this.f8916a);
                m30821a(this.f8249g);
                m30491a("Starting task for adapter ad...");
                m30817e("started to load ad");
                this.f8916a.m30249j().m18827a(new C2159g(C2160h.this.f8242f, a, C2160h.this.f8244h, this.f8916a, (Activity) C2160h.this.f8246j.get(), new C2163a(C2160h.this.f8245i, this.f8916a)));
            }

            /* renamed from: e */
            public final void m30817e(String str) {
            }

            /* renamed from: f */
            public final void m30816f() {
                if (this.f8249g < this.f8248f.length() - 1) {
                    m30488b("Attempting to load next ad (" + this.f8249g + ") after failure...");
                    this.f8916a.m30249j().m18826a(new C2162b(this.f8249g + 1, this.f8248f), C2168c.m30808a(C2160h.this.f8243g));
                    return;
                }
                C2160h.this.m30825e();
            }

            @Override // java.lang.Runnable
            public void run() {
                if (((Boolean) this.f8916a.m30291a(C2251d.C2256e.f8629Y3)).booleanValue()) {
                    try {
                        m30818e();
                    } catch (Throwable th) {
                        m30490a("Encountered error while processing ad number " + this.f8249g, th);
                        C2160h.this.m30825e();
                    }
                } else {
                    m30818e();
                }
            }
        }

        public C2160h(String str, MaxAdFormat maxAdFormat, JSONObject jSONObject, Activity activity, C2341l lVar, MaxAdListener maxAdListener) {
            super("TaskProcessMediationWaterfall " + str, lVar);
            this.f8242f = str;
            this.f8243g = maxAdFormat;
            this.f8244h = jSONObject;
            this.f8245i = maxAdListener;
            this.f8246j = new WeakReference<>(activity);
        }

        /* renamed from: a */
        public final void m30833a(int i) {
            C2268g k;
            C2267f fVar;
            if (i == 204) {
                k = this.f8916a.m30248k();
                fVar = C2267f.f8896t;
            } else if (i == -5001) {
                k = this.f8916a.m30248k();
                fVar = C2267f.f8897u;
            } else {
                k = this.f8916a.m30248k();
                fVar = C2267f.f8898v;
            }
            k.m30522a(fVar);
            m30488b("Notifying parent of ad load failure for ad unit " + this.f8242f + ": " + i);
            C2391j.m29902a(this.f8245i, this.f8242f, i);
        }

        /* renamed from: a */
        public final void m30829a(MaxAd maxAd) {
            m30488b("Notifying parent of ad load success for ad unit " + this.f8242f);
            C2391j.m29905a(this.f8245i, maxAd);
        }

        /* renamed from: e */
        public final void m30825e() {
            m30833a(MaxErrorCodes.MEDIATION_ADAPTER_LOAD_FAILED);
        }

        @Override // java.lang.Runnable
        public void run() {
            JSONArray optJSONArray = this.f8244h.optJSONArray("ads");
            int length = optJSONArray != null ? optJSONArray.length() : 0;
            if (length > 0) {
                m30491a("Loading the first out of " + length + " ads...");
                this.f8916a.m30249j().m18827a(new C2162b(0, optJSONArray));
                return;
            }
            m30486c("No ads were returned from the server");
            AbstractC2426r.m29802a(this.f8242f, this.f8244h, this.f8916a);
            JSONObject b = C2390i.m29911b(this.f8244h, "settings", new JSONObject(), this.f8916a);
            long a = C2390i.m29929a(b, "alfdcs", 0L, this.f8916a);
            if (a > 0) {
                long millis = TimeUnit.SECONDS.toMillis(a);
                RunnableC2161a aVar = new RunnableC2161a();
                if (C2390i.m29928a(b, "alfdcs_iba", (Boolean) false, this.f8916a).booleanValue()) {
                    C2384d.m29986a(millis, this.f8916a, aVar);
                } else {
                    AppLovinSdkUtils.runOnUiThreadDelayed(aVar, millis);
                }
            } else {
                m30833a(204);
            }
        }
    }

    /* renamed from: c.b.a.d.d$i */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$i.class */
    public class C2164i extends C2270g.AbstractC2280d {

        /* renamed from: f */
        public final C2135c.C2139d f8252f;

        public C2164i(C2135c.C2139d dVar, C2341l lVar) {
            super("TaskReportMaxReward", lVar);
            this.f8252f = dVar;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30457a(int i) {
            super.mo30457a(i);
            m30491a("Failed to report reward for mediated ad: " + this.f8252f + " - error code: " + i);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30456a(JSONObject jSONObject) {
            C2390i.m29926a(jSONObject, "ad_unit_id", this.f8252f.getAdUnitId(), this.f8916a);
            C2390i.m29926a(jSONObject, "placement", this.f8252f.m30892k(), this.f8916a);
            String N = this.f8252f.m30935N();
            if (!C2422o.m29851b(N)) {
                N = "NO_MCODE";
            }
            C2390i.m29926a(jSONObject, "mcode", N, this.f8916a);
            String M = this.f8252f.m30936M();
            if (!C2422o.m29851b(M)) {
                M = "NO_BCODE";
            }
            C2390i.m29926a(jSONObject, "bcode", M, this.f8916a);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2280d
        /* renamed from: b */
        public void mo30460b(JSONObject jSONObject) {
            m30491a("Reported reward successfully for mediated ad: " + this.f8252f);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: e */
        public String mo30455e() {
            return "2.0/mcr";
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2280d
        /* renamed from: h */
        public C2238c mo30459h() {
            return this.f8252f.m30930x();
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2280d
        /* renamed from: i */
        public void mo30458i() {
            m30484d("No reward result was found for mediated ad: " + this.f8252f);
        }
    }

    /* renamed from: c.b.a.d.d$j */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/d$j.class */
    public class C2165j extends C2270g.AbstractC2293i {

        /* renamed from: f */
        public final C2135c.C2139d f8253f;

        public C2165j(C2135c.C2139d dVar, C2341l lVar) {
            super("TaskValidateMaxReward", lVar);
            this.f8253f = dVar;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30457a(int i) {
            super.mo30457a(i);
            this.f8253f.m30932a(C2238c.m30680a((i < 400 || i >= 500) ? "network_timeout" : "rejected"));
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2293i
        /* renamed from: a */
        public void mo30454a(C2238c cVar) {
            this.f8253f.m30932a(cVar);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: a */
        public void mo30456a(JSONObject jSONObject) {
            C2390i.m29926a(jSONObject, "ad_unit_id", this.f8253f.getAdUnitId(), this.f8916a);
            C2390i.m29926a(jSONObject, "placement", this.f8253f.m30892k(), this.f8916a);
            String N = this.f8253f.m30935N();
            if (!C2422o.m29851b(N)) {
                N = "NO_MCODE";
            }
            C2390i.m29926a(jSONObject, "mcode", N, this.f8916a);
            String M = this.f8253f.m30936M();
            if (!C2422o.m29851b(M)) {
                M = "NO_BCODE";
            }
            C2390i.m29926a(jSONObject, "bcode", M, this.f8916a);
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2286f
        /* renamed from: e */
        public String mo30455e() {
            return "2.0/mvr";
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2293i
        /* renamed from: h */
        public boolean mo30449h() {
            return this.f8253f.m30934O();
        }
    }

    public C2145d(C2341l lVar, AbstractC2147b bVar) {
        this.f8201a = lVar;
        this.f8202b = lVar.m30262d0();
        this.f8203c = bVar;
    }

    /* renamed from: a */
    public void m30880a() {
        this.f8202b.m30044b("AdHiddenCallbackTimeoutManager", "Cancelling timeout");
        C2384d dVar = this.f8204d;
        if (dVar != null) {
            dVar.m29987a();
            this.f8204d = null;
        }
    }

    /* renamed from: a */
    public void m30879a(C2135c.C2139d dVar, long j) {
        C2374t tVar = this.f8202b;
        tVar.m30044b("AdHiddenCallbackTimeoutManager", "Scheduling in " + j + "ms...");
        this.f8204d = C2384d.m29986a(j, this.f8201a, new RunnableC2146a(dVar));
    }
}
