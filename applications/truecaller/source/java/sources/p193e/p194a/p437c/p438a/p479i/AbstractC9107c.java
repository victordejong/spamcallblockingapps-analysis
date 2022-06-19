package p193e.p194a.p437c.p438a.p479i;

import com.truecaller.log.UnmutedException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p548h.p550l.C10263b;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.u;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
/* renamed from: e.a.c.a.i.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/i/c.class */
public abstract class AbstractC9107c<S, T> extends AbstractC9119l<S, f<? extends T>> {

    /* renamed from: a */
    public final s1.w.f f27778a;

    @e(c = "com.truecaller.insights.ui.domain.FlowUseCase$invoke$1", f = "FlowUseCase.kt", l = {18}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.i.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/i/c$a.class */
    public static final class C9108a extends i implements q<g<? super T>, Throwable, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f27779e;

        /* renamed from: f */
        public /* synthetic */ Object f27780f;

        /* renamed from: g */
        public int f27781g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9108a(d dVar) {
            super(3, dVar);
            AbstractC9107c.this = r5;
        }

        /* renamed from: h */
        public final Object m27873h(Object obj, Object obj2, Object obj3) {
            g gVar = (g) obj;
            Throwable th = (Throwable) obj2;
            d dVar = (d) obj3;
            l.e(gVar, "$this$create");
            l.e(th, "e");
            l.e(dVar, "continuation");
            C9108a c9108a = new C9108a(dVar);
            c9108a.f27779e = gVar;
            c9108a.f27780f = th;
            return c9108a.m27872s(s.a);
        }

        /* renamed from: s */
        public final Object m27872s(Object obj) {
            a aVar = a.a;
            int i = this.f27781g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                g gVar = (g) this.f27779e;
                Throwable th = (Throwable) this.f27780f;
                C10263b c10263b = C10263b.f30414d;
                String localizedMessage = th.getLocalizedMessage();
                l.d(localizedMessage, "e.localizedMessage");
                c10263b.m26508b(new UnmutedException.C4150i(localizedMessage), null);
                Object mo27441a = AbstractC9107c.this.mo27441a();
                this.f27779e = null;
                this.f27781g = 1;
                if (gVar.a(mo27441a, this) == aVar) {
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

    public AbstractC9107c(s1.w.f fVar) {
        l.e(fVar, "coroutineContext");
        this.f27778a = fVar;
    }

    /* renamed from: a */
    public abstract T mo27441a();

    /* renamed from: b */
    public abstract f<T> mo27440b(S s);

    /* renamed from: c */
    public f<T> m27874c(S s) {
        return s1.a.a.a.v0.f.d.X0(new u(mo27440b(s), new C9108a(null)), this.f27778a);
    }
}
