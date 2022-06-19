package p193e.p194a.p703e3.p710k;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1135v0.AbstractC19331a;
import q3.a.x2.f;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.call_alert.utils.CallAlertSimSupportImpl$listenCallStatesFlow$2", f = "CallAlertSimSupport.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.e3.k.m */
/* loaded from: classes6-dex2jar.jar:e/a/e3/k/m.class */
public final class C13456m extends i implements p<Integer, d<? super f<? extends AbstractC19331a>>, Object> {

    /* renamed from: e */
    public /* synthetic */ int f39058e;

    /* renamed from: f */
    public final /* synthetic */ C13435k f39059f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13456m(C13435k c13435k, d dVar) {
        super(2, dVar);
        this.f39059f = c13435k;
    }

    /* renamed from: i */
    public final d<s> m21796i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C13456m c13456m = new C13456m(this.f39059f, dVar);
        Number number = (Number) obj;
        number.intValue();
        c13456m.f39058e = number.intValue();
        return c13456m;
    }

    /* renamed from: k */
    public final Object m21795k(Object obj, Object obj2) {
        C13456m m21796i = m21796i(obj, (d) obj2);
        C25225a.m3932a3(s.a);
        return m21796i.f39059f.f39005g.mo13441e(new Integer(m21796i.f39058e));
    }

    /* renamed from: s */
    public final Object m21794s(Object obj) {
        C25225a.m3932a3(obj);
        return this.f39059f.f39005g.mo13441e(new Integer(this.f39058e));
    }
}
