package p193e.p194a.p982k0.p989n.p993d.p994d;

import com.truecaller.C2752R;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0017\u0010\u0010J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0007\u0010\u0004J\u0011\u0010\t\u001a\u0004\u0018\u00010\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010R\u001e\u0010\u0013\u001a\u0004\u0018\u00010\u00128\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Le/a/k0/n/d/d/f;", "Le/a/k0/n/d/d/b;", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "", "OA", "()Z", "Ls1/s;", "bB", "()V", "aB", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k0.n.d.d.f */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/d/d/f.class */
public final class C16408f extends AbstractC16404b {
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: OA */
    public boolean mo16325OA() {
        return true;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        return null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getString((int) C2752R.string.startup_callrecording_terms_negative);
        l.d(string, "getString(R.string.start…recording_terms_negative)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString((int) C2752R.string.startup_callrecording_terms_positive);
        l.d(string, "getString(R.string.start…recording_terms_positive)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        return getString(2131890031) + "\n\n" + getString(2131890028);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString(2131890032);
        l.d(string, "getString(R.string.start…allrecording_terms_title)");
        return string;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.TERMS_DECLINED);
        super.mo8997aB();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.TERMS_ACCEPTED);
        super.mo8996bB();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    /* renamed from: cB */
    public StartupDialogEvent.Type mo16324cB() {
        return null;
    }
}
