package p193e.p194a.p619d.p652q;

import android.telecom.CallAudioState;
import android.telecom.Connection;
import android.telecom.DisconnectCause;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p619d.p652q.C11777w;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import q3.a.i0;
import q3.a.p1;
import q3.a.x2.u0;
import q3.a.x2.w0;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.b.l;
/* renamed from: e.a.d.q.u */
/* loaded from: classes15-dex2jar.jar:e/a/d/q/u.class */
public final class C11775u extends Connection implements i0, AbstractC11755i {

    /* renamed from: g */
    public static final /* synthetic */ int f34586g = 0;

    /* renamed from: a */
    public final Connection f34587a = this;

    /* renamed from: b */
    public a<s> f34588b;

    /* renamed from: c */
    public final f f34589c;

    /* renamed from: d */
    public l<? super CallAudioState, s> f34590d;

    /* renamed from: e */
    public final AbstractC11824d f34591e;

    /* renamed from: f */
    public final AbstractC12095d f34592f;

    public C11775u(f fVar, AbstractC11824d abstractC11824d, AbstractC12095d abstractC12095d) {
        s1.z.c.l.e(fVar, "uiContext");
        s1.z.c.l.e(abstractC11824d, "groupCallManager");
        s1.z.c.l.e(abstractC12095d, "invitationManager");
        this.f34591e = abstractC11824d;
        this.f34592f = abstractC12095d;
        this.f34589c = fVar.plus(d.j((p1) null, 1, (Object) null));
        setAudioModeIsVoip(true);
        setConnectionProperties(128);
        setConnectionCapabilities(3);
        setCallerDisplayName("", 3);
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: a */
    public void mo24016a(l<? super CallAudioState, s> lVar) {
        l<? super CallAudioState, s> lVar2;
        this.f34590d = lVar;
        CallAudioState callAudioState = getCallAudioState();
        if (callAudioState == null || (lVar2 = this.f34590d) == null) {
            return;
        }
        s sVar = (s) lVar2.d(callAudioState);
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: b */
    public void mo24015b() {
        setDisconnected(new DisconnectCause(4));
        a<s> aVar = this.f34588b;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: c */
    public void mo24014c(a<s> aVar) {
        this.f34588b = aVar;
        if (getState() == 6) {
            ((C11777w.C11778a) aVar).invoke();
        }
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    /* renamed from: d */
    public Connection mo24013d() {
        return this.f34587a;
    }

    public f getCoroutineContext() {
        return this.f34589c;
    }

    @Override // p193e.p194a.p619d.p652q.AbstractC11755i
    public void initialize() {
        if (getState() == 1 && getState() != 6) {
            setInitialized();
            d.x2(new u0(d.P3(new C11764o(this.f34591e.getState()), new C11767p(null)), new C11769q(this, null)), this);
            d.x2(new u0(d.P3(new C11770r(this.f34592f.getState()), new C11773s(null)), new C11774t(this, null)), this);
            d.x2(new u0(new C11759l(d.F0(new w0(this.f34592f.getState(), this.f34591e.getState(), new C11762m(null)))), new C11763n(this, null)), this);
        }
    }

    @Override // android.telecom.Connection
    public void onCallAudioStateChanged(CallAudioState callAudioState) {
        l<? super CallAudioState, s> lVar;
        String str = "Call audio state is changed: " + callAudioState;
        if (callAudioState == null || (lVar = this.f34590d) == null) {
            return;
        }
        s sVar = (s) lVar.d(callAudioState);
    }

    @Override // android.telecom.Connection
    public void onDisconnect() {
        AbstractC12093b mo23619e = this.f34592f.mo23619e();
        if (mo23619e != null) {
            mo23619e.mo23505e(AbstractC12114h.AbstractC12116b.C12120d.f35456b);
        }
        AbstractC11822b mo23961b = this.f34591e.mo23961b();
        if (mo23961b != null) {
            mo23961b.mo23767k(AbstractC11840h.AbstractC11842b.C11843a.f34812b);
        }
        a<s> aVar = this.f34588b;
        if (aVar != null) {
            s sVar = (s) aVar.invoke();
        }
    }

    @Override // android.telecom.Connection
    public void onHold() {
        super.onHold();
        AbstractC11822b mo23961b = this.f34591e.mo23961b();
        if (mo23961b != null) {
            mo23961b.mo23918h(true);
        }
    }

    @Override // android.telecom.Connection
    public void onSilence() {
        StringBuilder m8728C = C22128a.m8728C("On silence ");
        m8728C.append(getExtras());
        m8728C.toString();
        AbstractC12093b mo23619e = this.f34592f.mo23619e();
        if (mo23619e != null) {
            mo23619e.mo23481k();
        }
    }

    @Override // android.telecom.Connection
    public void onStateChanged(int i) {
        super.onStateChanged(i);
    }

    @Override // android.telecom.Connection
    public void onUnhold() {
        super.onUnhold();
        AbstractC11822b mo23961b = this.f34591e.mo23961b();
        if (mo23961b != null) {
            mo23961b.mo23918h(false);
        }
    }
}
