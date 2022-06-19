package p193e.p194a.p294b.p357o.p359b;

import com.truecaller.bizmon.governmentServices.config.ContactResponse;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p357o.p360c.p362b.C8143a;
import p193e.p194a.p294b.p357o.p360c.p362b.C8144b;
import p193e.p194a.p294b.p357o.p360c.p362b.C8145c;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.governmentServices.config.GovernmentServicesConfigManagerImpl$saveDataToDbAsync$2", f = "GovernmentServicesConfigManager.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.b.o.b.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/b/c.class */
public final class C8122c extends i implements p<i0, d<? super n0<? extends Boolean>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f25188e;

    /* renamed from: f */
    public final /* synthetic */ C8126d f25189f;

    /* renamed from: g */
    public final /* synthetic */ List f25190g;

    /* renamed from: h */
    public final /* synthetic */ int f25191h;

    @e(c = "com.truecaller.bizmon.governmentServices.config.GovernmentServicesConfigManagerImpl$saveDataToDbAsync$2$1", f = "GovernmentServicesConfigManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.o.b.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/b/c$a.class */
    public static final class C8123a extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f25192e;

        /* renamed from: e.a.b.o.b.c$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/o/b/c$a$a.class */
        public static final class RunnableC8124a implements Runnable {

            /* renamed from: b */
            public final /* synthetic */ i0 f25195b;

            @e(c = "com.truecaller.bizmon.governmentServices.config.GovernmentServicesConfigManagerImpl$saveDataToDbAsync$2$1$1$1", f = "GovernmentServicesConfigManager.kt", l = {}, m = "invokeSuspend")
            /* renamed from: e.a.b.o.b.c$a$a$a */
            /* loaded from: classes6-dex2jar.jar:e/a/b/o/b/c$a$a$a.class */
            public static final class C8125a extends i implements p<i0, d<? super s>, Object> {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C8125a(d dVar) {
                    super(2, dVar);
                    RunnableC8124a.this = r5;
                }

                /* renamed from: i */
                public final d<s> m28893i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    return new C8125a(dVar);
                }

                /* renamed from: k */
                public final Object m28892k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    C8125a c8125a = new C8125a(dVar);
                    s sVar = s.a;
                    c8125a.m28891s(sVar);
                    return sVar;
                }

                /* JADX WARN: Type inference failed for: r0v100, types: [long] */
                /* JADX WARN: Type inference failed for: r0v41, types: [long] */
                /* renamed from: s */
                public final Object m28891s(Object obj) {
                    C25225a.m3932a3(obj);
                    C8122c.this.f25189f.f25200d.mo28890a();
                    C8122c.this.f25189f.f25202f.mo28884c();
                    C8122c.this.f25189f.f25201e.mo28878c();
                    List<ContactResponse> list = C8122c.this.f25190g;
                    if (list != null) {
                        for (ContactResponse contactResponse : list) {
                            String state = contactResponse.getState();
                            char mo28879b = C8122c.this.f25189f.f25201e.mo28879b(state);
                            if (!C8122c.this.f25189f.f25201e.mo28880a(state)) {
                                mo28879b = C8122c.this.f25189f.f25201e.mo28877d(new C8145c(state, 0, 2));
                            }
                            if (contactResponse.getDistrict().length() == 0) {
                                C8122c.this.f25189f.f25201e.mo28875f(state, 1);
                            }
                            String district = contactResponse.getDistrict();
                            Long l = null;
                            boolean z = false;
                            if (district.length() == 0) {
                                z = true;
                            }
                            if (!z) {
                                l = new Long(C8122c.this.f25189f.f25202f.mo28883d(contactResponse.getDistrict(), mo28879b));
                                if (!C8122c.this.f25189f.f25202f.mo28885b(district, mo28879b)) {
                                    l = new Long(C8122c.this.f25189f.f25202f.mo28881f(new C8143a(district, 0, mo28879b, 2)));
                                }
                                C8122c.this.f25189f.f25202f.mo28886a(l.longValue(), 1);
                            }
                            C8122c.this.f25189f.f25200d.mo28889b(new C8144b(contactResponse.getName(), contactResponse.getPhoneNumber(), contactResponse.getDesignation(), contactResponse.getDepartmentName(), contactResponse.getEmail(), contactResponse.getFax(), contactResponse.getAddress(), contactResponse.getMinistry(), contactResponse.getRes(), l, new Long(mo28879b)));
                        }
                    }
                    return s.a;
                }
            }

            public RunnableC8124a(i0 i0Var) {
                C8123a.this = r4;
                this.f25195b = i0Var;
            }

            @Override // java.lang.Runnable
            public final void run() {
                s1.a.a.a.v0.f.d.w2(this.f25195b, (f) null, (j0) null, new C8125a(null), 3, (Object) null);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8123a(d dVar) {
            super(2, dVar);
            C8122c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28896i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C8123a c8123a = new C8123a(dVar);
            c8123a.f25192e = obj;
            return c8123a;
        }

        /* renamed from: k */
        public final Object m28895k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8123a c8123a = new C8123a(dVar);
            c8123a.f25192e = obj;
            c8123a.m28894s(s.a);
            return Boolean.TRUE;
        }

        /* renamed from: s */
        public final Object m28894s(Object obj) {
            C25225a.m3932a3(obj);
            C8122c.this.f25189f.f25204h.runInTransaction(new RunnableC8124a((i0) this.f25192e));
            C8122c c8122c = C8122c.this;
            c8122c.f25189f.f25203g.putInt("government_services_version", c8122c.f25191h);
            return Boolean.TRUE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8122c(C8126d c8126d, List list, int i, d dVar) {
        super(2, dVar);
        this.f25189f = c8126d;
        this.f25190g = list;
        this.f25191h = i;
    }

    /* renamed from: i */
    public final d<s> m28899i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C8122c c8122c = new C8122c(this.f25189f, this.f25190g, this.f25191h, dVar);
        c8122c.f25188e = obj;
        return c8122c;
    }

    /* renamed from: k */
    public final Object m28898k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C8122c c8122c = new C8122c(this.f25189f, this.f25190g, this.f25191h, dVar);
        c8122c.f25188e = obj;
        return c8122c.m28897s(s.a);
    }

    /* renamed from: s */
    public final Object m28897s(Object obj) {
        C25225a.m3932a3(obj);
        return s1.a.a.a.v0.f.d.H((i0) this.f25188e, (f) null, (j0) null, new C8123a(null), 3, (Object) null);
    }
}
