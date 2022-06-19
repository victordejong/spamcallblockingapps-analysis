package p193e.p194a.p751f4.p753b.p756h;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import e.p.a.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import p1727n3.p1789g0.C26232y;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1357x3.AbstractC21396c;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p372b0.p406e.AbstractC8428h;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.C13953a;
import p193e.p194a.p751f4.p753b.p754f.AbstractC13961b;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p3.a.d;
import p3.a.g;
import p3.a.l0;
import p3.a.n1.q1;
import p3.a.n1.r0;
import p3.a.o1.n;
import p3.a.o1.o.a;
import p3.a.o1.o.b;
import p3.a.q1.c;
import p3.a.r;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.f4.b.h.h */
/* loaded from: classes11-dex2jar.jar:e/a/f4/b/h/h.class */
public abstract class AbstractC13981h<NonBlocking extends c<NonBlocking>, Blocking extends c<Blocking>> implements AbstractC13980g<NonBlocking, Blocking> {

    /* renamed from: a */
    public final Map<AbstractC8371e, C13982i<NonBlocking, Blocking>> f40412a = new LinkedHashMap();

    /* renamed from: b */
    public final Context f40413b;

    /* renamed from: c */
    public final KnownEndpoints f40414c;

    /* renamed from: d */
    public final AbstractC8432l f40415d;

    /* renamed from: e */
    public final AbstractC8428h f40416e;

    /* renamed from: f */
    public final AbstractC19230g f40417f;

    /* renamed from: g */
    public final Integer f40418g;

    /* renamed from: h */
    public final AbstractC13973c f40419h;

    /* renamed from: i */
    public final AbstractC13967b f40420i;

    /* renamed from: j */
    public final AbstractC13954b f40421j;

    /* renamed from: k */
    public final String f40422k;

    /* renamed from: l */
    public final AbstractC13961b f40423l;

    /* renamed from: m */
    public final C13953a f40424m;

    /* renamed from: n */
    public final AbstractC21396c f40425n;

    public AbstractC13981h(Context context, KnownEndpoints knownEndpoints, AbstractC8432l abstractC8432l, AbstractC8428h abstractC8428h, AbstractC19230g abstractC19230g, Integer num, AbstractC13973c abstractC13973c, AbstractC13967b abstractC13967b, AbstractC13954b abstractC13954b, String str, AbstractC13961b abstractC13961b, C13953a c13953a, AbstractC21396c abstractC21396c) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(knownEndpoints, "endpoint");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC8428h, "temporaryAuthTokenManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13973c, "channelNetworkChangesHandler");
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC13954b, "domainResolver");
        l.e(str, "userAgent");
        l.e(abstractC13961b, "domainFrontingResolver");
        l.e(c13953a, "crossDomainSupport");
        l.e(abstractC21396c, "forcedUpdateManager");
        this.f40413b = context;
        this.f40414c = knownEndpoints;
        this.f40415d = abstractC8432l;
        this.f40416e = abstractC8428h;
        this.f40417f = abstractC19230g;
        this.f40418g = num;
        this.f40419h = abstractC13973c;
        this.f40420i = abstractC13967b;
        this.f40421j = abstractC13954b;
        this.f40422k = str;
        this.f40423l = abstractC13961b;
        this.f40424m = c13953a;
        this.f40425n = abstractC21396c;
    }

    /* renamed from: k */
    public static c m20906k(AbstractC13981h abstractC13981h, c cVar, Integer num, int i, Object obj) {
        Integer num2 = (i & 1) != 0 ? abstractC13981h.f40418g : null;
        if (num2 != null) {
            long intValue = num2.intValue();
            TimeUnit timeUnit = TimeUnit.SECONDS;
            d dVar = cVar.a;
            p3.a.c cVar2 = cVar.b;
            Objects.requireNonNull(cVar2);
            r.b bVar = r.d;
            Objects.requireNonNull(timeUnit, "units");
            cVar = cVar.a(dVar, cVar2.c(new r(bVar, timeUnit.toNanos(intValue), true)));
            l.d(cVar, "this.withDeadlineAfter(timeout.toLong(), SECONDS)");
        }
        return cVar;
    }

    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13980g
    /* renamed from: a */
    public boolean mo20913a(AbstractC8371e abstractC8371e) {
        synchronized (this) {
            l.e(abstractC8371e, "targetDomain");
            if (!m20907i(abstractC8371e)) {
                return false;
            }
            C13982i<NonBlocking, Blocking> c13982i = this.f40412a.get(abstractC8371e);
            if (c13982i == null) {
                return false;
            }
            String mo28589a = this.f40424m.m20944a(abstractC8371e) ? this.f40416e.mo28589a() : this.f40415d.mo28569o();
            if (mo28589a == null) {
                return false;
            }
            if (l.a(c13982i.f40428c, mo28589a)) {
                return true;
            }
            C13971a c13971a = new C13971a(mo28589a);
            Map<AbstractC8371e, C13982i<NonBlocking, Blocking>> map = this.f40412a;
            NonBlocking nonblocking = c13982i.f40426a;
            d dVar = ((c) nonblocking).a;
            p3.a.c cVar = ((c) nonblocking).b;
            Objects.requireNonNull(cVar);
            p3.a.c cVar2 = new p3.a.c(cVar);
            cVar2.d = c13971a;
            c a = nonblocking.a(dVar, cVar2);
            g[] m20910d = m20910d();
            c b = a.b((g[]) Arrays.copyOf(m20910d, m20910d.length));
            l.d(b, "asyncStub.withCallCreden…ors(*buildInterceptors())");
            Blocking blocking = c13982i.f40427b;
            d dVar2 = ((c) blocking).a;
            p3.a.c cVar3 = ((c) blocking).b;
            Objects.requireNonNull(cVar3);
            p3.a.c cVar4 = new p3.a.c(cVar3);
            cVar4.d = c13971a;
            c a2 = blocking.a(dVar2, cVar4);
            g[] m20910d2 = m20910d();
            c b2 = a2.b((g[]) Arrays.copyOf(m20910d2, m20910d2.length));
            l.d(b2, "syncStub.withCallCredent…ors(*buildInterceptors())");
            String str = c13982i.f40429d;
            l.e(b, "asyncStub");
            l.e(b2, "syncStub");
            l.e(str, "host");
            map.put(abstractC8371e, new C13982i<>(b, b2, mo28589a, str));
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [p3.a.q1.c] */
    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13980g
    /* renamed from: b */
    public NonBlocking mo20912b(AbstractC8371e abstractC8371e) {
        l.e(abstractC8371e, "targetDomain");
        NonBlocking nonblocking = null;
        if (mo20913a(abstractC8371e)) {
            C13982i<NonBlocking, Blocking> c13982i = this.f40412a.get(abstractC8371e);
            nonblocking = null;
            if (c13982i != null) {
                NonBlocking nonblocking2 = c13982i.f40426a;
                nonblocking = null;
                if (nonblocking2 != null) {
                    nonblocking = m20906k(this, nonblocking2, null, 1, null);
                }
            }
        }
        return nonblocking;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v18, types: [p3.a.q1.c] */
    @Override // p193e.p194a.p751f4.p753b.p756h.AbstractC13980g
    /* renamed from: c */
    public Blocking mo20911c(AbstractC8371e abstractC8371e) {
        l.e(abstractC8371e, "targetDomain");
        Blocking blocking = null;
        if (mo20913a(abstractC8371e)) {
            C13982i<NonBlocking, Blocking> c13982i = this.f40412a.get(abstractC8371e);
            blocking = null;
            if (c13982i != null) {
                Blocking blocking2 = c13982i.f40427b;
                blocking = null;
                if (blocking2 != null) {
                    blocking = m20906k(this, blocking2, null, 1, null);
                }
            }
        }
        return blocking;
    }

    /* renamed from: d */
    public final g[] m20910d() {
        List a1 = i.a1(mo9727j());
        if (this.f40417f.mo13788i()) {
            ((ArrayList) a1).add(new C13977f());
        }
        Object[] array = a1.toArray(new g[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return (g[]) array;
    }

    /* renamed from: e */
    public void mo20909e(p3.a.o1.d dVar) {
        l.e(dVar, "builder");
    }

    /* renamed from: f */
    public abstract Blocking mo9729f(d dVar);

    /* renamed from: g */
    public final l0 m20908g(String str, String str2) {
        p3.a.o1.d dVar = new p3.a.o1.d(str);
        e.p.a.i iVar = e.p.a.i.f;
        C26232y.checkState1(true, "Cannot change security when using ChannelCredentials");
        C26232y.checkArgument2(iVar.a, "plaintext ConnectionSpec is not accepted");
        int i = n.a;
        C26232y.checkArgument2(iVar.a, "plaintext ConnectionSpec is not accepted");
        List d = iVar.d();
        int size = d.size();
        String[] strArr = new String[size];
        for (int i2 = 0; i2 < size; i2++) {
            strArr[i2] = ((x) d.get(i2)).a;
        }
        List a = iVar.a();
        int size2 = a.size();
        a[] aVarArr = new a[size2];
        for (int i3 = 0; i3 < size2; i3++) {
            aVarArr[i3] = a.valueOf(((e.p.a.g) a.get(i3)).name());
        }
        b.b bVar = new b.b(iVar.a);
        bVar.c(iVar.b);
        bVar.e(strArr);
        bVar.b(aVarArr);
        dVar.d = bVar.a();
        dVar.b(20L, TimeUnit.SECONDS);
        dVar.a.h = this.f40422k;
        l.d(dVar, "this");
        mo20909e(dVar);
        if (str2 != null) {
            q1 q1Var = dVar.a;
            Objects.requireNonNull(q1Var);
            r0.b(str2);
            q1Var.i = str2;
        }
        return dVar.a();
    }

    /* renamed from: h */
    public abstract NonBlocking mo9728h(d dVar);

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
        if (r9 != null) goto L14;
     */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m20907i(p193e.p194a.p372b0.p394b.AbstractC8371e r7) {
        /*
            Method dump skipped, instructions count: 319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p753b.p756h.AbstractC13981h.m20907i(e.a.b0.b.e):boolean");
    }

    /* renamed from: j */
    public abstract Collection<g> mo9727j();
}
