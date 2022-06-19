package p193e.p194a.p437c.p580r.p589j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.g;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.c.r.j.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/f.class */
public abstract class AbstractC10592f {

    /* renamed from: a */
    public final g f31595a = C25225a.m3978P1(new C10594b());

    @e(c = "com.truecaller.insights.models.smartcards.CoroutineUseCase$invoke$1", f = "CoroutineUseCase.kt", l = {18}, m = "invokeSuspend")
    /* renamed from: e.a.c.r.j.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/f$a.class */
    public static final class C10593a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f31596e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10593a(d dVar) {
            super(2, dVar);
            AbstractC10592f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m25771i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10593a(dVar);
        }

        /* renamed from: k */
        public final Object m25770k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10593a(dVar).m25769s(s.a);
        }

        /* renamed from: s */
        public final Object m25769s(Object obj) {
            a aVar = a.a;
            int i = this.f31596e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10592f abstractC10592f = AbstractC10592f.this;
                this.f31596e = 1;
                if (abstractC10592f.mo25534a(this) == aVar) {
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

    /* renamed from: e.a.c.r.j.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/f$b.class */
    public static final class C10594b extends m implements s1.z.b.a<i0> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10594b() {
            super(0);
            AbstractC10592f.this = r4;
        }

        public Object invoke() {
            return s1.a.a.a.v0.f.d.h(AbstractC10592f.this.mo25533b().plus(s1.a.a.a.v0.f.d.n((p1) null, 1)));
        }
    }

    /* renamed from: a */
    public abstract Object mo25534a(d<? super s> dVar);

    /* renamed from: b */
    public abstract f mo25533b();

    /* renamed from: c */
    public final i0 m25773c() {
        return (i0) this.f31595a.getValue();
    }

    /* renamed from: d */
    public void mo25772d() {
        s1.a.a.a.v0.f.d.w2(m25773c(), (f) null, (j0) null, new C10593a(null), 3, (Object) null);
    }
}
