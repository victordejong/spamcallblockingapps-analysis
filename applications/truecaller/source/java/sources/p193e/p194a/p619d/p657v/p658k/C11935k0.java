package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.groupcall.call.CallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.LogStateChangedEventImpl$log$1", f = "LogStateChangedEvent.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.k0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k0.class */
public final class C11935k0 extends i implements p<AbstractC11840h, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f35064e;

    /* renamed from: f */
    public final /* synthetic */ C11941m0 f35065f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11935k0(C11941m0 c11941m0, d dVar) {
        super(2, dVar);
        this.f35065f = c11941m0;
    }

    /* renamed from: i */
    public final d<s> m23809i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C11935k0 c11935k0 = new C11935k0(this.f35065f, dVar);
        c11935k0.f35064e = obj;
        return c11935k0;
    }

    /* renamed from: k */
    public final Object m23808k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C11941m0 c11941m0 = this.f35065f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        if ((((AbstractC11840h) obj) instanceof AbstractC11840h.C11851c) && c11941m0.f35074b == CallDirection.OUTGOING) {
            c11941m0.m23796a(VoipAnalyticsState.CONNECTING, null);
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m23807s(Object obj) {
        C25225a.m3932a3(obj);
        if (((AbstractC11840h) this.f35064e) instanceof AbstractC11840h.C11851c) {
            C11941m0 c11941m0 = this.f35065f;
            if (c11941m0.f35074b == CallDirection.OUTGOING) {
                c11941m0.m23796a(VoipAnalyticsState.CONNECTING, null);
            }
        }
        return s.a;
    }
}
