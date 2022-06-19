package p193e.p194a.p703e3.p708i;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p703e3.p710k.AbstractC13433i;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.call_alert.push.CallAlertNetworkImpl$sendCallerIdNotificationInternal$isOutgoingCallOnRegisteredSim$1", f = "CallAlertNetwork.kt", l = {119}, m = "invokeSuspend")
/* renamed from: e.a.e3.i.e */
/* loaded from: classes6-dex2jar.jar:e/a/e3/i/e.class */
public final class C13405e extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public int f38887e;

    /* renamed from: f */
    public final /* synthetic */ C13402c f38888f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13405e(C13402c c13402c, d dVar) {
        super(2, dVar);
        this.f38888f = c13402c;
    }

    /* renamed from: i */
    public final d<s> m21861i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13405e(this.f38888f, dVar);
    }

    /* renamed from: k */
    public final Object m21860k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13405e(this.f38888f, dVar).m21859s(s.a);
    }

    /* renamed from: s */
    public final Object m21859s(Object obj) {
        a aVar = a.a;
        int i = this.f38887e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f38887e = 1;
            Object mo21833a = ((AbstractC13433i) this.f38888f.f38879e.get()).mo21833a(this);
            obj = mo21833a;
            if (mo21833a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        return obj;
    }
}
