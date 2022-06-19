package p193e.p194a.p619d.p652q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$endWhenIdle$1", f = "VoipCallConnection.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.q.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/m.class */
public final class C11762m extends i implements q<AbstractC12111g, AbstractC11835f, d<? super Boolean>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34561e;

    /* renamed from: f */
    public /* synthetic */ Object f34562f;

    public C11762m(d dVar) {
        super(3, dVar);
    }

    /* renamed from: h */
    public final Object m24039h(Object obj, Object obj2, Object obj3) {
        AbstractC12111g abstractC12111g = (AbstractC12111g) obj;
        AbstractC11835f abstractC11835f = (AbstractC11835f) obj2;
        d dVar = (d) obj3;
        l.e(abstractC12111g, "invitationState");
        l.e(abstractC11835f, "groupCallState");
        l.e(dVar, "continuation");
        dVar.getContext();
        C25225a.m3932a3(s.a);
        return Boolean.valueOf((abstractC12111g instanceof AbstractC12111g.C12113b) && (abstractC11835f instanceof AbstractC11835f.C11837b));
    }

    /* renamed from: s */
    public final Object m24038s(Object obj) {
        C25225a.m3932a3(obj);
        return Boolean.valueOf((((AbstractC12111g) this.f34561e) instanceof AbstractC12111g.C12113b) && (((AbstractC11835f) this.f34562f) instanceof AbstractC11835f.C11837b));
    }
}
