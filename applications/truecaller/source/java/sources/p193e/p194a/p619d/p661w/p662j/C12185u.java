package p193e.p194a.p619d.p661w.p662j;

import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import com.truecaller.voip.util.VoipAnalyticsStateReason;
import javax.inject.Inject;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.C11395e0;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p661w.C12130i;
import q3.a.i0;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.d.w.j.u */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/u.class */
public final class C12185u implements i0, AbstractC12183s {

    /* renamed from: a */
    public final i0 f35586a;

    /* renamed from: b */
    public final AbstractC11405f0 f35587b;

    /* renamed from: c */
    public final C12130i f35588c;

    @Inject
    public C12185u(i0 i0Var, AbstractC11405f0 abstractC11405f0, C12130i c12130i) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11405f0, "analyticsUtil");
        l.e(c12130i, "stateMachine");
        this.f35586a = i0Var;
        this.f35587b = abstractC11405f0;
        this.f35588c = c12130i;
        d.x2(new u0(c12130i, new C12184t(this, null)), this);
    }

    /* renamed from: a */
    public final void m23492a(VoipAnalyticsState voipAnalyticsState, VoipAnalyticsStateReason voipAnalyticsStateReason) {
        this.f35587b.mo24715d(new C11395e0(VoipAnalyticsCallDirection.INCOMING, null, null, null, null, null, null, true, 126), voipAnalyticsState, voipAnalyticsStateReason);
    }

    public f getCoroutineContext() {
        return this.f35586a.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p661w.p662j.AbstractC12183s
    /* renamed from: j */
    public void mo23491j(AbstractC12114h.AbstractC12116b abstractC12116b) {
        l.e(abstractC12116b, "endState");
        if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12117a) {
            return;
        }
        if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12119c) {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.BLOCKED);
        } else if ((abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12120d) || (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12128l)) {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.REJECTED);
        } else if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12126j) {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.RING_TIMEOUT);
        } else if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12121e) {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.CANCELLED);
        } else if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12125i) {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.LAST_ON_CALL);
        } else if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12118b) {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.ALL_MEMBERS_RINGING);
        } else if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12122f) {
            m23492a(VoipAnalyticsState.INIT_FAILED, VoipAnalyticsStateReason.SET_RINGING_FAILED);
        } else if (abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12124h) {
            m23492a(VoipAnalyticsState.INIT_FAILED, VoipAnalyticsStateReason.INVITED_STATE_NOT_RECEIVED);
        } else if ((abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12127k) || !(abstractC12116b instanceof AbstractC12114h.AbstractC12116b.C12123g)) {
        } else {
            m23492a(VoipAnalyticsState.END, VoipAnalyticsStateReason.DELETED_ON_REMOTE);
        }
    }
}
