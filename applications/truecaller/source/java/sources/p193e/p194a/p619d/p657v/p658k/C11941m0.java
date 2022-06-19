package p193e.p194a.p619d.p657v.p658k;

import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.truecaller.voip.groupcall.call.CallDirection;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import com.truecaller.voip.util.VoipAnalyticsStateReason;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.C11395e0;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.C11852i;
import q3.a.i0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.m0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/m0.class */
public final class C11941m0 implements i0, AbstractC11923i0 {

    /* renamed from: a */
    public final i0 f35073a;

    /* renamed from: b */
    public final CallDirection f35074b;

    /* renamed from: c */
    public final AbstractC11405f0 f35075c;

    /* renamed from: d */
    public final C11852i f35076d;

    /* renamed from: e */
    public final AbstractC12004w0 f35077e;

    @Inject
    public C11941m0(i0 i0Var, CallDirection callDirection, AbstractC11405f0 abstractC11405f0, C11852i c11852i, AbstractC12004w0 abstractC12004w0) {
        l.e(i0Var, "coroutineScope");
        l.e(callDirection, HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        l.e(abstractC11405f0, "analyticsUtil");
        l.e(c11852i, "stateMachine");
        l.e(abstractC12004w0, "provideConnectedTime");
        this.f35073a = i0Var;
        this.f35074b = callDirection;
        this.f35075c = abstractC11405f0;
        this.f35076d = c11852i;
        this.f35077e = abstractC12004w0;
        d.x2(new u0(c11852i, new C11935k0(this, null)), this);
        d.x2(new u0(new C11926j0(abstractC12004w0.mo23704f()), new C11939l0(this, null)), this);
    }

    /* renamed from: a */
    public final void m23796a(VoipAnalyticsState voipAnalyticsState, VoipAnalyticsStateReason voipAnalyticsStateReason) {
        CallDirection callDirection = this.f35074b;
        l.e(callDirection, "$this$toAnalyticsDirection");
        this.f35075c.mo24715d(new C11395e0(callDirection == CallDirection.INCOMING ? VoipAnalyticsCallDirection.INCOMING : VoipAnalyticsCallDirection.OUTGOING, null, null, null, null, null, null, true, 126), voipAnalyticsState, voipAnalyticsStateReason);
    }

    public f getCoroutineContext() {
        return this.f35073a.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11923i0
    /* renamed from: p */
    public void mo23795p(AbstractC11840h.AbstractC11842b abstractC11842b) {
        l.e(abstractC11842b, "endState");
        if ((abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11850h) || (abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11843a)) {
            m23796a(VoipAnalyticsState.END, VoipAnalyticsStateReason.PRESSED_END);
        } else if ((abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11848f) || (abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11849g)) {
            m23796a(VoipAnalyticsState.END, VoipAnalyticsStateReason.LAST_ON_CALL);
        } else if (abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11847e) {
            m23796a(VoipAnalyticsState.INIT_FAILED, VoipAnalyticsStateReason.JOIN_RTC_FAILED);
        } else if (abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11844b) {
            m23796a(VoipAnalyticsState.INIT_FAILED, VoipAnalyticsStateReason.SET_JOINED_FAILED);
        } else if (abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11846d) {
            m23796a(VoipAnalyticsState.END, VoipAnalyticsStateReason.DELETED_ON_REMOTE);
        } else if (!(abstractC11842b instanceof AbstractC11840h.AbstractC11842b.C11845c)) {
        } else {
            m23796a(VoipAnalyticsState.END, VoipAnalyticsStateReason.CONNECTION_LOST);
        }
    }
}
