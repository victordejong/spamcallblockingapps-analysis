package com.applovin.impl.p483a;

import android.net.Uri;
import com.applovin.impl.p483a.C6902j;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p489ad.EnumC7029b;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
import p131c.p135b.p136a.p137a.C2031a;
import p131c.p135b.p136a.p137a.C2033c;
import p131c.p135b.p136a.p137a.C2034d;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p151e.C2260a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: com.applovin.impl.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a.class */
public class C6894a extends AbstractC7036g {

    /* renamed from: o */
    public final String f21092o;

    /* renamed from: p */
    public final String f21093p;

    /* renamed from: q */
    public final C2033c f21094q;

    /* renamed from: r */
    public final long f21095r;

    /* renamed from: s */
    public final C6902j f21096s;

    /* renamed from: t */
    public final C2031a f21097t;

    /* renamed from: u */
    public final String f21098u;

    /* renamed from: v */
    public final Set<C2034d> f21099v;

    /* renamed from: w */
    public final Set<C2034d> f21100w;

    /* renamed from: com.applovin.impl.a.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a$b.class */
    public enum EnumC6896b {
        COMPANION_AD,
        VIDEO
    }

    /* renamed from: com.applovin.impl.a.a$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a$c.class */
    public enum EnumC6897c {
        IMPRESSION,
        VIDEO_CLICK,
        COMPANION_CLICK,
        VIDEO,
        COMPANION,
        ERROR
    }

    /* renamed from: com.applovin.impl.a.a$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/a/a$d.class */
    public static class C6898d {

        /* renamed from: a */
        public JSONObject f21111a;

        /* renamed from: b */
        public JSONObject f21112b;

        /* renamed from: c */
        public EnumC7029b f21113c;

        /* renamed from: d */
        public C2341l f21114d;

        /* renamed from: e */
        public long f21115e;

        /* renamed from: f */
        public String f21116f;

        /* renamed from: g */
        public String f21117g;

        /* renamed from: h */
        public C2033c f21118h;

        /* renamed from: i */
        public C6902j f21119i;

        /* renamed from: j */
        public C2031a f21120j;

        /* renamed from: k */
        public Set<C2034d> f21121k;

        /* renamed from: l */
        public Set<C2034d> f21122l;

        public C6898d() {
        }

        /* renamed from: a */
        public C6898d m19451a(long j) {
            this.f21115e = j;
            return this;
        }

        /* renamed from: a */
        public C6898d m19450a(C2031a aVar) {
            this.f21120j = aVar;
            return this;
        }

        /* renamed from: a */
        public C6898d m19449a(C2033c cVar) {
            this.f21118h = cVar;
            return this;
        }

        /* renamed from: a */
        public C6898d m19448a(C2341l lVar) {
            if (lVar != null) {
                this.f21114d = lVar;
                return this;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }

        /* renamed from: a */
        public C6898d m19446a(C6902j jVar) {
            this.f21119i = jVar;
            return this;
        }

        /* renamed from: a */
        public C6898d m19445a(EnumC7029b bVar) {
            this.f21113c = bVar;
            return this;
        }

        /* renamed from: a */
        public C6898d m19444a(String str) {
            this.f21116f = str;
            return this;
        }

        /* renamed from: a */
        public C6898d m19443a(Set<C2034d> set) {
            this.f21121k = set;
            return this;
        }

        /* renamed from: a */
        public C6898d m19442a(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f21111a = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No ad object specified.");
        }

        /* renamed from: a */
        public C6894a m19452a() {
            return new C6894a(this);
        }

        /* renamed from: b */
        public C6898d m19440b(String str) {
            this.f21117g = str;
            return this;
        }

        /* renamed from: b */
        public C6898d m19439b(Set<C2034d> set) {
            this.f21122l = set;
            return this;
        }

        /* renamed from: b */
        public C6898d m19438b(JSONObject jSONObject) {
            if (jSONObject != null) {
                this.f21112b = jSONObject;
                return this;
            }
            throw new IllegalArgumentException("No full ad response specified.");
        }
    }

    public C6894a(C6898d dVar) {
        super(dVar.f21111a, dVar.f21112b, dVar.f21113c, dVar.f21114d);
        this.f21092o = dVar.f21116f;
        this.f21094q = dVar.f21118h;
        this.f21093p = dVar.f21117g;
        this.f21096s = dVar.f21119i;
        this.f21097t = dVar.f21120j;
        this.f21099v = dVar.f21121k;
        this.f21100w = dVar.f21122l;
        Uri t0 = mo18871t0();
        this.f21098u = t0 != null ? t0.toString() : "";
        this.f21095r = dVar.f21115e;
    }

    /* renamed from: Z0 */
    public static C6898d m19457Z0() {
        return new C6898d();
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: A */
    public void mo18965A() {
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: H0 */
    public boolean mo18950H0() {
        return m19462U0() != null;
    }

    /* renamed from: I0 */
    public boolean m19474I0() {
        return getBooleanFromAdObject("vast_fire_click_trackers_on_html_clicks", false);
    }

    /* renamed from: J0 */
    public String m19473J0() {
        return getStringFromAdObject("html_template", "");
    }

    /* renamed from: K0 */
    public Uri m19472K0() {
        Uri uri = null;
        String stringFromAdObject = getStringFromAdObject("html_template_url", null);
        if (C2422o.m29851b(stringFromAdObject)) {
            uri = Uri.parse(stringFromAdObject);
        }
        return uri;
    }

    /* renamed from: L0 */
    public boolean m19471L0() {
        return getBooleanFromAdObject("cache_companion_ad", true);
    }

    /* renamed from: M0 */
    public boolean m19470M0() {
        return getBooleanFromAdObject("cache_video", true);
    }

    /* renamed from: N0 */
    public final String m19469N0() {
        String str = null;
        String stringFromAdObject = getStringFromAdObject("vimp_url", null);
        if (stringFromAdObject != null) {
            str = stringFromAdObject.replace("{CLCODE}", getClCode());
        }
        return str;
    }

    /* renamed from: O0 */
    public final C6902j.EnumC6903a m19468O0() {
        C6902j.EnumC6903a[] values = C6902j.EnumC6903a.values();
        int intValue = ((Integer) this.sdk.m30291a(C2251d.C2256e.f8571M3)).intValue();
        return (intValue < 0 || intValue >= values.length) ? C6902j.EnumC6903a.UNSPECIFIED : values[intValue];
    }

    /* renamed from: P0 */
    public final Set<C2034d> m19467P0() {
        C6902j jVar = this.f21096s;
        return jVar != null ? jVar.m19412d() : Collections.emptySet();
    }

    /* renamed from: Q0 */
    public final Set<C2034d> m19466Q0() {
        C2031a aVar = this.f21097t;
        return aVar != null ? aVar.m31243c() : Collections.emptySet();
    }

    /* renamed from: R0 */
    public boolean m19465R0() {
        return mo18873s0();
    }

    /* renamed from: S0 */
    public EnumC6896b m19464S0() {
        return "companion_ad".equalsIgnoreCase(getStringFromAdObject("vast_first_caching_operation", "companion_ad")) ? EnumC6896b.COMPANION_AD : EnumC6896b.VIDEO;
    }

    /* renamed from: T0 */
    public boolean m19463T0() {
        return getBooleanFromAdObject("vast_immediate_ad_load", true);
    }

    /* renamed from: U0 */
    public Uri m19462U0() {
        C6902j jVar = this.f21096s;
        return jVar != null ? jVar.m19413c() : null;
    }

    /* renamed from: V0 */
    public C2033c m19461V0() {
        return this.f21094q;
    }

    /* renamed from: W0 */
    public C6902j m19460W0() {
        return this.f21096s;
    }

    /* renamed from: X0 */
    public C6905k m19459X0() {
        C6902j jVar = this.f21096s;
        return jVar != null ? jVar.m19416a(m19468O0()) : null;
    }

    /* renamed from: Y0 */
    public C2031a m19458Y0() {
        return this.f21097t;
    }

    /* renamed from: a */
    public final Set<C2034d> m19456a(EnumC6896b bVar, String[] strArr) {
        Map<String, Set<C2034d>> map;
        C6902j jVar;
        if (strArr == null || strArr.length <= 0) {
            return Collections.emptySet();
        }
        if (bVar != EnumC6896b.VIDEO || (jVar = this.f21096s) == null) {
            map = null;
            if (bVar == EnumC6896b.COMPANION_AD) {
                C2031a aVar = this.f21097t;
                map = null;
                if (aVar != null) {
                    map = aVar.m31242d();
                }
            }
        } else {
            map = jVar.m19411e();
        }
        HashSet hashSet = new HashSet();
        if (map != null && !map.isEmpty()) {
            for (String str : strArr) {
                if (map.containsKey(str)) {
                    hashSet.addAll(map.get(str));
                }
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: a */
    public Set<C2034d> m19455a(EnumC6897c cVar, String str) {
        return m19454a(cVar, new String[]{str});
    }

    /* renamed from: a */
    public Set<C2034d> m19454a(EnumC6897c cVar, String[] strArr) {
        C2374t d0 = this.sdk.m30262d0();
        d0.m30044b("VastAd", "Retrieving trackers of type '" + cVar + "' and events '" + strArr + "'...");
        if (cVar == EnumC6897c.IMPRESSION) {
            return this.f21099v;
        }
        if (cVar == EnumC6897c.VIDEO_CLICK) {
            return m19467P0();
        }
        if (cVar == EnumC6897c.COMPANION_CLICK) {
            return m19466Q0();
        }
        if (cVar == EnumC6897c.VIDEO) {
            return m19456a(EnumC6896b.VIDEO, strArr);
        }
        if (cVar == EnumC6897c.COMPANION) {
            return m19456a(EnumC6896b.COMPANION_AD, strArr);
        }
        if (cVar == EnumC6897c.ERROR) {
            return this.f21100w;
        }
        C2374t d02 = this.sdk.m30262d0();
        d02.m30039e("VastAd", "Failed to retrieve trackers of invalid type '" + cVar + "' and events '" + strArr + "'");
        return Collections.emptySet();
    }

    /* renamed from: a */
    public void m19453a(String str) {
        synchronized (this.adObjectLock) {
            C2390i.m29926a(this.adObject, "html_template", str, this.sdk);
        }
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C6894a) || !super.equals(obj)) {
            return false;
        }
        C6894a aVar = (C6894a) obj;
        String str = this.f21092o;
        if (str != null) {
            if (!str.equals(aVar.f21092o)) {
                return false;
            }
        } else if (aVar.f21092o != null) {
            return false;
        }
        String str2 = this.f21093p;
        if (str2 != null) {
            if (!str2.equals(aVar.f21093p)) {
                return false;
            }
        } else if (aVar.f21093p != null) {
            return false;
        }
        C2033c cVar = this.f21094q;
        if (cVar != null) {
            if (!cVar.equals(aVar.f21094q)) {
                return false;
            }
        } else if (aVar.f21094q != null) {
            return false;
        }
        C6902j jVar = this.f21096s;
        if (jVar != null) {
            if (!jVar.equals(aVar.f21096s)) {
                return false;
            }
        } else if (aVar.f21096s != null) {
            return false;
        }
        C2031a aVar2 = this.f21097t;
        if (aVar2 != null) {
            if (!aVar2.equals(aVar.f21097t)) {
                return false;
            }
        } else if (aVar.f21097t != null) {
            return false;
        }
        Set<C2034d> set = this.f21099v;
        if (set != null) {
            if (!set.equals(aVar.f21099v)) {
                return false;
            }
        } else if (aVar.f21099v != null) {
            return false;
        }
        Set<C2034d> set2 = this.f21100w;
        Set<C2034d> set3 = aVar.f21100w;
        if (set2 != null) {
            z = set2.equals(set3);
        } else if (set3 != null) {
            z = false;
        }
        return z;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public long getCreatedAtMillis() {
        return this.f21095r;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public boolean hasVideoUrl() {
        C6902j jVar = this.f21096s;
        boolean z = false;
        if (jVar != null) {
            List<C6905k> a = jVar.m19419a();
            z = false;
            if (a != null) {
                z = false;
                if (a.size() > 0) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public int hashCode() {
        int hashCode = super.hashCode();
        String str = this.f21092o;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.f21093p;
        int hashCode3 = str2 != null ? str2.hashCode() : 0;
        C2033c cVar = this.f21094q;
        int hashCode4 = cVar != null ? cVar.hashCode() : 0;
        C6902j jVar = this.f21096s;
        int hashCode5 = jVar != null ? jVar.hashCode() : 0;
        C2031a aVar = this.f21097t;
        int hashCode6 = aVar != null ? aVar.hashCode() : 0;
        Set<C2034d> set = this.f21099v;
        int hashCode7 = set != null ? set.hashCode() : 0;
        Set<C2034d> set2 = this.f21100w;
        if (set2 != null) {
            i = set2.hashCode();
        }
        return (((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + i;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: q0 */
    public List<C2260a> mo18877q0() {
        List<C2260a> a;
        synchronized (this.adObjectLock) {
            a = AbstractC2426r.m29799a("vimp_urls", this.adObject, getClCode(), C2386e.m29983a("{SOC}", String.valueOf(m18885m0())), m19469N0(), m18963B(), this.sdk);
        }
        return a;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: r0 */
    public String mo18875r0() {
        return this.f21098u;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: s0 */
    public boolean mo18873s0() {
        if (containsKeyForAdObject("vast_is_streaming")) {
            return getBooleanFromAdObject("vast_is_streaming", false);
        }
        C6905k X0 = m19459X0();
        boolean z = false;
        if (X0 != null) {
            z = false;
            if (X0.m19404c()) {
                z = true;
            }
        }
        return z;
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: t0 */
    public Uri mo18871t0() {
        C6905k X0 = m19459X0();
        if (X0 != null) {
            return X0.m19405b();
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.AppLovinAdBase
    public String toString() {
        return "VastAd{title='" + this.f21092o + "', adDescription='" + this.f21093p + "', systemInfo=" + this.f21094q + ", videoCreative=" + this.f21096s + ", companionAd=" + this.f21097t + ", impressionTrackers=" + this.f21099v + ", errorTrackers=" + this.f21100w + '}';
    }

    @Override // com.applovin.impl.sdk.p489ad.AbstractC7036g
    /* renamed from: u0 */
    public Uri mo18869u0() {
        return m19462U0();
    }
}
