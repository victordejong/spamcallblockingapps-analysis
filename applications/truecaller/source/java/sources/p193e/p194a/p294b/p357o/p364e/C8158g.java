package p193e.p194a.p294b.p357o.p364e;

import com.truecaller.bizmon.C3478R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.b0;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.governmentServices.mvp.GovServicesContactListPresenter$onAttachView$1$3", f = "GovServicesContactListMvp.kt", l = {82}, m = "invokeSuspend")
/* renamed from: e.a.b.o.e.g */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/e/g.class */
public final class C8158g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f25265e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC8157f f25266f;

    /* renamed from: g */
    public final /* synthetic */ b0 f25267g;

    /* renamed from: h */
    public final /* synthetic */ c0 f25268h;

    /* renamed from: i */
    public final /* synthetic */ C8160h f25269i;

    @e(c = "com.truecaller.bizmon.governmentServices.mvp.GovServicesContactListPresenter$onAttachView$1$3$1", f = "GovServicesContactListMvp.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.b.o.e.g$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/e/g$a.class */
    public static final class C8159a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8159a(d dVar) {
            super(2, dVar);
            C8158g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28857i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8159a(dVar);
        }

        /* renamed from: k */
        public final Object m28856k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C8158g c8158g = C8158g.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            long j = c8158g.f25267g.a;
            if (j != 0) {
                c8158g.f25269i.f25271d = c8158g.f25269i.f25277j.mo28888c(j, ((Long) c8158g.f25268h.a).longValue());
            } else {
                c8158g.f25269i.f25271d = c8158g.f25269i.f25277j.mo28887d(((Long) c8158g.f25268h.a).longValue());
            }
            C8160h c8160h = c8158g.f25269i;
            c8160h.f25273f = c8160h.f25279l.mo28874g(((Long) c8158g.f25268h.a).longValue());
            return sVar;
        }

        /* renamed from: s */
        public final Object m28855s(Object obj) {
            C25225a.m3932a3(obj);
            C8158g c8158g = C8158g.this;
            long j = c8158g.f25267g.a;
            if (j != 0) {
                C8158g.this.f25269i.f25271d = c8158g.f25269i.f25277j.mo28888c(j, ((Long) c8158g.f25268h.a).longValue());
            } else {
                C8158g.this.f25269i.f25271d = c8158g.f25269i.f25277j.mo28887d(((Long) c8158g.f25268h.a).longValue());
            }
            C8158g c8158g2 = C8158g.this;
            C8160h c8160h = c8158g2.f25269i;
            c8160h.f25273f = c8160h.f25279l.mo28874g(((Long) c8158g2.f25268h.a).longValue());
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8158g(AbstractC8157f abstractC8157f, b0 b0Var, c0 c0Var, d dVar, C8160h c8160h) {
        super(2, dVar);
        this.f25266f = abstractC8157f;
        this.f25267g = b0Var;
        this.f25268h = c0Var;
        this.f25269i = c8160h;
    }

    /* renamed from: i */
    public final d<s> m28860i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8158g(this.f25266f, this.f25267g, this.f25268h, dVar, this.f25269i);
    }

    /* renamed from: k */
    public final Object m28859k(Object obj, Object obj2) {
        return m28860i(obj, (d) obj2).m28858s(s.a);
    }

    /* renamed from: s */
    public final Object m28858s(Object obj) {
        a aVar = a.a;
        int i = this.f25265e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f25269i.f25275h;
            C8159a c8159a = new C8159a(null);
            this.f25265e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c8159a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C8160h c8160h = this.f25269i;
        String str = c8160h.f25272e;
        String str2 = str;
        if (str.equals(Integer.valueOf(C3478R.string.biz_govt_general_services))) {
            str2 = "general_services";
        }
        String str3 = c8160h.f25273f;
        if (str3 == null) {
            l.l("stateName");
            throw null;
        }
        C22128a.m8711G0("GOVT_SERVICE_CONTACT_LIST", null, C22128a.m8661V("State", str3, "District", str2), null, "eventBuilder.build()", c8160h.f25278k);
        this.f25266f.mo28801N1();
        AbstractC8157f abstractC8157f = this.f25266f;
        C8160h c8160h2 = this.f25269i;
        String mo13759k = c8160h2.f25274g.mo13759k(C3478R.plurals.biz_govt_contacts_count, c8160h2.f25271d.size(), new Integer(this.f25269i.f25271d.size()));
        l.d(mo13759k, "resourceProvider.getQuan…                        )");
        abstractC8157f.mo28803J5(mo13759k);
        this.f25266f.mo28804H5(this.f25269i.f25271d);
        return s.a;
    }
}
