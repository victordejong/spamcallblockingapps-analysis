package p193e.p194a.p437c.p438a.p479i;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.i.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/i/k.class */
public abstract class AbstractC9117k<S, T> {

    /* renamed from: a */
    public final f f27793a;

    @e(c = "com.truecaller.insights.ui.domain.SuspendUseCase$invoke$2", f = "SuspendUseCase.kt", l = {12}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.i.k$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/i/k$a.class */
    public static final class C9118a extends i implements p<i0, d<? super T>, Object> {

        /* renamed from: e */
        public int f27794e;

        /* renamed from: g */
        public final /* synthetic */ Object f27796g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9118a(Object obj, d dVar) {
            super(2, dVar);
            AbstractC9117k.this = r5;
            this.f27796g = obj;
        }

        /* renamed from: i */
        public final d<s> m27864i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C9118a(this.f27796g, dVar);
        }

        /* renamed from: k */
        public final Object m27863k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C9118a(this.f27796g, dVar).m27862s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: s */
        public final Object m27862s(Object obj) {
            a aVar = a.a;
            int i = this.f27794e;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    AbstractC9117k abstractC9117k = AbstractC9117k.this;
                    Object obj2 = this.f27796g;
                    this.f27794e = 1;
                    Object mo27465b = abstractC9117k.mo27465b(obj2, this);
                    obj = mo27465b;
                    if (mo27465b == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
            } catch (Exception e) {
                obj = AbstractC9117k.this.mo27466a();
            }
            return obj;
        }
    }

    public AbstractC9117k(f fVar) {
        l.e(fVar, "coroutineContext");
        this.f27793a = fVar;
    }

    /* renamed from: a */
    public abstract T mo27466a();

    /* renamed from: b */
    public abstract Object mo27465b(S s, d<? super T> dVar);

    /* renamed from: c */
    public Object m27865c(S s, d<? super T> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f27793a, new C9118a(s, null), dVar);
    }
}
