package p193e.p194a.p619d.p652q;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.C11821a;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.callconnection.VoipCallConnectionImpl$setStateFromGroupCall$2", f = "VoipCallConnection.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.q.q */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/q.class */
public final class C11769q extends i implements p<k<? extends AbstractC11840h, ? extends C11821a>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f34574e;

    /* renamed from: f */
    public final /* synthetic */ C11775u f34575f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11769q(C11775u c11775u, d dVar) {
        super(2, dVar);
        this.f34575f = c11775u;
    }

    /* renamed from: i */
    public final d<s> m24027i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11769q c11769q = new C11769q(this.f34575f, dVar);
        c11769q.f34574e = obj;
        return c11769q;
    }

    /* renamed from: k */
    public final Object m24026k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11775u c11775u = this.f34575f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        k kVar = (k) obj;
        AbstractC11840h abstractC11840h = (AbstractC11840h) kVar.a;
        C11821a c11821a = (C11821a) kVar.b;
        String str = "Group call state or setting changed. State: " + abstractC11840h + ", setting: " + c11821a;
        if (abstractC11840h instanceof AbstractC11840h.C11851c) {
            if (c11821a.f34738b) {
                c11775u.setOnHold();
            } else {
                c11775u.setActive();
            }
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m24025s(Object obj) {
        C25225a.m3932a3(obj);
        k kVar = (k) this.f34574e;
        AbstractC11840h abstractC11840h = (AbstractC11840h) kVar.a;
        C11821a c11821a = (C11821a) kVar.b;
        String str = "Group call state or setting changed. State: " + abstractC11840h + ", setting: " + c11821a;
        if (abstractC11840h instanceof AbstractC11840h.C11851c) {
            if (c11821a.f34738b) {
                this.f34575f.setOnHold();
            } else {
                this.f34575f.setActive();
            }
        }
        return s.a;
    }
}
