package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.manager.VoipMsg;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.EndWhenConnectionLostImpl$end$2", f = "EndWhenConnectionLost.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.t */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/t.class */
public final class C11991t extends i implements p<VoipMsg, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C11995u f35193e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11991t(C11995u c11995u, d dVar) {
        super(2, dVar);
        this.f35193e = c11995u;
    }

    /* renamed from: i */
    public final d<s> m23736i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11991t(this.f35193e, dVar);
    }

    /* renamed from: k */
    public final Object m23735k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11995u c11995u = this.f35193e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        c11995u.f35201c.mo23767k(AbstractC11840h.AbstractC11842b.C11845c.f34814b);
        return sVar;
    }

    /* renamed from: s */
    public final Object m23734s(Object obj) {
        C25225a.m3932a3(obj);
        this.f35193e.f35201c.mo23767k(AbstractC11840h.AbstractC11842b.C11845c.f34814b);
        return s.a;
    }
}
