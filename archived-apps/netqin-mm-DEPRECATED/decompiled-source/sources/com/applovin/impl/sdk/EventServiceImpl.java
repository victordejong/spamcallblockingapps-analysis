package com.applovin.impl.sdk;

import android.content.Intent;
import android.text.TextUtils;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinWebViewActivity;
import com.inmobi.ads.C8081af;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2345m;
import p131c.p135b.p136a.p148e.C2354o;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p152q.C2365e;
import p131c.p135b.p136a.p148e.p152q.C2368f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/EventServiceImpl.class */
public class EventServiceImpl implements AppLovinEventService {

    /* renamed from: a */
    public final C2341l f21570a;

    /* renamed from: b */
    public final Map<String, Object> f21571b;

    /* renamed from: c */
    public final AtomicBoolean f21572c = new AtomicBoolean();

    /* renamed from: com.applovin.impl.sdk.EventServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/EventServiceImpl$a.class */
    public class C7017a implements C2270g.C2308q.AbstractC2309a {

        /* renamed from: a */
        public final /* synthetic */ String f21573a;

        /* renamed from: b */
        public final /* synthetic */ Map f21574b;

        /* renamed from: c */
        public final /* synthetic */ boolean f21575c;

        /* renamed from: d */
        public final /* synthetic */ Map f21576d;

        public C7017a(String str, Map map, boolean z, Map map2) {
            this.f21573a = str;
            this.f21574b = map;
            this.f21575c = z;
            this.f21576d = map2;
        }

        @Override // p131c.p135b.p136a.p148e.C2270g.C2308q.AbstractC2309a
        /* renamed from: a */
        public void mo19037a(C2345m.C2347b bVar) {
            C2354o oVar = new C2354o(this.f21573a, this.f21574b, EventServiceImpl.this.f21571b);
            try {
                if (this.f21575c) {
                    C2365e.C2367b l = C2365e.m30125l();
                    l.m30122a(EventServiceImpl.this.m19049a());
                    l.m30118b(EventServiceImpl.this.m19042b());
                    l.m30121a(EventServiceImpl.this.m19046a(oVar, bVar));
                    l.m30117b(this.f21576d);
                    l.m30114c(oVar.m30198b());
                    l.m30120a(((Boolean) EventServiceImpl.this.f21570a.m30291a(C2251d.C2256e.f8586P3)).booleanValue());
                    EventServiceImpl.this.f21570a.m30247l().m30149a(l.m30124a());
                } else {
                    C2368f.C2369a b = C2368f.m30109b(EventServiceImpl.this.f21570a);
                    b.m30087d(EventServiceImpl.this.m19049a());
                    b.m30084e(EventServiceImpl.this.m19042b());
                    b.m30090c(EventServiceImpl.this.m19046a(oVar, bVar));
                    b.m30086d(this.f21576d);
                    b.m30093b(C2390i.m29938a((Map<String, ?>) oVar.m30198b()));
                    b.m30089c(((Boolean) EventServiceImpl.this.f21570a.m30291a(C2251d.C2256e.f8586P3)).booleanValue());
                    EventServiceImpl.this.f21570a.m30243p().dispatchPostbackRequest(b.mo30106a(), null);
                }
            } catch (Throwable th) {
                C2374t d0 = EventServiceImpl.this.f21570a.m30262d0();
                d0.m30043b("AppLovinEventService", "Unable to track event: " + oVar, th);
            }
        }
    }

    public EventServiceImpl(C2341l lVar) {
        this.f21570a = lVar;
        if (((Boolean) lVar.m30291a(C2251d.C2256e.f8706m0)).booleanValue()) {
            this.f21571b = C2390i.m29941a((String) this.f21570a.m30273b(C2251d.C2258g.f8809s, "{}"), new HashMap(), this.f21570a);
            return;
        }
        this.f21571b = new HashMap();
        lVar.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8809s, (C2251d.C2258g<String>) "{}");
    }

    /* renamed from: a */
    public final String m19049a() {
        return ((String) this.f21570a.m30291a(C2251d.C2256e.f8652d0)) + "4.0/pix";
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final HashMap<String, String> m19046a(C2354o oVar, C2345m.C2347b bVar) {
        C2345m m = this.f21570a.m30246m();
        C2345m.C2350e b = m.m30225b();
        C2345m.C2348c c = m.m30223c();
        boolean contains = this.f21570a.m30275b(C2251d.C2256e.f8688j0).contains(oVar.m30199a());
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("event", contains ? C2422o.m29847e(oVar.m30199a()) : "postinstall");
        hashMap.put("ts", Long.toString(oVar.m30197c()));
        hashMap.put("platform", C2422o.m29847e(b.f9119a));
        hashMap.put("model", C2422o.m29847e(b.f9122d));
        hashMap.put("api_level", String.valueOf(b.f9121c));
        hashMap.put("package_name", C2422o.m29847e(c.f9093c));
        hashMap.put("installer_name", C2422o.m29847e(c.f9094d));
        hashMap.put("ia", Long.toString(c.f9098h));
        hashMap.put("api_did", this.f21570a.m30291a(C2251d.C2256e.f8675h));
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
        hashMap.put("test_ads", C2422o.m29853a(c.f9099i));
        if (!((Boolean) this.f21570a.m30291a(C2251d.C2256e.f8586P3)).booleanValue()) {
            hashMap.put(AppLovinWebViewActivity.INTENT_EXTRA_KEY_SDK_KEY, this.f21570a.m30269b0());
        }
        m19047a(bVar, hashMap);
        if (((Boolean) this.f21570a.m30291a(C2251d.C2256e.f8585P2)).booleanValue()) {
            AbstractC2426r.m29804a("cuid", this.f21570a.m30305Q(), hashMap);
        }
        if (((Boolean) this.f21570a.m30291a(C2251d.C2256e.f8600S2)).booleanValue()) {
            hashMap.put("compass_random_token", this.f21570a.m30304R());
        }
        if (((Boolean) this.f21570a.m30291a(C2251d.C2256e.f8610U2)).booleanValue()) {
            hashMap.put("applovin_random_token", this.f21570a.m30303S());
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
        if (!contains) {
            hashMap.put("sub_event", C2422o.m29847e(oVar.m30199a()));
        }
        float f = b.f9116O;
        if (f > 0.0f) {
            hashMap.put("da", String.valueOf(f));
        }
        float f2 = b.f9117P;
        if (f2 > 0.0f) {
            hashMap.put("dm", String.valueOf(f2));
        }
        hashMap.put("sc", C2422o.m29847e((String) this.f21570a.m30291a(C2251d.C2256e.f8699l)));
        hashMap.put("sc2", C2422o.m29847e((String) this.f21570a.m30291a(C2251d.C2256e.f8705m)));
        hashMap.put("sc3", C2422o.m29847e((String) this.f21570a.m30291a(C2251d.C2256e.f8711n)));
        hashMap.put("server_installed_at", C2422o.m29847e((String) this.f21570a.m30291a(C2251d.C2256e.f8717o)));
        AbstractC2426r.m29804a("persisted_data", C2422o.m29847e((String) this.f21570a.m30290a(C2251d.C2258g.f8791A)), hashMap);
        AbstractC2426r.m29804a("plugin_version", C2422o.m29847e((String) this.f21570a.m30291a(C2251d.C2256e.f8620W2)), hashMap);
        AbstractC2426r.m29804a("mediation_provider", C2422o.m29847e(this.f21570a.m30300V()), hashMap);
        return hashMap;
    }

    /* renamed from: a */
    public final void m19048a(C2270g.C2308q.AbstractC2309a aVar) {
        this.f21570a.m30249j().m18826a(new C2270g.C2308q(this.f21570a, aVar), C7048s.EnumC7049a.ADVERTISING_INFO_COLLECTION);
    }

    /* renamed from: a */
    public final void m19047a(C2345m.C2347b bVar, Map<String, String> map) {
        String str = bVar.f9090b;
        if (C2422o.m29851b(str)) {
            map.put("idfa", str);
        }
        map.put("dnt", Boolean.toString(bVar.f9089a));
    }

    /* renamed from: a */
    public void m19043a(String str, boolean z) {
        trackEvent(str, new HashMap(), null, z);
    }

    /* renamed from: b */
    public final String m19042b() {
        return ((String) this.f21570a.m30291a(C2251d.C2256e.f8658e0)) + "4.0/pix";
    }

    /* renamed from: c */
    public final void m19040c() {
        if (((Boolean) this.f21570a.m30291a(C2251d.C2256e.f8706m0)).booleanValue()) {
            this.f21570a.m30289a((C2251d.C2258g<C2251d.C2258g<String>>) C2251d.C2258g.f8809s, (C2251d.C2258g<String>) C2390i.m29937a(this.f21571b, "{}", this.f21570a));
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public Map<String, Object> getSuperProperties() {
        return new HashMap(this.f21571b);
    }

    public void maybeTrackAppOpenEvent() {
        if (this.f21572c.compareAndSet(false, true)) {
            this.f21570a.m30297Y().trackEvent("landing");
        }
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void setSuperProperty(Object obj, String str) {
        if (TextUtils.isEmpty(str)) {
            C2374t.m30034j("AppLovinEventService", "Super property key cannot be null or empty");
        } else if (obj == null) {
            this.f21571b.remove(str);
            m19040c();
        } else {
            List<String> b = this.f21570a.m30275b(C2251d.C2256e.f8700l0);
            if (!AbstractC2426r.m29806a(obj, b, this.f21570a)) {
                C2374t.m30034j("AppLovinEventService", "Failed to set super property '" + obj + "' for key '" + str + "' - valid super property types include: " + b);
                return;
            }
            this.f21571b.put(str, AbstractC2426r.m29807a(obj, this.f21570a));
            m19040c();
        }
    }

    public String toString() {
        return "EventService{}";
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map<String, String> map) {
        HashMap hashMap = map != null ? new HashMap(map) : new HashMap(1);
        hashMap.put(AppLovinEventParameters.CHECKOUT_TRANSACTION_IDENTIFIER, str);
        trackEvent(AppLovinEventTypes.USER_COMPLETED_CHECKOUT, hashMap);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map<String, String> map) {
        trackEvent(str, map, null, true);
    }

    public void trackEvent(String str, Map<String, String> map, Map<String, String> map2, boolean z) {
        if (((Boolean) this.f21570a.m30291a(C2251d.C2256e.f8694k0)).booleanValue()) {
            C2374t d0 = this.f21570a.m30262d0();
            d0.m30044b("AppLovinEventService", "Tracking event: \"" + str + "\" with parameters: " + map);
            m19048a(new C7017a(str, map, z, map2));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map<String, String> map) {
        HashMap hashMap;
        HashMap hashMap2 = map != null ? new HashMap(map) : new HashMap();
        try {
            hashMap2.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            hashMap2.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
            hashMap = hashMap2;
        } catch (Throwable th) {
            String str = "AppLovinEventService";
            C2374t.m30041c(str, "Unable to track in app purchase - invalid purchase intent", th);
            hashMap = str;
        }
        trackEvent(AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, hashMap);
    }
}
