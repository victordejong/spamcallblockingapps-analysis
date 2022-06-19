package p193e.p194a.p619d.p637c0.p642z1;

import java.util.Objects;
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
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$updatePeerSearchStateWithRetry$1", f = "CallInfoRepository.kt", l = {936, 678}, m = "invokeSuspend")
/* renamed from: e.a.d.c0.z1.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/n.class */
public final class C11632n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f34159e;

    /* renamed from: f */
    public final /* synthetic */ C11600k f34160f;

    /* renamed from: g */
    public final /* synthetic */ i1 f34161g;

    /* renamed from: h */
    public final /* synthetic */ a1 f34162h;

    /* renamed from: i */
    public final /* synthetic */ String f34163i;

    /* renamed from: j */
    public final /* synthetic */ int f34164j;

    /* renamed from: e.a.d.c0.z1.n$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/n$a.class */
    public static final class C11633a implements g<AbstractC11416j> {
        public C11633a() {
            C11632n.this = r4;
        }

        /* renamed from: a */
        public Object m24330a(Object obj, d dVar) {
            C11632n.this.f34162h.setValue((AbstractC11416j) obj);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11632n(C11600k c11600k, i1 i1Var, a1 a1Var, String str, int i, d dVar) {
        super(2, dVar);
        this.f34160f = c11600k;
        this.f34161g = i1Var;
        this.f34162h = a1Var;
        this.f34163i = str;
        this.f34164j = i;
    }

    /* renamed from: i */
    public final d<s> m24333i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11632n(this.f34160f, this.f34161g, this.f34162h, this.f34163i, this.f34164j, dVar);
    }

    /* renamed from: k */
    public final Object m24332k(Object obj, Object obj2) {
        return m24333i(obj, (d) obj2).m24331s(s.a);
    }

    /* renamed from: s */
    public final Object m24331s(Object obj) {
        a aVar = s.a;
        a aVar2 = a.a;
        int i = this.f34159e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i1 i1Var = this.f34161g;
            int i2 = C11413i.f33530b;
            l.e(i1Var, "$this$takeUntilFinished");
            q3.a.x2.a Q3 = s1.a.a.a.v0.f.d.Q3(i1Var, new C11410h(null));
            C11633a c11633a = new C11633a();
            this.f34159e = 1;
            if (Q3.c(c11633a, this) == aVar2) {
                return aVar2;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return aVar;
        } else {
            C25225a.m3932a3(obj);
        }
        if (this.f34161g.getValue() instanceof AbstractC11416j.C11417a) {
            String str = this.f34163i;
            int i3 = this.f34164j;
            C11600k c11600k = this.f34160f;
            a1 a1Var = this.f34162h;
            this.f34159e = 2;
            Objects.requireNonNull(c11600k);
            a m24412E = c11600k.m24412E(i3, new C11629l(c11600k, str, a1Var, null), this);
            if (m24412E != aVar2) {
                m24412E = aVar;
            }
            if (m24412E == aVar2) {
                return aVar2;
            }
        }
        return aVar;
    }
}
