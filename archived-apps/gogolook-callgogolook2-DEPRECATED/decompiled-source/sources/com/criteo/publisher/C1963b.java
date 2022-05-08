package com.criteo.publisher;

import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2027f;
import com.criteo.publisher.model.C2037k;
import com.criteo.publisher.model.C2038l;
import com.criteo.publisher.model.C2041o;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.AbstractC1918i;
import com.criteo.publisher.p024q.AbstractC2090a;
import com.criteo.publisher.p025r.C2094a;
import com.criteo.publisher.p027t.C2142v;
import com.criteo.publisher.p031x.C2161b;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
/* renamed from: com.criteo.publisher.b */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/b.class */
public class C1963b {
    @NonNull
    @GuardedBy("cacheLock")

    /* renamed from: a */
    public final C2094a f2109a;

    /* renamed from: b */
    public final Object f2110b = new Object();

    /* renamed from: c */
    public final AtomicLong f2111c = new AtomicLong(0);
    @NonNull

    /* renamed from: d */
    public final C2042p f2112d;
    @NonNull

    /* renamed from: e */
    public final AbstractC1966c f2113e;
    @NonNull

    /* renamed from: f */
    public final C2027f f2114f;
    @NonNull

    /* renamed from: g */
    public final C2161b f2115g;
    @NonNull

    /* renamed from: h */
    public final AbstractC2090a f2116h;
    @NonNull

    /* renamed from: i */
    public final C2142v f2117i;

    /* renamed from: com.criteo.publisher.b$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/b$b.class */
    public class C1965b implements AbstractC1918i {
        public C1965b() {
        }

        @Override // com.criteo.publisher.p020a0.AbstractC1918i
        /* renamed from: a */
        public void mo35951a(@NonNull C2038l lVar) {
            C1963b.this.f2116h.mo35692a(lVar);
        }

        @Override // com.criteo.publisher.p020a0.AbstractC1918i
        /* renamed from: a */
        public void mo35950a(@NonNull C2038l lVar, @NonNull C2041o oVar) {
            C1963b.this.m35953b(oVar.m35846a());
            C1963b.this.m35959a(oVar.m35843b());
            C1963b.this.f2116h.mo35691a(lVar, oVar);
        }

        @Override // com.criteo.publisher.p020a0.AbstractC1918i
        /* renamed from: a */
        public void mo35949a(@NonNull C2038l lVar, @NonNull Exception exc) {
            C1963b.this.f2116h.mo35689a(lVar, exc);
        }
    }

    public C1963b(@NonNull C2094a aVar, @NonNull C2042p pVar, @NonNull AbstractC1966c cVar, @NonNull C2027f fVar, @NonNull C2161b bVar, @NonNull AbstractC2090a aVar2, @NonNull C2142v vVar) {
        this.f2109a = aVar;
        this.f2112d = pVar;
        this.f2113e = cVar;
        this.f2114f = fVar;
        this.f2115g = bVar;
        this.f2116h = aVar2;
        this.f2117i = vVar;
    }

    /* renamed from: a */
    private void m35956a(C2037k kVar) {
        if (this.f2111c.get() <= this.f2113e.mo35877a()) {
            m35952c(Collections.singletonList(kVar));
        }
    }

    /* renamed from: b */
    private boolean m35954b() {
        return this.f2112d.m35833f();
    }

    /* renamed from: c */
    private void m35952c(List<C2037k> list) {
        if (!m35954b()) {
            this.f2115g.m35567a(list, new C1965b());
            this.f2117i.m35619a();
        }
    }

    @Nullable
    /* renamed from: a */
    public C2052w m35957a(@Nullable AdUnit adUnit) {
        if (m35954b()) {
            return null;
        }
        C2037k a = this.f2114f.m35872a(adUnit);
        if (a == null) {
            Log.e("ContentValues", "Valid AdUnit is required.");
            return null;
        }
        synchronized (this.f2110b) {
            C2052w a2 = this.f2109a.m35703a(a);
            if (a2 == null) {
                m35956a(a);
                return null;
            }
            double doubleValue = a2.m35797b() == null ? 0.0d : a2.m35797b().doubleValue();
            long h = a2.m35791h();
            boolean z = !a2.m35798a(this.f2113e);
            int i = (doubleValue > 0.0d ? 1 : (doubleValue == 0.0d ? 0 : -1));
            boolean z2 = i > 0 && h > 0;
            boolean z3 = false;
            if (i == 0) {
                z3 = false;
                if (h > 0) {
                    z3 = true;
                }
            }
            if (z3 && z) {
                return null;
            }
            this.f2116h.mo35693a(a, a2);
            this.f2109a.m35701b(a);
            m35956a(a);
            if (!z2 || !z) {
                return null;
            }
            return a2;
        }
    }

    /* renamed from: a */
    public void m35960a() {
        this.f2115g.m35572a();
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m35959a(int i) {
        if (i > 0) {
            this.f2111c.set(this.f2113e.mo35877a() + (i * 1000));
        }
    }

    /* renamed from: a */
    public void m35955a(@NonNull List<AdUnit> list) {
        List<List<C2037k>> a = this.f2114f.m35869a(list);
        this.f2115g.m35571a(this.f2112d);
        for (List<C2037k> list2 : a) {
            m35952c(list2);
        }
    }

    @VisibleForTesting
    /* renamed from: b */
    public void m35953b(@NonNull List<C2052w> list) {
        long a = this.f2113e.mo35877a();
        synchronized (this.f2110b) {
            for (C2052w wVar : list) {
                if (wVar.m35788k()) {
                    if (wVar.m35797b().doubleValue() > 0.0d && wVar.m35791h() == 0) {
                        wVar.m35800a(900);
                    }
                    wVar.m35799a(a);
                    this.f2109a.m35702a(wVar);
                }
            }
        }
    }
}
