package p193e.p194a.p982k0.p989n.p993d;

import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.callrecording.CallRecordingOnBoardingLaunchContext;
import com.truecaller.callrecording.analytics.RecordingOnBoardingStep;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import java.util.Arrays;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p982k0.AbstractC16312e;
import p193e.p194a.p982k0.AbstractC16313f;
import p193e.p194a.p982k0.p983a.AbstractC16296p;
import p193e.p194a.p982k0.p983a.C16282g;
import p193e.p194a.p982k0.p984i.AbstractC16321a;
import p193e.p194a.p982k0.p989n.p991b.AbstractC16378j;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.k0.n.d.c */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/d/c.class */
public final class C16402c extends AbstractC20574a<AbstractC16401b> implements AbstractC16400a {

    /* renamed from: d */
    public RecordingOnBoardingStep f46102d;

    /* renamed from: f */
    public boolean f46104f;

    /* renamed from: h */
    public final f f46106h;

    /* renamed from: i */
    public final AbstractC16313f f46107i;

    /* renamed from: j */
    public final AbstractC19219a0 f46108j;

    /* renamed from: k */
    public final AbstractC14965w f46109k;

    /* renamed from: l */
    public final AbstractC19230g f46110l;

    /* renamed from: m */
    public final CallRecordingManager f46111m;

    /* renamed from: n */
    public final AbstractC16321a f46112n;

    /* renamed from: o */
    public final AbstractC16378j f46113o;

    /* renamed from: e */
    public CallRecordingOnBoardingLaunchContext f46103e = CallRecordingOnBoardingLaunchContext.UNKNOWN;

    /* renamed from: g */
    public boolean f46105g = true;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16402c(@Named("UI") f fVar, AbstractC16313f abstractC16313f, AbstractC19219a0 abstractC19219a0, AbstractC14965w abstractC14965w, AbstractC19230g abstractC19230g, CallRecordingManager callRecordingManager, AbstractC16321a abstractC16321a, AbstractC16378j abstractC16378j) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC16313f, "callRecordingSettings");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC14965w, "tcPermissionsUtil");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC16321a, "recordingAnalytics");
        l.e(abstractC16378j, "callRecordingFloatingButtonManager");
        this.f46106h = fVar;
        this.f46107i = abstractC16313f;
        this.f46108j = abstractC19219a0;
        this.f46109k = abstractC14965w;
        this.f46110l = abstractC19230g;
        this.f46111m = callRecordingManager;
        this.f46112n = abstractC16321a;
        this.f46113o = abstractC16378j;
    }

    /* renamed from: Ij */
    public final void m17439Ij() {
        AbstractC16312e mo17603E;
        RecordingOnBoardingStep recordingOnBoardingStep = this.f46102d;
        if (recordingOnBoardingStep != null) {
            this.f46112n.mo17534b(this.f46103e, recordingOnBoardingStep);
        }
        if (this.f46111m.mo17577v() && this.f46103e == CallRecordingOnBoardingLaunchContext.FLOATING && (mo17603E = this.f46111m.mo17603E()) != null) {
            mo17603E.mo17456Q1();
        }
        this.f46111m.mo17607A(null);
        AbstractC16401b abstractC16401b = (AbstractC16401b) this.f57683a;
        if (abstractC16401b != null) {
            abstractC16401b.finish();
        }
    }

    /* renamed from: Jj */
    public final void m17438Jj() {
        this.f46102d = RecordingOnBoardingStep.ENABLED;
        this.f46107i.mo17548d6(true);
        AbstractC16401b abstractC16401b = (AbstractC16401b) this.f57683a;
        if (abstractC16401b != null) {
            abstractC16401b.mo17448cd();
        }
    }

    /* renamed from: Kj */
    public final void m17437Kj() {
        if (!this.f46111m.mo17589i()) {
            this.f46112n.mo17532d(this.f46103e);
        }
        boolean z = true;
        this.f46107i.mo17548d6(true);
        if (this.f46111m.mo17575y()) {
            if (!this.f46111m.mo17591f()) {
                m17438Jj();
                return;
            } else if (this.f46111m.mo17593d()) {
                m17438Jj();
                return;
            } else {
                this.f46102d = RecordingOnBoardingStep.ACCESSIBILITY;
                AbstractC16401b abstractC16401b = (AbstractC16401b) this.f57683a;
                if (abstractC16401b == null) {
                    return;
                }
                abstractC16401b.mo17447ce();
                return;
            }
        }
        AbstractC19219a0 abstractC19219a0 = this.f46108j;
        String[] mo19345l = this.f46109k.mo19345l();
        boolean mo13825h = abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19345l, mo19345l.length));
        AbstractC19219a0 abstractC19219a02 = this.f46108j;
        String[] mo19340q = this.f46109k.mo19340q();
        boolean mo13825h2 = abstractC19219a02.mo13825h((String[]) Arrays.copyOf(mo19340q, mo19340q.length));
        if (!this.f46111m.mo17591f() || this.f46111m.mo17593d()) {
            z = false;
        }
        this.f46102d = RecordingOnBoardingStep.PERMISSIONS;
        AbstractC16401b abstractC16401b2 = (AbstractC16401b) this.f57683a;
        if (abstractC16401b2 == null) {
            return;
        }
        abstractC16401b2.mo17440xi(mo13825h, mo13825h2, z);
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16400a
    /* renamed from: gd */
    public void mo17436gd(CallRecordingOnBoardingLaunchContext callRecordingOnBoardingLaunchContext) {
        l.e(callRecordingOnBoardingLaunchContext, "launchContext");
        this.f46103e = callRecordingOnBoardingLaunchContext;
        if (callRecordingOnBoardingLaunchContext != CallRecordingOnBoardingLaunchContext.LIST || !this.f46110l.mo13777t() || this.f46110l.mo13791f()) {
            m17434xg();
            return;
        }
        AbstractC16401b abstractC16401b = (AbstractC16401b) this.f57683a;
        if (abstractC16401b == null) {
            return;
        }
        abstractC16401b.mo17443rd();
    }

    @Override // p193e.p194a.p982k0.p989n.p993d.AbstractC16400a
    public void onResume() {
        AbstractC16401b abstractC16401b;
        if (this.f46104f) {
            AbstractC19219a0 abstractC19219a0 = this.f46108j;
            String[] mo19345l = this.f46109k.mo19345l();
            boolean mo13825h = abstractC19219a0.mo13825h((String[]) Arrays.copyOf(mo19345l, mo19345l.length));
            AbstractC19219a0 abstractC19219a02 = this.f46108j;
            String[] mo19340q = this.f46109k.mo19340q();
            if (mo13825h && abstractC19219a02.mo13825h((String[]) Arrays.copyOf(mo19340q, mo19340q.length))) {
                if (!this.f46111m.mo17591f()) {
                    m17438Jj();
                    return;
                } else if (this.f46111m.mo17593d()) {
                    m17438Jj();
                    return;
                } else {
                    this.f46102d = RecordingOnBoardingStep.ACCESSIBILITY;
                    AbstractC16401b abstractC16401b2 = (AbstractC16401b) this.f57683a;
                    if (abstractC16401b2 == null) {
                        return;
                    }
                    abstractC16401b2.mo17447ce();
                    return;
                }
            }
            if (!this.f46105g || (abstractC16401b = (AbstractC16401b) this.f57683a) == null || abstractC16401b.mo17450Pe(C16282g.f45864a)) {
                m17439Ij();
            } else {
                this.f46105g = false;
                AbstractC16401b abstractC16401b3 = (AbstractC16401b) this.f57683a;
                if (abstractC16401b3 != null) {
                    abstractC16401b3.mo17445m0();
                }
            }
            AbstractC16401b abstractC16401b4 = (AbstractC16401b) this.f57683a;
            if (abstractC16401b4 == null) {
                return;
            }
            abstractC16401b4.mo17451I0();
        }
    }

    @Override // com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener
    /* renamed from: p6 */
    public void mo17435p6(CallRecordingOnBoardingMvp$Listener.Action action) {
        l.e(action, "action");
        String str = "Call recording on-boarding action: " + action;
        switch (action.ordinal()) {
            case 0:
                m17434xg();
                return;
            case 1:
                if (this.f46107i.mo17546j0()) {
                    m17437Kj();
                    return;
                }
                this.f46102d = RecordingOnBoardingStep.TERMS;
                AbstractC16401b abstractC16401b = (AbstractC16401b) this.f57683a;
                if (abstractC16401b == null) {
                    return;
                }
                abstractC16401b.mo17449Qg();
                return;
            case 2:
                this.f46113o.mo17490c();
                this.f46107i.mo17548d6(false);
                m17439Ij();
                return;
            case 3:
                this.f46107i.mo17542q0(true);
                m17437Kj();
                return;
            case 4:
                this.f46113o.mo17490c();
                AbstractC16313f abstractC16313f = this.f46107i;
                abstractC16313f.mo17542q0(false);
                abstractC16313f.mo17548d6(false);
                m17439Ij();
                return;
            case 5:
                this.f46104f = true;
                AbstractC16401b abstractC16401b2 = (AbstractC16401b) this.f57683a;
                if (abstractC16401b2 == null) {
                    return;
                }
                abstractC16401b2.mo17446ic(C16282g.f45864a);
                return;
            case 6:
                AbstractC16401b abstractC16401b3 = (AbstractC16401b) this.f57683a;
                if (abstractC16401b3 == null) {
                    return;
                }
                abstractC16401b3.mo17442td();
                return;
            case 7:
                m17438Jj();
                return;
            case 8:
                m17439Ij();
                return;
            case 9:
                m17439Ij();
                return;
            case 10:
                m17437Kj();
                return;
            default:
                return;
        }
    }

    /* renamed from: xg */
    public final void m17434xg() {
        if (!this.f46107i.mo17546j0()) {
            this.f46102d = RecordingOnBoardingStep.INTRO;
            AbstractC16401b abstractC16401b = (AbstractC16401b) this.f57683a;
            if (abstractC16401b == null) {
                return;
            }
            abstractC16401b.mo17441xg();
        } else if (this.f46103e != CallRecordingOnBoardingLaunchContext.INCALLUI || !(!l.a(this.f46111m.mo17579s(), AbstractC16296p.C16299c.f45898a)) || !(!l.a(this.f46111m.mo17579s(), AbstractC16296p.C16297a.f45896a))) {
            m17437Kj();
        } else {
            this.f46102d = RecordingOnBoardingStep.INCALLUI_CONFIRMATION;
            AbstractC16401b abstractC16401b2 = (AbstractC16401b) this.f57683a;
            if (abstractC16401b2 == null) {
                return;
            }
            abstractC16401b2.mo17444ob();
        }
    }
}
