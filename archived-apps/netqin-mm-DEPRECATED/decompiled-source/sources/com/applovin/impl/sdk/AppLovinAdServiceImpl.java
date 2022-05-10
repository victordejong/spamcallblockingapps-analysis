package com.applovin.impl.sdk;

import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.text.TextUtils;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p489ad.C7030c;
import com.applovin.impl.sdk.p489ad.EnumC7029b;
import com.applovin.impl.sdk.p489ad.RunnableC7032f;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdService;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdUpdateListener;
import com.applovin.sdk.AppLovinSdk;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p150c.C2248d;
import p131c.p135b.p136a.p148e.p151e.C2260a;
import p131c.p135b.p136a.p148e.p152q.C2363d;
import p131c.p135b.p136a.p148e.p152q.C2365e;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2386e;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2390i;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl.class */
public class AppLovinAdServiceImpl implements AppLovinAdService {

    /* renamed from: a */
    public final C2341l f21541a;

    /* renamed from: b */
    public final C2374t f21542b;

    /* renamed from: d */
    public final Map<C2246b, C7013d> f21544d;

    /* renamed from: c */
    public final Handler f21543c = new Handler(Looper.getMainLooper());

    /* renamed from: e */
    public final Object f21545e = new Object();

    /* renamed from: com.applovin.impl.sdk.AppLovinAdServiceImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl$a.class */
    public class RunnableC7010a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdLoadListener f21546a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinAd f21547b;

        public RunnableC7010a(AppLovinAdServiceImpl appLovinAdServiceImpl, AppLovinAdLoadListener appLovinAdLoadListener, AppLovinAd appLovinAd) {
            this.f21546a = appLovinAdLoadListener;
            this.f21547b = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f21546a.adReceived(this.f21547b);
            } catch (Throwable th) {
                C2374t.m30041c("AppLovinAdService", "Unable to notify listener about a newly loaded ad", th);
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinAdServiceImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl$b.class */
    public class RunnableC7011b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAdLoadListener f21548a;

        /* renamed from: b */
        public final /* synthetic */ int f21549b;

        public RunnableC7011b(AppLovinAdServiceImpl appLovinAdServiceImpl, AppLovinAdLoadListener appLovinAdLoadListener, int i) {
            this.f21548a = appLovinAdLoadListener;
            this.f21549b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f21548a.failedToReceiveAd(this.f21549b);
            } catch (Throwable th) {
                C2374t.m30041c("AppLovinAdService", "Unable to notify listener about ad load failure", th);
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinAdServiceImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl$c.class */
    public class C7012c implements AppLovinAdLoadListener {

        /* renamed from: a */
        public final C7013d f21550a;

        public C7012c(C7013d dVar) {
            this.f21550a = dVar;
        }

        public /* synthetic */ C7012c(AppLovinAdServiceImpl appLovinAdServiceImpl, C7013d dVar, RunnableC7010a aVar) {
            this(dVar);
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            HashSet<AppLovinAdLoadListener> hashSet;
            C2246b adZone = ((AppLovinAdBase) appLovinAd).getAdZone();
            AppLovinAd appLovinAd2 = appLovinAd;
            if (!(appLovinAd instanceof C2248d)) {
                AppLovinAdServiceImpl.this.f21541a.m30241r().adReceived(appLovinAd);
                appLovinAd2 = new C2248d(adZone, AppLovinAdServiceImpl.this.f21541a);
            }
            synchronized (this.f21550a.f21552a) {
                try {
                    hashSet = new HashSet(this.f21550a.f21554c);
                    this.f21550a.f21554c.clear();
                    this.f21550a.f21553b = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : hashSet) {
                AppLovinAdServiceImpl.this.m19056a(appLovinAd2, appLovinAdLoadListener);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            HashSet<AppLovinAdLoadListener> hashSet;
            synchronized (this.f21550a.f21552a) {
                try {
                    hashSet = new HashSet(this.f21550a.f21554c);
                    this.f21550a.f21554c.clear();
                    this.f21550a.f21553b = false;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (AppLovinAdLoadListener appLovinAdLoadListener : hashSet) {
                AppLovinAdServiceImpl.this.m19066a(i, appLovinAdLoadListener);
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.AppLovinAdServiceImpl$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/AppLovinAdServiceImpl$d.class */
    public static class C7013d {

        /* renamed from: a */
        public final Object f21552a;

        /* renamed from: b */
        public boolean f21553b;

        /* renamed from: c */
        public final Collection<AppLovinAdLoadListener> f21554c;

        public C7013d() {
            this.f21552a = new Object();
            this.f21554c = new HashSet();
        }

        public /* synthetic */ C7013d(RunnableC7010a aVar) {
            this();
        }

        public String toString() {
            return "AdLoadState{, isWaitingForAd=" + this.f21553b + ", pendingAdListeners=" + this.f21554c + '}';
        }
    }

    public AppLovinAdServiceImpl(C2341l lVar) {
        this.f21541a = lVar;
        this.f21542b = lVar.m30262d0();
        HashMap hashMap = new HashMap(5);
        this.f21544d = hashMap;
        hashMap.put(C2246b.m30637c(lVar), new C7013d(null));
        this.f21544d.put(C2246b.m30635d(lVar), new C7013d(null));
        this.f21544d.put(C2246b.m30633e(lVar), new C7013d(null));
        this.f21544d.put(C2246b.m30631f(lVar), new C7013d(null));
        this.f21544d.put(C2246b.m30629g(lVar), new C7013d(null));
    }

    /* renamed from: a */
    public final C7013d m19064a(C2246b bVar) {
        C7013d dVar;
        synchronized (this.f21545e) {
            C7013d dVar2 = this.f21544d.get(bVar);
            dVar = dVar2;
            if (dVar2 == null) {
                dVar = new C7013d(null);
                this.f21544d.put(bVar, dVar);
            }
        }
        return dVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0014, code lost:
        if (r9 > 100) goto L_0x0017;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m19055a(java.lang.String r6, long r7, int r9, java.lang.String r10, boolean r11) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = p131c.p135b.p136a.p148e.p153y.C2422o.m29851b(r0)     // Catch: all -> 0x0052
            if (r0 == 0) goto L_0x0050
            r0 = r9
            if (r0 < 0) goto L_0x0017
            r0 = r9
            r12 = r0
            r0 = r9
            r1 = 100
            if (r0 <= r1) goto L_0x001a
        L_0x0017:
            r0 = 0
            r12 = r0
        L_0x001a:
            r0 = r6
            android.net.Uri r0 = android.net.Uri.parse(r0)     // Catch: all -> 0x0052
            android.net.Uri$Builder r0 = r0.buildUpon()     // Catch: all -> 0x0052
            java.lang.String r1 = "et_s"
            r2 = r7
            java.lang.String r2 = java.lang.Long.toString(r2)     // Catch: all -> 0x0052
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: all -> 0x0052
            java.lang.String r1 = "pv"
            r2 = r12
            java.lang.String r2 = java.lang.Integer.toString(r2)     // Catch: all -> 0x0052
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: all -> 0x0052
            java.lang.String r1 = "vid_ts"
            r2 = r10
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: all -> 0x0052
            java.lang.String r1 = "uvs"
            r2 = r11
            java.lang.String r2 = java.lang.Boolean.toString(r2)     // Catch: all -> 0x0052
            android.net.Uri$Builder r0 = r0.appendQueryParameter(r1, r2)     // Catch: all -> 0x0052
            android.net.Uri r0 = r0.build()     // Catch: all -> 0x0052
            java.lang.String r0 = r0.toString()     // Catch: all -> 0x0052
            r10 = r0
            r0 = r10
            return r0
        L_0x0050:
            r0 = 0
            return r0
        L_0x0052:
            r13 = move-exception
            r0 = r5
            c.b.a.e.t r0 = r0.f21542b
            r14 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r10 = r0
            r0 = r10
            java.lang.String r1 = "Unknown error parsing the video end url: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r14
            java.lang.String r1 = "AppLovinAdService"
            r2 = r10
            java.lang.String r2 = r2.toString()
            r3 = r13
            r0.m30043b(r1, r2, r3)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.applovin.impl.sdk.AppLovinAdServiceImpl.m19055a(java.lang.String, long, int, java.lang.String, boolean):java.lang.String");
    }

    /* renamed from: a */
    public final String m19054a(String str, long j, long j2, boolean z, int i) {
        if (!C2422o.m29851b(str)) {
            return null;
        }
        Uri.Builder appendQueryParameter = Uri.parse(str).buildUpon().appendQueryParameter("et_ms", Long.toString(j)).appendQueryParameter("vs_ms", Long.toString(j2));
        if (i != C7054e.f21780h) {
            appendQueryParameter.appendQueryParameter("musw_ch", Boolean.toString(z));
            appendQueryParameter.appendQueryParameter("musw_st", Boolean.toString(C7054e.m18805b(i)));
        }
        return appendQueryParameter.build().toString();
    }

    /* renamed from: a */
    public final void m19066a(int i, AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f21543c.post(new RunnableC7011b(this, appLovinAdLoadListener, i));
    }

    /* renamed from: a */
    public final void m19065a(Uri uri, AbstractC7036g gVar, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl) {
        if (appLovinAdView != null) {
            if (AbstractC2426r.m29823a(appLovinAdView.getContext(), uri, this.f21541a)) {
                C2391j.m29886c(adViewControllerImpl.getAdViewEventListener(), gVar, appLovinAdView);
            }
            adViewControllerImpl.dismissInterstitialIfRequired();
            return;
        }
        this.f21542b.m30039e("AppLovinAdService", "Unable to launch click - adView has been prematurely destroyed");
    }

    /* renamed from: a */
    public final void m19063a(C2246b bVar, C7012c cVar) {
        AppLovinAd appLovinAd = (AppLovinAd) this.f21541a.m30241r().m30016e(bVar);
        if (appLovinAd != null) {
            C2374t tVar = this.f21542b;
            tVar.m30044b("AppLovinAdService", "Using pre-loaded ad: " + appLovinAd + " for " + bVar);
            this.f21541a.m30238u().m30620a((AppLovinAdBase) appLovinAd, true, false);
            cVar.adReceived(appLovinAd);
            if (bVar.m30625j() || bVar.m30628h() > 0) {
                this.f21541a.m30241r().m30012i(bVar);
                return;
            }
            return;
        }
        m19060a(new C2270g.C2316u(bVar, cVar, this.f21541a), cVar);
    }

    /* renamed from: a */
    public final void m19062a(C2246b bVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        C2374t tVar;
        String str;
        if (bVar == null) {
            throw new IllegalArgumentException("No zone specified");
        } else if (appLovinAdLoadListener != null) {
            C2374t d0 = this.f21541a.m30262d0();
            d0.m30044b("AppLovinAdService", "Loading next ad of zone {" + bVar + "}...");
            C7013d a = m19064a(bVar);
            synchronized (a.f21552a) {
                a.f21554c.add(appLovinAdLoadListener);
                if (!a.f21553b) {
                    this.f21542b.m30044b("AppLovinAdService", "Loading next ad...");
                    a.f21553b = true;
                    C7012c cVar = new C7012c(this, a, null);
                    if (!bVar.m30626i()) {
                        this.f21542b.m30044b("AppLovinAdService", "Task merge not necessary.");
                    } else if (this.f21541a.m30241r().m30030a(bVar, cVar)) {
                        tVar = this.f21542b;
                        str = "Attaching load listener to initial preload task...";
                    } else {
                        this.f21542b.m30044b("AppLovinAdService", "Skipped attach of initial preload callback.");
                    }
                    m19063a(bVar, cVar);
                } else {
                    tVar = this.f21542b;
                    str = "Already waiting on an ad load...";
                }
                tVar.m30044b("AppLovinAdService", str);
            }
        } else {
            throw new IllegalArgumentException("No callback specified");
        }
    }

    /* renamed from: a */
    public final void m19061a(C2260a aVar) {
        if (C2422o.m29851b(aVar.m30565a())) {
            String b = AbstractC2426r.m29784b(aVar.m30565a());
            String b2 = C2422o.m29851b(aVar.m30564b()) ? AbstractC2426r.m29784b(aVar.m30564b()) : null;
            C2363d l = this.f21541a.m30247l();
            C2365e.C2367b l2 = C2365e.m30125l();
            l2.m30122a(b);
            l2.m30118b(b2);
            l2.m30117b(aVar.m30563c());
            l2.m30120a(false);
            l.m30149a(l2.m30124a());
            return;
        }
        this.f21542b.m30040d("AppLovinAdService", "Requested a postback dispatch for a null URL; nothing to do...");
    }

    /* renamed from: a */
    public final void m19060a(C2270g.AbstractRunnableC2278c cVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (!this.f21541a.m30310L()) {
            C2374t.m30035i(AppLovinSdk.TAG, "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener).");
        }
        this.f21541a.m30233z();
        this.f21541a.m30249j().m18826a(cVar, C7048s.EnumC7049a.MAIN);
    }

    /* renamed from: a */
    public final void m19056a(AppLovinAd appLovinAd, AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f21543c.post(new RunnableC7010a(this, appLovinAdLoadListener, appLovinAd));
    }

    /* renamed from: a */
    public final void m19053a(List<C2260a> list) {
        if (!(list == null || list.isEmpty())) {
            for (C2260a aVar : list) {
                m19061a(aVar);
            }
        }
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener) {
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void addAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
    }

    public AppLovinAd dequeueAd(C2246b bVar) {
        AppLovinAd appLovinAd = (AppLovinAd) this.f21541a.m30241r().m30017d(bVar);
        C2374t tVar = this.f21542b;
        tVar.m30044b("AppLovinAdService", "Dequeued ad: " + appLovinAd + " for zone: " + bVar + "...");
        return appLovinAd;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public String getBidToken() {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        String a = this.f21541a.m30246m().m30232a();
        StrictMode.setThreadPolicy(allowThreadDiskReads);
        return a;
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public boolean hasPreloadedAd(AppLovinAdSize appLovinAdSize) {
        return this.f21541a.m30241r().m30014g(C2246b.m30647a(appLovinAdSize, AppLovinAdType.REGULAR, this.f21541a));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public boolean hasPreloadedAdForZoneId(String str) {
        if (TextUtils.isEmpty(str)) {
            C2374t.m30034j("AppLovinAdService", "Unable to check if ad is preloaded - invalid zone id");
            return false;
        }
        return this.f21541a.m30241r().m30014g(C2246b.m30644a(str, this.f21541a));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAd(AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        m19062a(C2246b.m30647a(appLovinAdSize, AppLovinAdType.REGULAR, this.f21541a), appLovinAdLoadListener);
    }

    public void loadNextAd(String str, AppLovinAdSize appLovinAdSize, AppLovinAdLoadListener appLovinAdLoadListener) {
        C2374t tVar = this.f21542b;
        tVar.m30044b("AppLovinAdService", "Loading next ad of zone {" + str + "} with size " + appLovinAdSize);
        m19062a(C2246b.m30646a(appLovinAdSize, AppLovinAdType.REGULAR, str, this.f21541a), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForAdToken(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        C2270g.AbstractRunnableC2278c a0Var;
        String trim = str != null ? str.trim() : null;
        if (TextUtils.isEmpty(trim)) {
            C2374t.m30034j("AppLovinAdService", "Invalid ad token specified");
            m19066a(-8, appLovinAdLoadListener);
            return;
        }
        C7030c cVar = new C7030c(trim, this.f21541a);
        if (cVar.m18990b() == C7030c.EnumC7031a.REGULAR) {
            C2374t tVar = this.f21542b;
            tVar.m30044b("AppLovinAdService", "Loading next ad for token: " + cVar);
            a0Var = new C2270g.C2319w(cVar, appLovinAdLoadListener, this.f21541a);
        } else {
            if (cVar.m18990b() == C7030c.EnumC7031a.AD_RESPONSE_JSON) {
                JSONObject d = cVar.m18988d();
                if (d != null) {
                    C2389h.m29946e(d, this.f21541a);
                    C2389h.m29952b(d, this.f21541a);
                    C2389h.m29957a(d, this.f21541a);
                    if (C2390i.m29912b(d, "ads", new JSONArray(), this.f21541a).length() > 0) {
                        C2374t tVar2 = this.f21542b;
                        tVar2.m30044b("AppLovinAdService", "Rendering ad for token: " + cVar);
                        C2246b a = AbstractC2426r.m29793a(d, this.f21541a);
                        RunnableC7032f.C7035c cVar2 = new RunnableC7032f.C7035c(a, appLovinAdLoadListener, this.f21541a);
                        cVar2.m18966a(true);
                        a0Var = new C2270g.C2272a0(d, a, EnumC7029b.DECODED_AD_TOKEN_JSON, cVar2, this.f21541a);
                    } else {
                        C2374t tVar3 = this.f21542b;
                        tVar3.m30039e("AppLovinAdService", "No ad returned from the server for token: " + cVar);
                        appLovinAdLoadListener.failedToReceiveAd(204);
                        return;
                    }
                } else {
                    C2374t tVar4 = this.f21542b;
                    tVar4.m30039e("AppLovinAdService", "Unable to retrieve ad response JSON from token: " + cVar);
                }
            } else {
                C2374t.m30034j("AppLovinAdService", "Invalid ad token specified: " + cVar);
            }
            appLovinAdLoadListener.failedToReceiveAd(-8);
            return;
        }
        m19060a(a0Var, appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneId(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        if (!TextUtils.isEmpty(str)) {
            C2374t tVar = this.f21542b;
            tVar.m30044b("AppLovinAdService", "Loading next ad of zone {" + str + "}");
            m19062a(C2246b.m30644a(str, this.f21541a), appLovinAdLoadListener);
            return;
        }
        throw new IllegalArgumentException("No zone id specified");
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void loadNextAdForZoneIds(List<String> list, AppLovinAdLoadListener appLovinAdLoadListener) {
        List<String> a = C2386e.m29978a(list);
        if (a == null || a.isEmpty()) {
            C2374t.m30034j("AppLovinAdService", "No zones were provided");
            m19066a(-7, appLovinAdLoadListener);
            return;
        }
        C2374t tVar = this.f21542b;
        tVar.m30044b("AppLovinAdService", "Loading next ad for zones: " + a);
        m19060a(new C2270g.C2315t(a, appLovinAdLoadListener, this.f21541a), appLovinAdLoadListener);
    }

    public void loadNextIncentivizedAd(String str, AppLovinAdLoadListener appLovinAdLoadListener) {
        C2374t tVar = this.f21542b;
        tVar.m30044b("AppLovinAdService", "Loading next incentivized ad of zone {" + str + "}");
        m19062a(C2246b.m30639b(str, this.f21541a), appLovinAdLoadListener);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void preloadAd(AppLovinAdSize appLovinAdSize) {
        this.f21541a.m30233z();
        this.f21541a.m30241r().m30012i(C2246b.m30647a(appLovinAdSize, AppLovinAdType.REGULAR, this.f21541a));
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void preloadAdForZoneId(String str) {
        if (TextUtils.isEmpty(str)) {
            C2374t.m30034j("AppLovinAdService", "Unable to preload ad for invalid zone identifier");
            return;
        }
        C2246b a = C2246b.m30644a(str, this.f21541a);
        this.f21541a.m30241r().m30013h(a);
        this.f21541a.m30241r().m30012i(a);
    }

    public void preloadAds(C2246b bVar) {
        this.f21541a.m30241r().m30013h(bVar);
        int h = bVar.m30628h();
        int i = h;
        if (h == 0) {
            i = h;
            if (this.f21541a.m30241r().m30024b(bVar)) {
                i = 1;
            }
        }
        this.f21541a.m30241r().m30023b(bVar, i);
    }

    @Override // com.applovin.sdk.AppLovinAdService
    public void removeAdUpdateListener(AppLovinAdUpdateListener appLovinAdUpdateListener, AppLovinAdSize appLovinAdSize) {
    }

    public String toString() {
        return "AppLovinAdService{adLoadStates=" + this.f21544d + '}';
    }

    public void trackAndLaunchClick(AbstractC7036g gVar, AppLovinAdView appLovinAdView, AdViewControllerImpl adViewControllerImpl, Uri uri, PointF pointF) {
        if (gVar == null) {
            this.f21542b.m30039e("AppLovinAdService", "Unable to track ad view click. No ad specified");
            return;
        }
        this.f21542b.m30044b("AppLovinAdService", "Tracking click on an ad...");
        m19053a(gVar.m18928a(pointF));
        m19065a(uri, gVar, appLovinAdView, adViewControllerImpl);
    }

    public void trackAndLaunchVideoClick(AbstractC7036g gVar, AppLovinAdView appLovinAdView, Uri uri, PointF pointF) {
        if (gVar == null) {
            this.f21542b.m30039e("AppLovinAdService", "Unable to track video click. No ad specified");
            return;
        }
        this.f21542b.m30044b("AppLovinAdService", "Tracking VIDEO click on an ad...");
        m19053a(gVar.m18920b(pointF));
        AbstractC2426r.m29823a(appLovinAdView.getContext(), uri, this.f21541a);
    }

    public void trackAppKilled(AbstractC7036g gVar) {
        if (gVar == null) {
            this.f21542b.m30039e("AppLovinAdService", "Unable to track app killed. No ad specified");
            return;
        }
        this.f21542b.m30044b("AppLovinAdService", "Tracking app killed during ad...");
        List<C2260a> p0 = gVar.m18879p0();
        if (p0 == null || p0.isEmpty()) {
            C2374t tVar = this.f21542b;
            tVar.m30040d("AppLovinAdService", "Unable to track app killed during AD #" + gVar.getAdIdNumber() + ". Missing app killed tracking URL.");
            return;
        }
        for (C2260a aVar : p0) {
            m19061a(new C2260a(aVar.m30565a(), aVar.m30564b()));
        }
    }

    public void trackFullScreenAdClosed(AbstractC7036g gVar, long j, long j2, boolean z, int i) {
        C2374t tVar = this.f21542b;
        if (gVar == null) {
            tVar.m30039e("AppLovinAdService", "Unable to track ad closed. No ad specified.");
            return;
        }
        tVar.m30044b("AppLovinAdService", "Tracking ad closed...");
        List<C2260a> o0 = gVar.m18881o0();
        if (o0 == null || o0.isEmpty()) {
            C2374t tVar2 = this.f21542b;
            tVar2.m30040d("AppLovinAdService", "Unable to track ad closed for AD #" + gVar.getAdIdNumber() + ". Missing ad close tracking URL." + gVar.getAdIdNumber());
            return;
        }
        for (C2260a aVar : o0) {
            String a = m19054a(aVar.m30565a(), j, j2, z, i);
            String a2 = m19054a(aVar.m30564b(), j, j2, z, i);
            if (C2422o.m29851b(a)) {
                m19061a(new C2260a(a, a2));
            } else {
                C2374t tVar3 = this.f21542b;
                tVar3.m30039e("AppLovinAdService", "Failed to parse url: " + aVar.m30565a());
            }
        }
    }

    public void trackImpression(AbstractC7036g gVar) {
        if (gVar == null) {
            this.f21542b.m30039e("AppLovinAdService", "Unable to track impression click. No ad specified");
            return;
        }
        this.f21542b.m30044b("AppLovinAdService", "Tracking impression on ad...");
        m19053a(gVar.mo18877q0());
        this.f21541a.m30238u().m30619a(gVar);
    }

    public void trackVideoEnd(AbstractC7036g gVar, long j, int i, boolean z) {
        C2374t tVar = this.f21542b;
        if (gVar == null) {
            tVar.m30039e("AppLovinAdService", "Unable to track video end. No ad specified");
            return;
        }
        tVar.m30044b("AppLovinAdService", "Tracking video end on ad...");
        List<C2260a> n0 = gVar.m18883n0();
        if (n0 == null || n0.isEmpty()) {
            C2374t tVar2 = this.f21542b;
            tVar2.m30040d("AppLovinAdService", "Unable to submit persistent postback for AD #" + gVar.getAdIdNumber() + ". Missing video end tracking URL.");
            return;
        }
        String l = Long.toString(System.currentTimeMillis());
        for (C2260a aVar : n0) {
            if (C2422o.m29851b(aVar.m30565a())) {
                String a = m19055a(aVar.m30565a(), j, i, l, z);
                String a2 = m19055a(aVar.m30564b(), j, i, l, z);
                if (a != null) {
                    m19061a(new C2260a(a, a2));
                } else {
                    C2374t tVar3 = this.f21542b;
                    tVar3.m30039e("AppLovinAdService", "Failed to parse url: " + aVar.m30565a());
                }
            } else {
                this.f21542b.m30040d("AppLovinAdService", "Requested a postback dispatch for an empty video end URL; nothing to do...");
            }
        }
    }
}
