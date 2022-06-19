package p193e.p194a.p619d.p661w.p662j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$listenRtmPeerChanges$updateRtmMembersFlow$1", f = "UpdatePeers.kt", l = {53}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/e0.class */
public final class C12145e0 extends i implements p<g<? super s>, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35491e;

    /* renamed from: f */
    public int f35492f;

    public C12145e0(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m23563i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12145e0 c12145e0 = new C12145e0(dVar);
        c12145e0.f35491e = obj;
        return c12145e0;
    }

    /* renamed from: k */
    public final Object m23562k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12145e0 c12145e0 = new C12145e0(dVar);
        c12145e0.f35491e = obj;
        return c12145e0.m23561s(s.a);
    }

    /* renamed from: s */
    public final Object m23561s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f35492f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f35492f = 1;
            if (((g) this.f35491e).a(sVar, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return sVar;
    }
}
