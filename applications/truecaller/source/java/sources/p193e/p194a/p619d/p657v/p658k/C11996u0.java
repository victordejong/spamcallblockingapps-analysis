package p193e.p194a.p619d.p657v.p658k;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$toMultipleCallTones$1", f = "PlayTonesOnGroupCall.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.u0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/u0.class */
public final class C11996u0 extends i implements p<AbstractC12020a, d<? super f<? extends AbstractC12022c>>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35202e;

    public C11996u0(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m23730i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11996u0 c11996u0 = new C11996u0(dVar);
        c11996u0.f35202e = obj;
        return c11996u0;
    }

    /* renamed from: k */
    public final Object m23729k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return ((AbstractC12020a) obj).getState();
    }

    /* renamed from: s */
    public final Object m23728s(Object obj) {
        C25225a.m3932a3(obj);
        return ((AbstractC12020a) this.f35202e).getState();
    }
}
