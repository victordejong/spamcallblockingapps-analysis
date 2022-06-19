package p193e.p194a.p372b0.p430q;

import com.truecaller.common.network.KnownDomain;
import e.m.f.a.j;
import e.m.f.a.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p372b0.p394b.AbstractC8371e;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import s1.e0.c0;
import s1.e0.x;
import s1.k;
import s1.u.i;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.b0.q.x */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/x.class */
public final class C8617x implements AbstractC8616w {

    /* renamed from: a */
    public final AbstractC13954b f26468a;

    /* renamed from: b */
    public final a<j> f26469b;

    /* renamed from: e.a.b0.q.x$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/x$a.class */
    public static final class C8618a extends m implements l<o, k<? extends o, ? extends String>> {

        /* renamed from: b */
        public final /* synthetic */ j f26470b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8618a(j jVar) {
            super(1);
            this.f26470b = jVar;
        }

        /* renamed from: d */
        public Object m28191d(Object obj) {
            o oVar = (o) obj;
            s1.z.c.l.e(oVar, "it");
            return new k(oVar, this.f26470b.z(oVar));
        }
    }

    /* renamed from: e.a.b0.q.x$b */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/q/x$b.class */
    public static final class C8619b extends m implements s1.z.b.a<List<String>> {

        /* renamed from: b */
        public static final C8619b f26471b = new C8619b();

        public C8619b() {
            super(0);
        }

        public Object invoke() {
            return new ArrayList();
        }
    }

    @Inject
    public C8617x(AbstractC13954b abstractC13954b, a<j> aVar) {
        s1.z.c.l.e(abstractC13954b, "domainResolver");
        s1.z.c.l.e(aVar, "phoneNumberUtil");
        this.f26468a = abstractC13954b;
        this.f26469b = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v86, types: [e.a.b0.b.e$b] */
    @Override // p193e.p194a.p372b0.p430q.AbstractC8616w
    /* renamed from: a */
    public Map<AbstractC8371e, Collection<String>> mo28193a(Iterable<? extends o> iterable) {
        j.c cVar = j.c.a;
        AbstractC8371e.C8372a c8372a = AbstractC8371e.C8372a.f25732a;
        s1.z.c.l.e(iterable, "numbers");
        j jVar = (j) this.f26469b.get();
        KnownDomain mo20942a = this.f26468a.mo20942a();
        c0 k = x.k(i.h(iterable), new C8618a(jVar));
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        c0 c0Var = k;
        for (Object obj : c0Var.a) {
            Object d = c0Var.b.d(obj);
            k kVar = (k) d;
            if (jVar.H((o) kVar.a, (String) kVar.b)) {
                arrayList.add(d);
            } else {
                arrayList2.add(d);
            }
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        C8619b c8619b = C8619b.f26471b;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            k kVar2 = (k) it.next();
            o oVar = (o) kVar2.a;
            String str = (String) kVar2.b;
            s1.z.c.l.d(str, "regionCode");
            KnownDomain m15239b = C18334g0.m15239b(str);
            if (m15239b == mo20942a || mo20942a == null) {
                m15239b = null;
            }
            AbstractC8371e.C8372a c8373b = m15239b != null ? new AbstractC8371e.C8373b(m15239b) : c8372a;
            Object obj2 = linkedHashMap.get(c8373b);
            ArrayList arrayList3 = obj2;
            if (obj2 == null) {
                Objects.requireNonNull(c8619b);
                arrayList3 = new ArrayList();
                linkedHashMap.put(c8373b, arrayList3);
            }
            String i = jVar.i(oVar, cVar);
            s1.z.c.l.d(i, "phoneNumberUtil.format(number, E164)");
            ((List) arrayList3).add(i);
        }
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            o oVar2 = (o) ((k) it2.next()).a;
            Object obj3 = linkedHashMap.get(c8372a);
            ArrayList arrayList4 = obj3;
            if (obj3 == null) {
                Objects.requireNonNull(c8619b);
                arrayList4 = new ArrayList();
                linkedHashMap.put(c8372a, arrayList4);
            }
            String i2 = jVar.i(oVar2, cVar);
            s1.z.c.l.d(i2, "phoneNumberUtil.format(number, E164)");
            ((List) arrayList4).add(i2);
        }
        return linkedHashMap;
    }

    @Override // p193e.p194a.p372b0.p430q.AbstractC8616w
    /* renamed from: b */
    public AbstractC8371e mo28192b(o oVar) {
        AbstractC8371e abstractC8371e = AbstractC8371e.C8372a.f25732a;
        s1.z.c.l.e(oVar, "number");
        j jVar = (j) this.f26469b.get();
        String z = jVar.z(oVar);
        if (!jVar.H(oVar, z)) {
            return abstractC8371e;
        }
        s1.z.c.l.d(z, "regionCodeForNumber");
        KnownDomain m15239b = C18334g0.m15239b(z);
        KnownDomain mo20942a = this.f26468a.mo20942a();
        AbstractC8371e abstractC8371e2 = abstractC8371e;
        if (mo20942a != null) {
            abstractC8371e2 = abstractC8371e;
            if (m15239b != mo20942a) {
                abstractC8371e2 = new AbstractC8371e.C8373b(m15239b);
            }
        }
        return abstractC8371e2;
    }
}
