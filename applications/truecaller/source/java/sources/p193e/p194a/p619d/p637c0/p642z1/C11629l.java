package p193e.p194a.p619d.p637c0.p642z1;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.C11410h;
import p193e.p194a.p619d.p637c0.C11413i;
import q3.a.i0;
import q3.a.x2.a1;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
@e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$retrySearch$2", f = "CallInfoRepository.kt", l = {936}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.z1.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/l.class */
public final class C11629l extends i implements l<d<? super s>, Object> {

    /* renamed from: e */
    public Object f34152e;

    /* renamed from: f */
    public int f34153f;

    /* renamed from: g */
    public final /* synthetic */ C11600k f34154g;

    /* renamed from: h */
    public final /* synthetic */ String f34155h;

    /* renamed from: i */
    public final /* synthetic */ a1 f34156i;

    /* renamed from: e.a.d.c0.z1.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/l$a.class */
    public static final class C11630a implements g<AbstractC11416j> {
        public C11630a() {
            C11629l.this = r4;
        }

        /* renamed from: a */
        public Object m24335a(Object obj, d dVar) {
            C11629l.this.f34156i.setValue((AbstractC11416j) obj);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11629l(C11600k c11600k, String str, a1 a1Var, d dVar) {
        super(1, dVar);
        this.f34154g = c11600k;
        this.f34155h = str;
        this.f34156i = a1Var;
    }

    /* renamed from: d */
    public final Object m24338d(Object obj) {
        d dVar = (d) obj;
        s1.z.c.l.e(dVar, "completion");
        return new C11629l(this.f34154g, this.f34155h, this.f34156i, dVar).m24336s(s.a);
    }

    /* renamed from: l */
    public final d<s> m24337l(d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C11629l(this.f34154g, this.f34155h, this.f34156i, dVar);
    }

    /* renamed from: s */
    public final Object m24336s(Object obj) {
        i1 i1Var;
        a aVar = a.a;
        int i = this.f34153f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var = this.f34154g;
            i1Var = (i1) s1.u.i.H(i0Var.f34032s.mo24749d(i0Var, s1.u.i.y0(this.f34155h), this.f34154g.mo24404b()), this.f34155h);
            int i2 = C11413i.f33530b;
            s1.z.c.l.e(i1Var, "$this$takeUntilFinished");
            q3.a.x2.a Q3 = s1.a.a.a.v0.f.d.Q3(i1Var, new C11410h(null));
            C11630a c11630a = new C11630a();
            this.f34152e = i1Var;
            this.f34153f = 1;
            if (Q3.c(c11630a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            i1Var = (i1) this.f34152e;
        }
        return i1Var.getValue() instanceof AbstractC11416j.C11417a ? null : s.a;
    }
}
