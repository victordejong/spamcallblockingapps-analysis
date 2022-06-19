package p193e.p194a.p437c.p531c0;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.insights.utils.PagedDataUtilsKt$mapNotNull$3", f = "PagedDataUtils.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.c.c0.u */
/* loaded from: classes10-dex2jar.jar:e/a/c/c0/u.class */
public final class C10036u extends i implements p<Object, d<? super R>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f29872e;

    public C10036u(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m26791i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C10036u c10036u = new C10036u(dVar);
        c10036u.f29872e = obj;
        return c10036u;
    }

    /* renamed from: k */
    public final Object m26790k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C10036u c10036u = new C10036u(dVar);
        c10036u.f29872e = obj;
        return c10036u.m26789s(s.a);
    }

    /* renamed from: s */
    public final Object m26789s(Object obj) {
        C25225a.m3932a3(obj);
        Object obj2 = this.f29872e;
        Object obj3 = obj2;
        if (!(obj2 instanceof Object)) {
            obj3 = null;
        }
        if (obj3 != null) {
            return obj3;
        }
        throw new IllegalStateException("Type should be R here");
    }
}
