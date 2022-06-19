package p193e.p194a.p437c.p552i.p554b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.core.assets.LazyResourceInitializer$ensureInit$2", f = "LazyResourceInitializer.kt", l = {53}, m = "invokeSuspend")
/* renamed from: e.a.c.i.b.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/b/f.class */
public final class C10284f extends i implements p<i0, d<? super T>, Object> {

    /* renamed from: e */
    public int f30478e;

    /* renamed from: f */
    public final /* synthetic */ AbstractC10280e f30479f;

    /* renamed from: g */
    public final /* synthetic */ a f30480g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10284f(AbstractC10280e abstractC10280e, a aVar, d dVar) {
        super(2, dVar);
        this.f30479f = abstractC10280e;
        this.f30480g = aVar;
    }

    /* renamed from: i */
    public final d<s> m26471i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10284f(this.f30479f, this.f30480g, dVar);
    }

    /* renamed from: k */
    public final Object m26470k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10284f(this.f30479f, this.f30480g, dVar).m26469s(s.a);
    }

    /* renamed from: s */
    public final Object m26469s(Object obj) {
        s1.w.j.a aVar = s1.w.j.a.a;
        int i = this.f30478e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            n0<s> n0Var = this.f30479f.f30471c;
            this.f30478e = 1;
            if (n0Var.s(this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return this.f30480g.invoke();
    }
}
