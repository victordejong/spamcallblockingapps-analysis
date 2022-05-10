package p131c.p135b.p136a.p148e;

import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.nativeAds.AppLovinNativeAdLoadListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.p150c.AbstractC2250f;
import p131c.p135b.p136a.p148e.p150c.C2246b;
import p131c.p135b.p136a.p148e.p150c.C2248d;
/* renamed from: c.b.a.e.v */
/* loaded from: classes-dex2jar.jar:c/b/a/e/v.class */
public abstract class AbstractC2377v implements AbstractC2355p, AppLovinNativeAdLoadListener {

    /* renamed from: a */
    public final C2341l f9237a;

    /* renamed from: b */
    public final C2374t f9238b;

    /* renamed from: c */
    public final Object f9239c = new Object();

    /* renamed from: d */
    public final Map<C2246b, C2379w> f9240d = new HashMap();

    /* renamed from: e */
    public final Map<C2246b, C2379w> f9241e = new HashMap();

    /* renamed from: f */
    public final Map<C2246b, Object> f9242f = new HashMap();

    /* renamed from: g */
    public final Set<C2246b> f9243g = new HashSet();

    /* renamed from: c.b.a.e.v$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/v$a.class */
    public class RunnableC2378a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2246b f9244a;

        /* renamed from: b */
        public final /* synthetic */ int f9245b;

        public RunnableC2378a(C2246b bVar, int i) {
            this.f9244a = bVar;
            this.f9245b = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (AbstractC2377v.this.f9239c) {
                Object obj = AbstractC2377v.this.f9242f.get(this.f9244a);
                if (obj != null) {
                    AbstractC2377v.this.f9242f.remove(this.f9244a);
                    C2374t tVar = AbstractC2377v.this.f9238b;
                    tVar.m30039e("PreloadManager", "Load callback for zone " + this.f9244a + " timed out after " + this.f9245b + " seconds");
                    AbstractC2377v.this.mo30027a(obj, this.f9244a, AppLovinErrorCodes.FETCH_AD_TIMEOUT);
                }
            }
        }
    }

    public AbstractC2377v(C2341l lVar) {
        this.f9237a = lVar;
        this.f9238b = lVar.m30262d0();
    }

    /* renamed from: a */
    public abstract C2246b mo30029a(AbstractC2250f fVar);

    /* renamed from: a */
    public abstract C2270g.AbstractRunnableC2278c mo30031a(C2246b bVar);

    /* renamed from: a */
    public abstract void mo30027a(Object obj, C2246b bVar, int i);

    /* renamed from: a */
    public abstract void mo30026a(Object obj, AbstractC2250f fVar);

    /* renamed from: a */
    public void m30025a(LinkedHashSet<C2246b> linkedHashSet) {
        Map<C2246b, Object> map = this.f9242f;
        if (map != null && !map.isEmpty()) {
            synchronized (this.f9239c) {
                Iterator<C2246b> it = this.f9242f.keySet().iterator();
                while (it.hasNext()) {
                    C2246b next = it.next();
                    if (!next.m30625j() && !linkedHashSet.contains(next)) {
                        Object obj = this.f9242f.get(next);
                        it.remove();
                        C2374t.m30034j("AppLovinAdService", "Failed to load ad for zone (" + next.m30650a() + "). Please check that the zone has been added to your AppLovin account and given at least 30 minutes to fully propagate.");
                        mo30027a(obj, next, -7);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public boolean m30030a(C2246b bVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        boolean z;
        synchronized (this.f9239c) {
            if (!m30007n(bVar)) {
                m30022b(bVar, appLovinAdLoadListener);
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: b */
    public void m30023b(C2246b bVar, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m30012i(bVar);
        }
    }

    /* renamed from: b */
    public final void m30022b(C2246b bVar, AppLovinAdLoadListener appLovinAdLoadListener) {
        synchronized (this.f9239c) {
            if (this.f9242f.containsKey(bVar)) {
                this.f9238b.m30040d("PreloadManager", "Possibly missing prior registered preload callback.");
            }
            this.f9242f.put(bVar, appLovinAdLoadListener);
        }
        int intValue = ((Integer) this.f9237a.m30291a(C2251d.C2256e.f8724p0)).intValue();
        if (intValue > 0) {
            AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2378a(bVar, intValue), TimeUnit.SECONDS.toMillis(intValue));
        }
    }

    /* renamed from: b */
    public void m30021b(AbstractC2250f fVar) {
        Object obj;
        C2246b a = mo30029a(fVar);
        synchronized (this.f9239c) {
            obj = this.f9242f.get(a);
            this.f9242f.remove(a);
            this.f9243g.add(a);
            m30011j(a).m30004a(fVar);
            C2374t tVar = this.f9238b;
            tVar.m30044b("PreloadManager", "Ad enqueued: " + fVar);
        }
        if (obj != null) {
            C2374t tVar2 = this.f9238b;
            tVar2.m30044b("PreloadManager", "Called additional callback regarding " + fVar);
            mo30026a(obj, new C2248d(a, this.f9237a));
        }
        C2374t tVar3 = this.f9238b;
        tVar3.m30044b("PreloadManager", "Pulled ad from network and saved to preload cache: " + fVar);
    }

    /* renamed from: b */
    public boolean m30024b(C2246b bVar) {
        return this.f9242f.containsKey(bVar);
    }

    /* renamed from: c */
    public AbstractC2250f m30019c(C2246b bVar) {
        AbstractC2250f f;
        synchronized (this.f9239c) {
            C2379w m = m30008m(bVar);
            f = m != null ? m.m29999f() : null;
        }
        return f;
    }

    /* renamed from: c */
    public void m30018c(C2246b bVar, int i) {
        Object remove;
        C2374t tVar = this.f9238b;
        tVar.m30044b("PreloadManager", "Failed to pre-load an ad of zone " + bVar + ", error code " + i);
        synchronized (this.f9239c) {
            remove = this.f9242f.remove(bVar);
            this.f9243g.add(bVar);
        }
        if (remove != null) {
            try {
                mo30027a(remove, bVar, i);
            } catch (Throwable th) {
                C2374t.m30041c("PreloadManager", "Encountered exception while invoking user callback", th);
            }
        }
    }

    /* renamed from: d */
    public AbstractC2250f m30017d(C2246b bVar) {
        AbstractC2250f e;
        synchronized (this.f9239c) {
            C2379w m = m30008m(bVar);
            e = m != null ? m.m30000e() : null;
        }
        return e;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [c.b.a.e.w, boolean] */
    /* JADX WARN: Type inference failed for: r0v11, types: [c.b.a.e.w, int] */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v18 */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.StringBuilder, c.b.a.e.t] */
    /* JADX WARN: Unknown variable types count: 3 */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p131c.p135b.p136a.p148e.p150c.AbstractC2250f m30016e(p131c.p135b.p136a.p148e.p150c.C2246b r6) {
        /*
            r5 = this;
            r0 = r5
            java.lang.Object r0 = r0.f9239c
            r7 = r0
            r0 = r7
            monitor-enter(r0)
            r0 = r5
            r1 = r6
            c.b.a.e.w r0 = r0.m30011j(r1)     // Catch: all -> 0x00a5
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r8
            if (r0 == 0) goto L_0x005e
            r0 = r5
            r1 = r6
            c.b.a.e.w r0 = r0.m30010k(r1)     // Catch: all -> 0x00a5
            r11 = r0
            r0 = r11
            boolean r0 = r0.m30002c()     // Catch: all -> 0x00a5
            if (r0 == 0) goto L_0x0039
            c.b.a.e.c.d r0 = new c.b.a.e.c.d     // Catch: all -> 0x00a5
            r10 = r0
            r0 = r10
            r1 = r6
            r2 = r5
            c.b.a.e.l r2 = r2.f9237a     // Catch: all -> 0x00a5
            r0.<init>(r1, r2)     // Catch: all -> 0x00a5
        L_0x0036:
            goto L_0x005e
        L_0x0039:
            r0 = r9
            r10 = r0
            r0 = r8
            int r0 = r0.m30006a()     // Catch: all -> 0x00a5
            if (r0 <= 0) goto L_0x005e
            r0 = r11
            r1 = r8
            c.b.a.e.c.f r1 = r1.m30000e()     // Catch: all -> 0x00a5
            r0.m30004a(r1)     // Catch: all -> 0x00a5
            c.b.a.e.c.d r0 = new c.b.a.e.c.d     // Catch: all -> 0x00a5
            r1 = r0
            r2 = r6
            r3 = r5
            c.b.a.e.l r3 = r3.f9237a     // Catch: all -> 0x00a5
            r1.<init>(r2, r3)     // Catch: all -> 0x00a5
            r10 = r0
            goto L_0x0036
        L_0x005e:
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x00a5
            r0 = r5
            c.b.a.e.t r0 = r0.f9238b
            r7 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r8 = r0
            r0 = r10
            if (r0 == 0) goto L_0x007a
            r0 = r8
            r0.<init>()
            java.lang.String r0 = "Retrieved ad of zone "
            r9 = r0
            goto L_0x0083
        L_0x007a:
            r0 = r8
            r0.<init>()
            java.lang.String r0 = "Unable to retrieve ad of zone "
            r9 = r0
        L_0x0083:
            r0 = r8
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = "..."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = "PreloadManager"
            r2 = r8
            java.lang.String r2 = r2.toString()
            r0.m30044b(r1, r2)
            r0 = r10
            return r0
        L_0x00a5:
            r6 = move-exception
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x00a5
            goto L_0x00ad
        L_0x00ab:
            r0 = r6
            throw r0
        L_0x00ad:
            goto L_0x00ab
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p148e.AbstractC2377v.m30016e(c.b.a.e.c.b):c.b.a.e.c.f");
    }

    /* renamed from: f */
    public void m30015f(C2246b bVar) {
        if (bVar != null) {
            int i = 0;
            synchronized (this.f9239c) {
                C2379w j = m30011j(bVar);
                if (j != null) {
                    i = j.m30003b() - j.m30006a();
                }
            }
            m30023b(bVar, i);
        }
    }

    /* renamed from: g */
    public boolean m30014g(C2246b bVar) {
        synchronized (this.f9239c) {
            C2379w k = m30010k(bVar);
            boolean z = true;
            if (k != null && k.m30006a() > 0) {
                return true;
            }
            C2379w j = m30011j(bVar);
            if (j == null || j.m30001d()) {
                z = false;
            }
            return z;
        }
    }

    /* renamed from: h */
    public void m30013h(C2246b bVar) {
        synchronized (this.f9239c) {
            C2379w j = m30011j(bVar);
            if (j != null) {
                j.m30005a(bVar.m30632f());
            } else {
                this.f9240d.put(bVar, new C2379w(bVar.m30632f()));
            }
            C2379w k = m30010k(bVar);
            if (k != null) {
                k.m30005a(bVar.m30630g());
            } else {
                this.f9241e.put(bVar, new C2379w(bVar.m30630g()));
            }
        }
    }

    /* renamed from: i */
    public void m30012i(C2246b bVar) {
        if (((Boolean) this.f9237a.m30291a(C2251d.C2256e.f8730q0)).booleanValue() && !m30009l(bVar)) {
            C2374t tVar = this.f9238b;
            tVar.m30044b("PreloadManager", "Preloading ad for zone " + bVar + "...");
            this.f9237a.m30249j().m18825a(mo30031a(bVar), C7048s.EnumC7049a.MAIN, 500L);
        }
    }

    /* renamed from: j */
    public final C2379w m30011j(C2246b bVar) {
        C2379w wVar;
        synchronized (this.f9239c) {
            C2379w wVar2 = this.f9240d.get(bVar);
            wVar = wVar2;
            if (wVar2 == null) {
                wVar = new C2379w(bVar.m30632f());
                this.f9240d.put(bVar, wVar);
            }
        }
        return wVar;
    }

    /* renamed from: k */
    public final C2379w m30010k(C2246b bVar) {
        C2379w wVar;
        synchronized (this.f9239c) {
            C2379w wVar2 = this.f9241e.get(bVar);
            wVar = wVar2;
            if (wVar2 == null) {
                wVar = new C2379w(bVar.m30630g());
                this.f9241e.put(bVar, wVar);
            }
        }
        return wVar;
    }

    /* renamed from: l */
    public final boolean m30009l(C2246b bVar) {
        boolean z;
        synchronized (this.f9239c) {
            C2379w j = m30011j(bVar);
            z = j != null && j.m30002c();
        }
        return z;
    }

    /* renamed from: m */
    public final C2379w m30008m(C2246b bVar) {
        synchronized (this.f9239c) {
            C2379w k = m30010k(bVar);
            if (k != null && k.m30006a() > 0) {
                return k;
            }
            return m30011j(bVar);
        }
    }

    /* renamed from: n */
    public final boolean m30007n(C2246b bVar) {
        boolean contains;
        synchronized (this.f9239c) {
            contains = this.f9243g.contains(bVar);
        }
        return contains;
    }
}
