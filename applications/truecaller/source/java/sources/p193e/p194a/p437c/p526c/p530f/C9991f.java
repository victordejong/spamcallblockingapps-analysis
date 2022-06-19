package p193e.p194a.p437c.p526c.p530f;

import e.q.e.a.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
/* renamed from: e.a.c.c.f.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/f.class */
public final class C9991f extends a<Long> {

    /* renamed from: e */
    public final AbstractC9994g f29777e;

    @e(c = "com.truecaller.insights.database.usecases.DuplicateLinkUseCases$handleDuplicateIds$1", f = "DuplicateLinkUseCases.kt", l = {26}, m = "invokeSuspend")
    /* renamed from: e.a.c.c.f.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/f$a.class */
    public static final class C9992a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f29778e;

        /* renamed from: f */
        public int f29779f;

        /* renamed from: h */
        public final /* synthetic */ List f29781h;

        @e(c = "com.truecaller.insights.database.usecases.DuplicateLinkUseCases$handleDuplicateIds$1$1$1", f = "DuplicateLinkUseCases.kt", l = {23}, m = "invokeSuspend")
        /* renamed from: e.a.c.c.f.f$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/c/f/f$a$a.class */
        public static final class C9993a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f29782e;

            /* renamed from: f */
            public final /* synthetic */ List f29783f;

            /* renamed from: g */
            public final /* synthetic */ C9992a f29784g;

            /* renamed from: h */
            public final /* synthetic */ i0 f29785h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9993a(List list, d dVar, C9992a c9992a, i0 i0Var) {
                super(2, dVar);
                this.f29783f = list;
                this.f29784g = c9992a;
                this.f29785h = i0Var;
            }

            /* renamed from: i */
            public final d<s> m26968i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C9993a(this.f29783f, dVar, this.f29784g, this.f29785h);
            }

            /* renamed from: k */
            public final Object m26967k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C9993a(this.f29783f, dVar, this.f29784g, this.f29785h).m26966s(s.a);
            }

            /* renamed from: s */
            public final Object m26966s(Object obj) {
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f29782e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    AbstractC9994g abstractC9994g = C9991f.this.f29777e;
                    List<Long> list = this.f29783f;
                    this.f29782e = 1;
                    if (abstractC9994g.mo26960f(list, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9992a(List list, d dVar) {
            super(2, dVar);
            C9991f.this = r5;
            this.f29781h = list;
        }

        /* renamed from: i */
        public final d<s> m26971i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9992a c9992a = new C9992a(this.f29781h, dVar);
            c9992a.f29778e = obj;
            return c9992a;
        }

        /* renamed from: k */
        public final Object m26970k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9992a c9992a = new C9992a(this.f29781h, dVar);
            c9992a.f29778e = obj;
            return c9992a.m26969s(s.a);
        }

        /* renamed from: s */
        public final Object m26969s(Object obj) {
            Iterator it;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f29779f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f29778e;
                if (this.f29781h != null) {
                    ArrayList arrayList = new ArrayList();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.addAll(this.f29781h);
                    Iterator it2 = ((ArrayList) s1.u.i.k(s1.u.i.S0(arrayList2), 40)).iterator();
                    while (it2.hasNext()) {
                        arrayList.add(s1.a.a.a.v0.f.d.H(i0Var, (f) null, (j0) null, new C9993a((List) it2.next(), null, this, i0Var), 3, (Object) null));
                    }
                    it = arrayList.iterator();
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
                it = (Iterator) this.f29778e;
            }
            while (it.hasNext()) {
                this.f29778e = it;
                this.f29779f = 1;
                if (((n0) it.next()).s(this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    public C9991f(AbstractC9994g abstractC9994g) {
        l.e(abstractC9994g, "enrichmentUseCases");
        this.f29777e = abstractC9994g;
    }

    /* renamed from: f */
    public void m26972f(List<Long> list) {
        s1.a.a.a.v0.f.d.c3((f) null, new C9992a(list, null), 1, (Object) null);
    }
}
