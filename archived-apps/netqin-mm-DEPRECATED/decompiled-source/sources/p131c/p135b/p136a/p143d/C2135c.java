package p131c.p135b.p136a.p143d;

import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinPrivacySettings;
import com.applovin.sdk.AppLovinSdkUtils;
import com.mopub.network.ImpressionData;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p135b.p136a.p143d.C2117a;
import p131c.p135b.p136a.p143d.C2145d;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.p149a.C2238c;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.d.c */
/* loaded from: classes-dex2jar.jar:c/b/a/d/c.class */
public class C2135c implements C2117a.AbstractC2118a, C2145d.AbstractC2147b {

    /* renamed from: a */
    public final C2117a f8180a;

    /* renamed from: b */
    public final C2145d f8181b;

    /* renamed from: c */
    public final MaxAdListener f8182c;

    /* renamed from: c.b.a.d.c$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$a.class */
    public class RunnableC2136a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2139d f8183a;

        public RunnableC2136a(C2139d dVar) {
            this.f8183a = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2135c.this.f8182c.onAdHidden(this.f8183a);
        }
    }

    /* renamed from: c.b.a.d.c$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$b.class */
    public abstract class AbstractC2137b extends C2141f implements MaxAd {

        /* renamed from: g */
        public final AtomicBoolean f8185g = new AtomicBoolean();

        /* renamed from: h */
        public C2178k f8186h;

        public AbstractC2137b(JSONObject jSONObject, JSONObject jSONObject2, C2178k kVar, C2341l lVar) {
            super(jSONObject, jSONObject2, lVar);
            this.f8186h = kVar;
        }

        /* renamed from: a */
        public abstract AbstractC2137b mo30927a(C2178k kVar);

        @Override // com.applovin.mediation.MaxAd
        public String getAdUnitId() {
            return m30919a("ad_unit_id", "");
        }

        @Override // com.applovin.mediation.MaxAd
        public MaxAdFormat getFormat() {
            return AbstractC2426r.m29779c(m30919a("ad_format", (String) null));
        }

        @Override // com.applovin.mediation.MaxAd
        public String getNetworkName() {
            return m30908b(ImpressionData.NETWORK_NAME, "");
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.C2141f
        /* renamed from: l */
        public String mo30882l() {
            return m30919a("event_id", "");
        }

        /* renamed from: m */
        public boolean m30971m() {
            C2178k kVar = this.f8186h;
            boolean z = false;
            if (kVar != null) {
                z = false;
                if (kVar.m30766c()) {
                    z = false;
                    if (this.f8186h.m30764d()) {
                        z = true;
                    }
                }
            }
            return z;
        }

        /* renamed from: n */
        public C2178k m30970n() {
            return this.f8186h;
        }

        /* renamed from: o */
        public String m30969o() {
            return m30908b("bid_response", (String) null);
        }

        /* renamed from: p */
        public String m30968p() {
            return m30908b("third_party_ad_placement_id", (String) null);
        }

        /* renamed from: q */
        public long m30967q() {
            if (mo30931w() > 0) {
                return m30965s() - mo30931w();
            }
            return -1L;
        }

        /* renamed from: r */
        public void m30966r() {
            m30903c("load_started_time_ms", SystemClock.elapsedRealtime());
        }

        /* renamed from: s */
        public long m30965s() {
            return m30910b("load_completed_time_ms", 0L);
        }

        /* renamed from: t */
        public void m30964t() {
            m30903c("load_completed_time_ms", SystemClock.elapsedRealtime());
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.C2141f
        public String toString() {
            return getClass().getSimpleName() + "{thirdPartyAdPlacementId=" + m30968p() + ", adUnitId=" + getAdUnitId() + ", format=" + getFormat().getLabel() + ", networkName='" + getNetworkName() + '}';
        }

        /* renamed from: u */
        public AtomicBoolean m30963u() {
            return this.f8185g;
        }

        /* renamed from: v */
        public void m30962v() {
            this.f8186h = null;
        }

        /* renamed from: w */
        public final long mo30931w() {
            return m30910b("load_started_time_ms", 0L);
        }
    }

    /* renamed from: c.b.a.d.c$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$c.class */
    public class C2138c extends AbstractC2137b {
        public C2138c(C2138c cVar, C2178k kVar) {
            super(cVar.m30914b(), cVar.m30926a(), kVar, cVar.f8190a);
        }

        public C2138c(JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar) {
            super(jSONObject, jSONObject2, null, lVar);
        }

        /* renamed from: A */
        public int m30961A() {
            return m30911b("viewability_min_width", ((Integer) this.f8190a.m30291a(getFormat() == MaxAdFormat.BANNER ? C2251d.C2256e.f8647c1 : getFormat() == MaxAdFormat.MREC ? C2251d.C2256e.f8659e1 : C2251d.C2256e.f8671g1)).intValue());
        }

        /* renamed from: B */
        public int m30960B() {
            return m30911b("viewability_min_height", ((Integer) this.f8190a.m30291a(getFormat() == MaxAdFormat.BANNER ? C2251d.C2256e.f8653d1 : getFormat() == MaxAdFormat.MREC ? C2251d.C2256e.f8665f1 : C2251d.C2256e.f8677h1)).intValue());
        }

        /* renamed from: C */
        public float m30959C() {
            return m30923a("viewability_min_alpha", ((Float) this.f8190a.m30291a(C2251d.C2256e.f8683i1)).floatValue() / 100.0f);
        }

        /* renamed from: D */
        public int m30958D() {
            return m30911b("viewability_min_pixels", -1);
        }

        /* renamed from: E */
        public boolean m30957E() {
            return m30958D() >= 0;
        }

        /* renamed from: F */
        public long m30956F() {
            return m30910b("viewability_timer_min_visible_ms", ((Long) this.f8190a.m30291a(C2251d.C2256e.f8689j1)).longValue());
        }

        /* renamed from: G */
        public boolean m30955G() {
            return m30954H() >= 0;
        }

        /* renamed from: H */
        public long m30954H() {
            long b = m30910b("ad_refresh_ms", -1L);
            return b >= 0 ? b : m30921a("ad_refresh_ms", ((Long) this.f8190a.m30291a(C2251d.C2255d.f8472I4)).longValue());
        }

        /* renamed from: I */
        public boolean m30953I() {
            return m30909b("proe", (Boolean) this.f8190a.m30291a(C2251d.C2255d.f8493d5));
        }

        /* renamed from: J */
        public long m30952J() {
            return AbstractC2426r.m29771f(m30908b("bg_color", (String) null));
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.AbstractC2137b
        /* renamed from: a */
        public AbstractC2137b mo30927a(C2178k kVar) {
            return new C2138c(this, kVar);
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.AbstractC2137b
        /* renamed from: w */
        public int mo30931w() {
            int b = m30911b("ad_view_width", -2);
            if (b != -2) {
                return b;
            }
            MaxAdFormat format = getFormat();
            if (format == MaxAdFormat.BANNER) {
                return 320;
            }
            if (format == MaxAdFormat.LEADER) {
                return 728;
            }
            if (format == MaxAdFormat.MREC) {
                return AppLovinAdSize.MREC.getWidth();
            }
            throw new IllegalStateException("Invalid ad format");
        }

        /* renamed from: x */
        public int m30951x() {
            AppLovinAdSize appLovinAdSize;
            int b = m30911b("ad_view_height", -2);
            if (b != -2) {
                return b;
            }
            MaxAdFormat format = getFormat();
            if (format == MaxAdFormat.BANNER) {
                appLovinAdSize = AppLovinAdSize.BANNER;
            } else if (format == MaxAdFormat.LEADER) {
                appLovinAdSize = AppLovinAdSize.LEADER;
            } else if (format == MaxAdFormat.MREC) {
                appLovinAdSize = AppLovinAdSize.MREC;
            } else {
                throw new IllegalStateException("Invalid ad format");
            }
            return appLovinAdSize.getHeight();
        }

        /* renamed from: y */
        public View m30950y() {
            C2178k kVar;
            if (!m30971m() || (kVar = this.f8186h) == null) {
                return null;
            }
            View a = kVar.m30784a();
            if (a != null) {
                return a;
            }
            throw new IllegalStateException("Ad-view based ad is missing an ad view");
        }

        /* renamed from: z */
        public long m30949z() {
            return m30910b("viewability_imp_delay_ms", ((Long) this.f8190a.m30291a(C2251d.C2256e.f8641b1)).longValue());
        }
    }

    /* renamed from: c.b.a.d.c$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$d.class */
    public class C2139d extends AbstractC2137b {

        /* renamed from: i */
        public String f8187i;

        /* renamed from: j */
        public final AtomicReference<C2238c> f8188j;

        /* renamed from: k */
        public final AtomicBoolean f8189k;

        public C2139d(C2139d dVar, C2178k kVar) {
            super(dVar.m30914b(), dVar.m30926a(), kVar, dVar.f8190a);
            this.f8188j = dVar.f8188j;
            this.f8189k = dVar.f8189k;
        }

        public C2139d(JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar) {
            super(jSONObject, jSONObject2, null, lVar);
            this.f8188j = new AtomicReference<>();
            this.f8189k = new AtomicBoolean();
        }

        /* renamed from: A */
        public String m30948A() {
            return m30908b("nia_message", m30919a("nia_message", ""));
        }

        /* renamed from: B */
        public String m30947B() {
            return m30908b("nia_button_title", m30919a("nia_button_title", ""));
        }

        /* renamed from: C */
        public long m30946C() {
            return m30910b("ifacd_ms", -1L);
        }

        /* renamed from: D */
        public long m30945D() {
            return m30910b("fard_ms", TimeUnit.HOURS.toMillis(1L));
        }

        /* renamed from: E */
        public String m30944E() {
            return this.f8187i;
        }

        /* renamed from: F */
        public long m30943F() {
            long b = m30910b("ad_expiration_ms", -1L);
            return b >= 0 ? b : m30921a("ad_expiration_ms", ((Long) this.f8190a.m30291a(C2251d.C2255d.f8488Y4)).longValue());
        }

        /* renamed from: G */
        public long m30942G() {
            long b = m30910b("ad_hidden_timeout_ms", -1L);
            return b >= 0 ? b : m30921a("ad_hidden_timeout_ms", ((Long) this.f8190a.m30291a(C2251d.C2255d.f8490a5)).longValue());
        }

        /* renamed from: H */
        public boolean m30941H() {
            if (m30909b("schedule_ad_hidden_on_ad_dismiss", (Boolean) false)) {
                return true;
            }
            return m30920a("schedule_ad_hidden_on_ad_dismiss", (Boolean) this.f8190a.m30291a(C2251d.C2255d.f8491b5));
        }

        /* renamed from: I */
        public long m30940I() {
            long b = m30910b("ad_hidden_on_ad_dismiss_callback_delay_ms", -1L);
            return b >= 0 ? b : m30921a("ad_hidden_on_ad_dismiss_callback_delay_ms", ((Long) this.f8190a.m30291a(C2251d.C2255d.f8492c5)).longValue());
        }

        /* renamed from: J */
        public long m30939J() {
            if (m30965s() > 0) {
                return SystemClock.elapsedRealtime() - m30965s();
            }
            return -1L;
        }

        /* renamed from: K */
        public long m30938K() {
            long b = m30910b("fullscreen_display_delay_ms", -1L);
            return b >= 0 ? b : ((Long) this.f8190a.m30291a(C2251d.C2255d.f8481R4)).longValue();
        }

        /* renamed from: L */
        public long m30937L() {
            return m30910b("ahdm", ((Long) this.f8190a.m30291a(C2251d.C2255d.f8482S4)).longValue());
        }

        /* renamed from: M */
        public String m30936M() {
            return m30908b("bcode", "");
        }

        /* renamed from: N */
        public String m30935N() {
            return m30919a("mcode", "");
        }

        /* renamed from: O */
        public boolean m30934O() {
            return this.f8189k.get();
        }

        /* renamed from: P */
        public void m30933P() {
            this.f8189k.set(true);
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.AbstractC2137b
        /* renamed from: a */
        public AbstractC2137b mo30927a(C2178k kVar) {
            return new C2139d(this, kVar);
        }

        /* renamed from: a */
        public void m30932a(C2238c cVar) {
            this.f8188j.set(cVar);
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.C2141f
        /* renamed from: a */
        public void mo30924a(String str) {
            this.f8187i = str;
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.AbstractC2137b
        /* renamed from: w */
        public boolean mo30931w() {
            return m30909b("fa", (Boolean) false);
        }

        /* renamed from: x */
        public C2238c m30930x() {
            return this.f8188j.getAndSet(null);
        }

        /* renamed from: y */
        public boolean m30929y() {
            return m30909b("show_nia", Boolean.valueOf(m30920a("show_nia", (Boolean) false)));
        }

        /* renamed from: z */
        public String m30928z() {
            return m30908b("nia_title", m30919a("nia_title", ""));
        }
    }

    /* renamed from: c.b.a.d.c$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$e.class */
    public class C2140e extends AbstractC2137b {
        public C2140e(C2140e eVar, C2178k kVar) {
            super(eVar.m30914b(), eVar.m30926a(), kVar, eVar.f8190a);
        }

        public C2140e(JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar) {
            super(jSONObject, jSONObject2, null, lVar);
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.AbstractC2137b
        /* renamed from: a */
        public AbstractC2137b mo30927a(C2178k kVar) {
            return new C2140e(this, kVar);
        }
    }

    /* renamed from: c.b.a.d.c$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$f.class */
    public class C2141f {

        /* renamed from: a */
        public final C2341l f8190a;

        /* renamed from: b */
        public final JSONObject f8191b;

        /* renamed from: c */
        public final JSONObject f8192c;

        /* renamed from: d */
        public final Object f8193d = new Object();

        /* renamed from: e */
        public final Object f8194e = new Object();

        /* renamed from: f */
        public volatile String f8195f;

        public C2141f(JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar) {
            if (lVar == null) {
                throw new IllegalArgumentException("No sdk specified");
            } else if (jSONObject2 == null) {
                throw new IllegalArgumentException("No full response specified");
            } else if (jSONObject != null) {
                this.f8190a = lVar;
                this.f8191b = jSONObject2;
                this.f8192c = jSONObject;
            } else {
                throw new IllegalArgumentException("No spec object specified");
            }
        }

        /* renamed from: m */
        private int m30891m() {
            return m30911b("mute_state", m30922a("mute_state", ((Integer) this.f8190a.m30291a(C2251d.C2255d.f8498i5)).intValue()));
        }

        /* renamed from: a */
        public float m30923a(String str, float f) {
            float a;
            synchronized (this.f8193d) {
                a = C2390i.m29931a(this.f8192c, str, f, this.f8190a);
            }
            return a;
        }

        /* renamed from: a */
        public int m30922a(String str, int i) {
            int b;
            synchronized (this.f8194e) {
                b = C2390i.m29916b(this.f8191b, str, i, this.f8190a);
            }
            return b;
        }

        /* renamed from: a */
        public long m30921a(String str, long j) {
            long a;
            synchronized (this.f8194e) {
                a = C2390i.m29929a(this.f8191b, str, j, this.f8190a);
            }
            return a;
        }

        /* renamed from: a */
        public String m30919a(String str, String str2) {
            String b;
            synchronized (this.f8194e) {
                b = C2390i.m29913b(this.f8191b, str, str2, this.f8190a);
            }
            return b;
        }

        /* renamed from: a */
        public final List<String> mo30924a(String str) {
            try {
                return C2390i.m29918b(m30917a(str, new JSONArray()));
            } catch (JSONException e) {
                return Collections.EMPTY_LIST;
            }
        }

        /* renamed from: a */
        public List<String> m30918a(String str, Map<String, String> map) {
            if (str != null) {
                List<String> a = mo30924a(str);
                List<String> e = m30899e(str);
                List<String> arrayList = new ArrayList<>(a.size() + e.size());
                arrayList.addAll(a);
                arrayList.addAll(e);
                return m30915a(arrayList, map);
            }
            throw new IllegalArgumentException("No key specified");
        }

        /* renamed from: a */
        public final List<String> m30915a(List<String> list, Map<String, String> map) {
            Map<String, String> l = mo30882l();
            ArrayList arrayList = new ArrayList(list.size());
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                String next = it.next();
                for (String str : l.keySet()) {
                    next = next.replace(str, m30897f(l.get(str)));
                }
                for (String str2 : map.keySet()) {
                    next = next.replace(str2, map.get(str2));
                }
                arrayList.add(next);
            }
            return arrayList;
        }

        /* renamed from: a */
        public JSONArray m30917a(String str, JSONArray jSONArray) {
            JSONArray b;
            synchronized (this.f8194e) {
                b = C2390i.m29912b(this.f8191b, str, jSONArray, this.f8190a);
            }
            return b;
        }

        /* renamed from: a */
        public JSONObject m30926a() {
            JSONObject jSONObject;
            synchronized (this.f8194e) {
                jSONObject = this.f8191b;
            }
            return jSONObject;
        }

        /* renamed from: a */
        public JSONObject m30916a(String str, JSONObject jSONObject) {
            JSONObject b;
            synchronized (this.f8193d) {
                b = C2390i.m29911b(this.f8192c, str, jSONObject, this.f8190a);
            }
            return b;
        }

        /* renamed from: a */
        public boolean m30925a(Context context) {
            return m30912b("huc") ? m30909b("huc", (Boolean) false) : m30920a("huc", Boolean.valueOf(AppLovinPrivacySettings.hasUserConsent(context)));
        }

        /* renamed from: a */
        public boolean m30920a(String str, Boolean bool) {
            boolean booleanValue;
            synchronized (this.f8194e) {
                booleanValue = C2390i.m29928a(this.f8191b, str, bool, this.f8190a).booleanValue();
            }
            return booleanValue;
        }

        /* renamed from: b */
        public int m30911b(String str, int i) {
            int b;
            synchronized (this.f8193d) {
                b = C2390i.m29916b(this.f8192c, str, i, this.f8190a);
            }
            return b;
        }

        /* renamed from: b */
        public long m30910b(String str, long j) {
            long a;
            synchronized (this.f8193d) {
                a = C2390i.m29929a(this.f8192c, str, j, this.f8190a);
            }
            return a;
        }

        /* renamed from: b */
        public String m30908b(String str, String str2) {
            String b;
            synchronized (this.f8193d) {
                b = C2390i.m29913b(this.f8192c, str, str2, this.f8190a);
            }
            return b;
        }

        /* renamed from: b */
        public JSONArray m30907b(String str, JSONArray jSONArray) {
            JSONArray b;
            synchronized (this.f8193d) {
                b = C2390i.m29912b(this.f8192c, str, jSONArray, this.f8190a);
            }
            return b;
        }

        /* renamed from: b */
        public JSONObject m30914b() {
            JSONObject jSONObject;
            synchronized (this.f8193d) {
                jSONObject = this.f8192c;
            }
            return jSONObject;
        }

        /* renamed from: b */
        public boolean m30913b(Context context) {
            return m30912b("aru") ? m30909b("aru", (Boolean) false) : m30920a("aru", Boolean.valueOf(AppLovinPrivacySettings.isAgeRestrictedUser(context)));
        }

        /* renamed from: b */
        public boolean m30912b(String str) {
            boolean has;
            synchronized (this.f8193d) {
                has = this.f8192c.has(str);
            }
            return has;
        }

        /* renamed from: b */
        public boolean m30909b(String str, Boolean bool) {
            boolean booleanValue;
            synchronized (this.f8193d) {
                booleanValue = C2390i.m29928a(this.f8192c, str, bool, this.f8190a).booleanValue();
            }
            return booleanValue;
        }

        /* renamed from: c */
        public Object m30904c(String str) {
            Object opt;
            synchronized (this.f8193d) {
                opt = this.f8192c.opt(str);
            }
            return opt;
        }

        /* renamed from: c */
        public String m30906c() {
            return m30908b("class", (String) null);
        }

        /* renamed from: c */
        public void m30903c(String str, long j) {
            synchronized (this.f8193d) {
                C2390i.m29915b(this.f8192c, str, j, this.f8190a);
            }
        }

        /* renamed from: c */
        public boolean m30905c(Context context) {
            return m30912b("dns") ? m30909b("dns", (Boolean) false) : m30920a("dns", Boolean.valueOf(AppLovinPrivacySettings.isDoNotSell(context)));
        }

        /* renamed from: d */
        public String m30902d() {
            return m30908b("name", (String) null);
        }

        /* renamed from: d */
        public void m30901d(String str) {
            this.f8195f = str;
        }

        /* renamed from: e */
        public String m30900e() {
            return m30902d().split("_")[0];
        }

        /* renamed from: e */
        public final List<String> m30899e(String str) {
            try {
                return C2390i.m29918b(m30907b(str, new JSONArray()));
            } catch (JSONException e) {
                return Collections.EMPTY_LIST;
            }
        }

        /* renamed from: f */
        public final String m30897f(String str) {
            String b = m30908b(str, "");
            return C2422o.m29851b(b) ? b : m30919a(str, "");
        }

        /* renamed from: f */
        public boolean m30898f() {
            return m30909b("is_testing", (Boolean) false);
        }

        /* renamed from: g */
        public boolean m30896g() {
            return m30909b("run_on_ui_thread", (Boolean) true);
        }

        /* renamed from: h */
        public Bundle m30895h() {
            Bundle c = m30904c("server_parameters") instanceof JSONObject ? C2390i.m29909c(m30916a("server_parameters", (JSONObject) null)) : new Bundle();
            int m = m30891m();
            if (m != -1) {
                c.putBoolean("is_muted", m == 2 ? this.f8190a.m30302T().isMuted() : m == 0);
            }
            return c;
        }

        /* renamed from: i */
        public long m30894i() {
            return m30910b("adapter_timeout_ms", ((Long) this.f8190a.m30291a(C2251d.C2255d.f8471H4)).longValue());
        }

        /* renamed from: j */
        public long m30893j() {
            return m30910b("init_completion_delay_ms", -1L);
        }

        /* renamed from: k */
        public String m30892k() {
            return this.f8195f;
        }

        /* renamed from: l */
        public final Map<String, String> mo30882l() {
            try {
                return C2390i.m29933a(new JSONObject((String) this.f8190a.m30291a(C2251d.C2255d.f8465B4)));
            } catch (JSONException e) {
                return Collections.EMPTY_MAP;
            }
        }

        public String toString() {
            return "MediationAdapterSpec{adapterClass='" + m30906c() + "', adapterName='" + m30902d() + "', isTesting=" + m30898f() + '}';
        }
    }

    /* renamed from: c.b.a.d.c$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$g.class */
    public class C2142g {

        /* renamed from: a */
        public final C2144h f8196a;

        /* renamed from: b */
        public final String f8197b;

        /* renamed from: c */
        public final String f8198c;

        /* renamed from: d */
        public final String f8199d;

        /* renamed from: e */
        public final String f8200e;

        /* renamed from: c.b.a.d.c$g$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/c$g$a.class */
        public interface AbstractC2143a {
            /* renamed from: a */
            void mo30860a(C2142g gVar);
        }

        public C2142g(C2144h hVar, C2178k kVar, String str, String str2) {
            this.f8196a = hVar;
            this.f8200e = str2;
            if (str != null) {
                this.f8199d = str.substring(0, Math.min(str.length(), hVar.m30881m()));
            } else {
                this.f8199d = null;
            }
            if (kVar != null) {
                this.f8197b = kVar.m30762e();
                this.f8198c = kVar.m30760f();
                return;
            }
            this.f8197b = null;
            this.f8198c = null;
        }

        /* renamed from: a */
        public static C2142g m30889a(C2144h hVar, C2178k kVar, String str) {
            if (hVar == null) {
                throw new IllegalArgumentException("No spec specified");
            } else if (kVar != null) {
                return new C2142g(hVar, kVar, str, null);
            } else {
                throw new IllegalArgumentException("No adapterWrapper specified");
            }
        }

        /* renamed from: a */
        public static C2142g m30888a(C2144h hVar, String str) {
            return m30886b(hVar, null, str);
        }

        /* renamed from: b */
        public static C2142g m30886b(C2144h hVar, C2178k kVar, String str) {
            if (hVar != null) {
                return new C2142g(hVar, kVar, null, str);
            }
            throw new IllegalArgumentException("No spec specified");
        }

        /* renamed from: a */
        public C2144h m30890a() {
            return this.f8196a;
        }

        /* renamed from: b */
        public String m30887b() {
            return this.f8197b;
        }

        /* renamed from: c */
        public String m30885c() {
            return this.f8198c;
        }

        /* renamed from: d */
        public String m30884d() {
            return this.f8199d;
        }

        /* renamed from: e */
        public String m30883e() {
            return this.f8200e;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("SignalCollectionResult{mSignalProviderSpec=");
            sb.append(this.f8196a);
            sb.append(", mSdkVersion='");
            sb.append(this.f8197b);
            sb.append('\'');
            sb.append(", mAdapterVersion='");
            sb.append(this.f8198c);
            sb.append('\'');
            sb.append(", mSignalDataLength='");
            String str = this.f8199d;
            sb.append(str != null ? str.length() : 0);
            sb.append('\'');
            sb.append(", mErrorMessage=");
            sb.append(this.f8200e);
            sb.append('}');
            return sb.toString();
        }
    }

    /* renamed from: c.b.a.d.c$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/c$h.class */
    public class C2144h extends C2141f {
        public C2144h(JSONObject jSONObject, JSONObject jSONObject2, C2341l lVar) {
            super(jSONObject, jSONObject2, lVar);
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.C2141f
        /* renamed from: l */
        public boolean mo30882l() {
            return m30909b("only_collect_signal_when_initialized", (Boolean) false);
        }

        /* renamed from: m */
        public int m30881m() {
            return m30911b("max_signal_length", RecyclerView.AbstractC0495b0.FLAG_MOVED);
        }

        @Override // p131c.p135b.p136a.p143d.C2135c.C2141f
        public String toString() {
            return "SignalProviderSpec{specObject=" + m30914b() + '}';
        }
    }

    public C2135c(C2341l lVar, MaxAdListener maxAdListener) {
        this.f8182c = maxAdListener;
        this.f8180a = new C2117a(lVar);
        this.f8181b = new C2145d(lVar, this);
    }

    @Override // p131c.p135b.p136a.p143d.C2117a.AbstractC2118a
    /* renamed from: a */
    public void mo30975a(C2139d dVar) {
        AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2136a(dVar), dVar.m30940I());
    }

    /* renamed from: a */
    public void m30973a(MaxAd maxAd) {
        this.f8181b.m30880a();
        this.f8180a.m31020a();
    }

    @Override // p131c.p135b.p136a.p143d.C2145d.AbstractC2147b
    /* renamed from: b */
    public void mo30876b(C2139d dVar) {
        this.f8182c.onAdHidden(dVar);
    }

    /* renamed from: c */
    public void m30972c(C2139d dVar) {
        long G = dVar.m30942G();
        if (G >= 0) {
            this.f8181b.m30879a(dVar, G);
        }
        if (dVar.m30941H()) {
            this.f8180a.m31019a(dVar, this);
        }
    }
}
