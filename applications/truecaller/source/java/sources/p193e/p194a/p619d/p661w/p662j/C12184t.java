package p193e.p194a.p619d.p661w.p662j;

import com.truecaller.voip.util.VoipAnalyticsState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.invitation.action.LogStateChangedEventImpl$log$1", f = "LogStateChangedEvent.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.w.j.t */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/t.class */
public final class C12184t extends i implements p<AbstractC12114h, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35584e;

    /* renamed from: f */
    public final /* synthetic */ C12185u f35585f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12184t(C12185u c12185u, d dVar) {
        super(2, dVar);
        this.f35585f = c12185u;
    }

    /* renamed from: i */
    public final d<s> m23495i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12184t c12184t = new C12184t(this.f35585f, dVar);
        c12184t.f35584e = obj;
        return c12184t;
    }

    /* renamed from: k */
    public final Object m23494k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12185u c12185u = this.f35585f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if (((AbstractC12114h) obj) instanceof AbstractC12114h.C12129c) {
            c12185u.m23492a(VoipAnalyticsState.RINGING, null);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m23493s(Object obj) {
        C25225a.m3932a3(obj);
        if (((AbstractC12114h) this.f35584e) instanceof AbstractC12114h.C12129c) {
            this.f35585f.m23492a(VoipAnalyticsState.RINGING, null);
        }
        return s.a;
    }
}
