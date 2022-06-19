package p193e.p194a.p619d.p652q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromInvitation$2", f = "VoipCallConnection.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.q.t */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/t.class */
public final class C11774t extends i implements p<AbstractC12114h, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34584e;

    /* renamed from: f */
    public final /* synthetic */ C11775u f34585f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11774t(C11775u c11775u, d dVar) {
        super(2, dVar);
        this.f34585f = c11775u;
    }

    /* renamed from: i */
    public final d<s> m24019i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11774t c11774t = new C11774t(this.f34585f, dVar);
        c11774t.f34584e = obj;
        return c11774t;
    }

    /* renamed from: k */
    public final Object m24018k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11775u c11775u = this.f34585f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        AbstractC12114h abstractC12114h = (AbstractC12114h) obj;
        String str = "Invitation state is changed: " + abstractC12114h;
        if (abstractC12114h instanceof AbstractC12114h.C12129c) {
            c11775u.setRinging();
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m24017s(Object obj) {
        C25225a.m3932a3(obj);
        AbstractC12114h abstractC12114h = (AbstractC12114h) this.f34584e;
        String str = "Invitation state is changed: " + abstractC12114h;
        if (abstractC12114h instanceof AbstractC12114h.C12129c) {
            this.f34585f.setRinging();
        }
        return s.a;
    }
}
