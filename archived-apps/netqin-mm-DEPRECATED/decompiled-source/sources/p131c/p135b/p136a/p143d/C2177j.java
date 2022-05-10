package p131c.p135b.p136a.p143d;

import android.text.TextUtils;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.sdk.AppLovinSdk;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.d.j */
/* loaded from: classes-dex2jar.jar:c/b/a/d/j.class */
public class C2177j {

    /* renamed from: a */
    public final C2341l f8269a;

    /* renamed from: b */
    public final C2374t f8270b;

    /* renamed from: c */
    public final Object f8271c = new Object();

    /* renamed from: d */
    public final Map<String, Class<? extends MaxAdapter>> f8272d = new HashMap();

    /* renamed from: e */
    public final Set<String> f8273e = new HashSet();

    public C2177j(C2341l lVar) {
        if (lVar != null) {
            this.f8269a = lVar;
            this.f8270b = lVar.m30262d0();
            return;
        }
        throw new IllegalArgumentException("No sdk specified");
    }

    /* renamed from: a */
    public C2178k m30788a(C2135c.C2141f fVar) {
        Class<? extends MaxAdapter> cls;
        C2374t tVar;
        String str;
        if (fVar != null) {
            String d = fVar.m30902d();
            String c = fVar.m30906c();
            if (TextUtils.isEmpty(d)) {
                tVar = this.f8270b;
                str = "No adapter name provided for " + c + ", not loading the adapter ";
            } else if (TextUtils.isEmpty(c)) {
                tVar = this.f8270b;
                str = "Unable to find default classname for '" + d + "'";
            } else {
                synchronized (this.f8271c) {
                    if (!this.f8273e.contains(c)) {
                        if (this.f8272d.containsKey(c)) {
                            cls = this.f8272d.get(c);
                        } else {
                            Class<? extends MaxAdapter> a = m30786a(c);
                            cls = a;
                            if (a == null) {
                                this.f8273e.add(c);
                                return null;
                            }
                        }
                        C2178k a2 = m30787a(fVar, cls);
                        if (a2 != null) {
                            this.f8270b.m30044b("MediationAdapterManager", "Loaded " + d);
                            this.f8272d.put(c, cls);
                            return a2;
                        }
                        this.f8270b.m30039e("MediationAdapterManager", "Failed to load " + d);
                        this.f8273e.add(c);
                        return null;
                    }
                    this.f8270b.m30044b("MediationAdapterManager", "Not attempting to load " + d + " due to prior errors");
                    return null;
                }
            }
            tVar.m30039e("MediationAdapterManager", str);
            return null;
        }
        throw new IllegalArgumentException("No adapter spec specified");
    }

    /* renamed from: a */
    public final C2178k m30787a(C2135c.C2141f fVar, Class<? extends MaxAdapter> cls) {
        try {
            C2178k kVar = new C2178k(fVar, (MediationAdapterBase) cls.getConstructor(AppLovinSdk.class).newInstance(this.f8269a.m30242q()), this.f8269a);
            if (kVar.m30766c()) {
                return kVar;
            }
            C2374t.m30034j("MediationAdapterManager", "Adapter is disabled after initialization: " + fVar);
            return null;
        } catch (Throwable th) {
            C2374t.m30041c("MediationAdapterManager", "Failed to load adapter: " + fVar, th);
            return null;
        }
    }

    /* renamed from: a */
    public final Class<? extends MaxAdapter> m30786a(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (MaxAdapter.class.isAssignableFrom(cls)) {
                return cls.asSubclass(MaxAdapter.class);
            }
            C2374t.m30034j("MediationAdapterManager", str + " error: not an instance of '" + MaxAdapter.class.getName() + "'.");
            return null;
        } catch (Throwable th) {
            C2374t.m30041c("MediationAdapterManager", "Failed to load: " + str, th);
            return null;
        }
    }

    /* renamed from: a */
    public Collection<String> m30789a() {
        Set unmodifiableSet;
        synchronized (this.f8271c) {
            try {
                HashSet hashSet = new HashSet(this.f8272d.size());
                for (Class<? extends MaxAdapter> cls : this.f8272d.values()) {
                    hashSet.add(cls.getName());
                }
                unmodifiableSet = Collections.unmodifiableSet(hashSet);
            } catch (Throwable th) {
                throw th;
            }
        }
        return unmodifiableSet;
    }

    /* renamed from: b */
    public Collection<String> m30785b() {
        Set unmodifiableSet;
        synchronized (this.f8271c) {
            unmodifiableSet = Collections.unmodifiableSet(this.f8273e);
        }
        return unmodifiableSet;
    }
}
