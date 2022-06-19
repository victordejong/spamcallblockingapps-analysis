package p193e.p194a.p619d.p661w.p662j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.x2.z0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$triggerUpdateOnTimeouts$2", f = "UpdatePeers.kt", l = {89}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.g0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/g0.class */
public final class C12152g0 extends i implements p<s, d<? super s>, Object> {

    /* renamed from: e */
    public int f35505e;

    /* renamed from: f */
    public final /* synthetic */ C12158h0 f35506f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12152g0(C12158h0 c12158h0, d dVar) {
        super(2, dVar);
        this.f35506f = c12158h0;
    }

    /* renamed from: i */
    public final d<s> m23553i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12152g0(this.f35506f, dVar);
    }

    /* renamed from: k */
    public final Object m23552k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12152g0(this.f35506f, dVar).m23551s(s.a);
    }

    /* renamed from: s */
    public final Object m23551s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f35505e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            z0<s> z0Var = this.f35506f.f35529a;
            this.f35505e = 1;
            if (z0Var.a(sVar, this) == aVar) {
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
