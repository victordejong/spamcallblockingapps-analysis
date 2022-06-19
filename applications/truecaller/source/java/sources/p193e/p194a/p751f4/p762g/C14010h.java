package p193e.p194a.p751f4.p762g;

import java.io.IOException;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.g0;
import q3.a.i0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import x3.a0;
@e(c = "com.truecaller.network.search.BulkImIdSearcherImpl$search$1", f = "BulkImIdSearcherImpl.kt", l = {78}, m = "invokeSuspend")
/* renamed from: e.a.f4.g.h */
/* loaded from: classes11-dex2jar.jar:e/a/f4/g/h.class */
public final class C14010h extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f40510e;

    /* renamed from: f */
    public int f40511f;

    /* renamed from: g */
    public final /* synthetic */ C14008g f40512g;

    @e(c = "com.truecaller.network.search.BulkImIdSearcherImpl$search$1$1", f = "BulkImIdSearcherImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.f4.g.h$a */
    /* loaded from: classes11-dex2jar.jar:e/a/f4/g/h$a.class */
    public static final class C14011a extends i implements p<i0, d<? super a0<C14030t>>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f40514f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C14011a(c0 c0Var, d dVar) {
            super(2, dVar);
            C14010h.this = r5;
            this.f40514f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m20860i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C14011a(this.f40514f, dVar);
        }

        /* renamed from: k */
        public final Object m20859k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C14010h c14010h = C14010h.this;
            c0 c0Var = this.f40514f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            C14008g c14008g = c14010h.f40512g;
            List list = (List) c0Var.a;
            Objects.requireNonNull(c14008g);
            a0<C14030t> a0Var = null;
            try {
                String str = c14008g.f40499e;
                UUID randomUUID = UUID.randomUUID();
                l.d(randomUUID, "UUID.randomUUID()");
                C14006e c14006e = new C14006e(str, randomUUID, c14008g.f40500f, c14008g.f40501g, c14008g.f40502h, c14008g.f40503i, c14008g.f40504j, c14008g.f40505k, c14008g.f40506l, c14008g.f40507m);
                l.e(list, "imIds");
                s1.u.i.b(c14006e.f40484a, list);
                a0Var = c14006e.m20869a().execute();
            } catch (IOException | RuntimeException e) {
            }
            return a0Var;
        }

        /* renamed from: s */
        public final Object m20858s(Object obj) {
            C25225a.m3932a3(obj);
            C14008g c14008g = C14010h.this.f40512g;
            List list = (List) this.f40514f.a;
            Objects.requireNonNull(c14008g);
            a0<C14030t> a0Var = null;
            try {
                String str = c14008g.f40499e;
                UUID randomUUID = UUID.randomUUID();
                l.d(randomUUID, "UUID.randomUUID()");
                C14006e c14006e = new C14006e(str, randomUUID, c14008g.f40500f, c14008g.f40501g, c14008g.f40502h, c14008g.f40503i, c14008g.f40504j, c14008g.f40505k, c14008g.f40506l, c14008g.f40507m);
                l.e(list, "imIds");
                s1.u.i.b(c14006e.f40484a, list);
                a0Var = c14006e.m20869a().execute();
            } catch (IOException | RuntimeException e) {
            }
            return a0Var;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C14010h(C14008g c14008g, d dVar) {
        super(2, dVar);
        this.f40512g = c14008g;
    }

    /* renamed from: i */
    public final d<s> m20863i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C14010h(this.f40512g, dVar);
    }

    /* renamed from: k */
    public final Object m20862k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C14010h(this.f40512g, dVar).m20861s(s.a);
    }

    /* renamed from: s */
    public final Object m20861s(Object obj) {
        c0 c0Var;
        a aVar = a.a;
        int i = this.f40511f;
        if (i == 0) {
            c0Var = C22128a.m8633d0(obj);
            c0Var.a = s1.u.i.S0(this.f40512g.f40495a);
            this.f40512g.f40495a.clear();
            s1.u.i.b(this.f40512g.f40496b, (List) c0Var.a);
            g0 g0Var = t0.d;
            C14011a c14011a = new C14011a(c0Var, null);
            this.f40510e = c0Var;
            this.f40511f = 1;
            if (s1.a.a.a.v0.f.d.a4(g0Var, c14011a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            c0Var = (c0) this.f40510e;
        }
        this.f40512g.f40496b.clear();
        s1.u.i.b(this.f40512g.f40497c, (List) c0Var.a);
        if (!this.f40512g.f40495a.isEmpty()) {
            this.f40512g.m20867b();
        }
        return s.a;
    }
}
