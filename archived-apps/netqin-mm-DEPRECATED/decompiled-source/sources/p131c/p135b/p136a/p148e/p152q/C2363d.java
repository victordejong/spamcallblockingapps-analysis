package p131c.p135b.p136a.p148e.p152q;

import android.content.SharedPreferences;
import com.applovin.sdk.AppLovinPostbackListener;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import org.json.JSONObject;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p152q.C2368f;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.q.d */
/* loaded from: classes-dex2jar.jar:c/b/a/e/q/d.class */
public class C2363d {

    /* renamed from: a */
    public final C2341l f9193a;

    /* renamed from: b */
    public final C2374t f9194b;

    /* renamed from: c */
    public final SharedPreferences f9195c;

    /* renamed from: e */
    public final ArrayList<C2365e> f9197e;

    /* renamed from: d */
    public final Object f9196d = new Object();

    /* renamed from: f */
    public final ArrayList<C2365e> f9198f = new ArrayList<>();

    /* renamed from: g */
    public final Set<C2365e> f9199g = new HashSet();

    /* renamed from: c.b.a.e.q.d$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/q/d$a.class */
    public class C2364a implements AppLovinPostbackListener {

        /* renamed from: a */
        public final /* synthetic */ C2365e f9200a;

        /* renamed from: b */
        public final /* synthetic */ AppLovinPostbackListener f9201b;

        public C2364a(C2365e eVar, AppLovinPostbackListener appLovinPostbackListener) {
            this.f9200a = eVar;
            this.f9201b = appLovinPostbackListener;
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackFailure(String str, int i) {
            C2374t tVar = C2363d.this.f9194b;
            tVar.m30042c("PersistentPostbackManager", "Failed to submit postback with errorCode " + i + ". Will retry later...  Postback: " + this.f9200a);
            C2363d.this.m30137e(this.f9200a);
            C2391j.m29892a(this.f9201b, str, i);
        }

        @Override // com.applovin.sdk.AppLovinPostbackListener
        public void onPostbackSuccess(String str) {
            C2363d.this.m30138d(this.f9200a);
            C2374t tVar = C2363d.this.f9194b;
            tVar.m30044b("PersistentPostbackManager", "Successfully submitted postback: " + this.f9200a);
            C2363d.this.m30139d();
            C2391j.m29893a(this.f9201b, str);
        }
    }

    public C2363d(C2341l lVar) {
        if (lVar != null) {
            this.f9193a = lVar;
            this.f9194b = lVar.m30262d0();
            this.f9195c = lVar.m30264d().getSharedPreferences("com.applovin.sdk.impl.postbackQueue.domain", 0);
            this.f9197e = m30145b();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    public void m30152a() {
        synchronized (this.f9196d) {
            try {
                if (this.f9197e != null) {
                    for (C2365e eVar : new ArrayList(this.f9197e)) {
                        m30140c(eVar);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public void m30149a(C2365e eVar) {
        m30147a(eVar, true);
    }

    /* renamed from: a */
    public final void m30148a(C2365e eVar, AppLovinPostbackListener appLovinPostbackListener) {
        C2374t tVar = this.f9194b;
        tVar.m30044b("PersistentPostbackManager", "Preparing to submit postback..." + eVar);
        if (this.f9193a.m30311K()) {
            this.f9194b.m30044b("PersistentPostbackManager", "Skipping postback dispatch because SDK is still initializing - postback will be dispatched afterwards");
            return;
        }
        synchronized (this.f9196d) {
            if (this.f9199g.contains(eVar)) {
                C2374t tVar2 = this.f9194b;
                tVar2.m30044b("PersistentPostbackManager", "Skip pending postback: " + eVar.m30136a());
                return;
            }
            eVar.m30128i();
            m30141c();
            int intValue = ((Integer) this.f9193a.m30291a(C2251d.C2256e.f8738r2)).intValue();
            if (eVar.m30129h() > intValue) {
                C2374t tVar3 = this.f9194b;
                tVar3.m30040d("PersistentPostbackManager", "Exceeded maximum persisted attempt count of " + intValue + ". Dequeuing postback: " + eVar);
                m30138d(eVar);
                return;
            }
            synchronized (this.f9196d) {
                this.f9199g.add(eVar);
            }
            JSONObject jSONObject = eVar.m30132e() != null ? new JSONObject(eVar.m30132e()) : null;
            C2368f.C2369a b = C2368f.m30109b(this.f9193a);
            b.m30087d(eVar.m30136a());
            b.m30084e(eVar.m30135b());
            b.m30090c(eVar.m30134c());
            b.m30086d(eVar.m30133d());
            b.m30093b(jSONObject);
            b.m30089c(eVar.m30131f());
            b.m30081g(eVar.m30130g());
            this.f9193a.m30243p().dispatchPostbackRequest(b.mo30106a(), new C2364a(eVar, appLovinPostbackListener));
        }
    }

    /* renamed from: a */
    public void m30147a(C2365e eVar, boolean z) {
        m30146a(eVar, z, null);
    }

    /* renamed from: a */
    public void m30146a(C2365e eVar, boolean z, AppLovinPostbackListener appLovinPostbackListener) {
        if (C2422o.m29851b(eVar.m30136a())) {
            if (z) {
                eVar.m30127j();
            }
            synchronized (this.f9196d) {
                m30142b(eVar);
                m30148a(eVar, appLovinPostbackListener);
            }
        }
    }

    /* renamed from: b */
    public final ArrayList<C2365e> m30145b() {
        Set<String> set = (Set) this.f9193a.m30272b(C2251d.C2258g.f8805o, new LinkedHashSet(0), this.f9195c);
        ArrayList<C2365e> arrayList = new ArrayList<>(Math.max(1, set.size()));
        int intValue = ((Integer) this.f9193a.m30291a(C2251d.C2256e.f8738r2)).intValue();
        C2374t tVar = this.f9194b;
        tVar.m30044b("PersistentPostbackManager", "Deserializing " + set.size() + " postback(s).");
        for (String str : set) {
            try {
                C2365e eVar = new C2365e(new JSONObject(str), this.f9193a);
                if (eVar.m30129h() < intValue) {
                    arrayList.add(eVar);
                } else {
                    C2374t tVar2 = this.f9194b;
                    tVar2.m30044b("PersistentPostbackManager", "Skipping deserialization because maximum attempt count exceeded for postback: " + eVar);
                }
            } catch (Throwable th) {
                C2374t tVar3 = this.f9194b;
                tVar3.m30043b("PersistentPostbackManager", "Unable to deserialize postback request from json: " + str, th);
            }
        }
        C2374t tVar4 = this.f9194b;
        tVar4.m30044b("PersistentPostbackManager", "Successfully loaded postback queue with " + arrayList.size() + " postback(s).");
        return arrayList;
    }

    /* renamed from: b */
    public final void m30142b(C2365e eVar) {
        synchronized (this.f9196d) {
            this.f9197e.add(eVar);
            m30141c();
            C2374t tVar = this.f9194b;
            tVar.m30044b("PersistentPostbackManager", "Enqueued postback: " + eVar);
        }
    }

    /* renamed from: c */
    public final void m30141c() {
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f9197e.size());
        Iterator<C2365e> it = this.f9197e.iterator();
        while (it.hasNext()) {
            try {
                linkedHashSet.add(it.next().m30126k().toString());
            } catch (Throwable th) {
                this.f9194b.m30043b("PersistentPostbackManager", "Unable to serialize postback request to JSON.", th);
            }
        }
        this.f9193a.m30288a((C2251d.C2258g<C2251d.C2258g<HashSet>>) C2251d.C2258g.f8805o, (C2251d.C2258g<HashSet>) linkedHashSet, this.f9195c);
        this.f9194b.m30044b("PersistentPostbackManager", "Wrote updated postback queue to disk.");
    }

    /* renamed from: c */
    public final void m30140c(C2365e eVar) {
        m30148a(eVar, (AppLovinPostbackListener) null);
    }

    /* renamed from: d */
    public final void m30139d() {
        synchronized (this.f9196d) {
            try {
                Iterator<C2365e> it = this.f9198f.iterator();
                while (it.hasNext()) {
                    m30140c(it.next());
                }
                this.f9198f.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: d */
    public final void m30138d(C2365e eVar) {
        synchronized (this.f9196d) {
            this.f9199g.remove(eVar);
            this.f9197e.remove(eVar);
            m30141c();
        }
        C2374t tVar = this.f9194b;
        tVar.m30044b("PersistentPostbackManager", "Dequeued successfully transmitted postback: " + eVar);
    }

    /* renamed from: e */
    public final void m30137e(C2365e eVar) {
        synchronized (this.f9196d) {
            this.f9199g.remove(eVar);
            this.f9198f.add(eVar);
        }
    }
}
