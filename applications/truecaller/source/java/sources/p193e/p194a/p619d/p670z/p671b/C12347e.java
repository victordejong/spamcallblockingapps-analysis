package p193e.p194a.p619d.p670z.p671b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import q3.a.i0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$onNewDebugOutgoingCall$1", f = "CallServicePresenter.kt", l = {77, 79}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/e.class */
public final class C12347e extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36052e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36053f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12347e(C12334c c12334c, d dVar) {
        super(2, dVar);
        this.f36053f = c12334c;
    }

    /* renamed from: i */
    public final d<s> m23212i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12347e(this.f36053f, dVar);
    }

    /* renamed from: k */
    public final Object m23211k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12347e(this.f36053f, dVar).m23210s(s.a);
    }

    /* renamed from: s */
    public final Object m23210s(Object obj) {
        a aVar = a.a;
        int i = this.f36052e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f36053f.m23237Nj();
            n0<AbstractC11822b> mo23955h = this.f36053f.f36019f.mo23955h(null);
            this.f36052e = 1;
            Object s = mo23955h.s(this);
            obj = s;
            if (s == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            this.f36053f.m23240Kj();
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11822b abstractC11822b = (AbstractC11822b) obj;
        if (abstractC11822b != null) {
            C12334c c12334c = this.f36053f;
            this.f36052e = 2;
            if (c12334c.m23234Qj(abstractC11822b, this) == aVar) {
                return aVar;
            }
        }
        this.f36053f.m23240Kj();
        return s.a;
    }
}
