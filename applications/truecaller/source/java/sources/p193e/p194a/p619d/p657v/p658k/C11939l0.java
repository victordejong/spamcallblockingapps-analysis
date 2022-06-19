package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.util.VoipAnalyticsState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.LogStateChangedEventImpl$log$3", f = "LogStateChangedEvent.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.l0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/l0.class */
public final class C11939l0 extends i implements p<Long, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C11941m0 f35072e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11939l0(C11941m0 c11941m0, d dVar) {
        super(2, dVar);
        this.f35072e = c11941m0;
    }

    /* renamed from: i */
    public final d<s> m23799i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11939l0(this.f35072e, dVar);
    }

    /* renamed from: k */
    public final Object m23798k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11941m0 c11941m0 = this.f35072e;
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        c11941m0.m23796a(VoipAnalyticsState.CONNECTED, null);
        return sVar;
    }

    /* renamed from: s */
    public final Object m23797s(Object obj) {
        C25225a.m3932a3(obj);
        this.f35072e.m23796a(VoipAnalyticsState.CONNECTED, null);
        return s.a;
    }
}
