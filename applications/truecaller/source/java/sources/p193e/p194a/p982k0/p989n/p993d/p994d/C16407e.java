package p193e.p194a.p982k0.p989n.p993d.p994d;

import android.os.Bundle;
import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import kotlin.Metadata;
import p193e.p194a.p916i5.C15314a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u0018J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0011\u0010\u000bJ\u0011\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u0012\u0010\u000bJ\u000f\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0016\u0010\u000fJ\u000f\u0010\u0017\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0017\u0010\u0018R\u001e\u0010\u001a\u001a\u0004\u0018\u00010\u00198\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Le/a/k0/n/d/d/e;", "Le/a/k0/n/d/d/b;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "ZA", "()Ljava/lang/String;", "YA", "", "PA", "()Z", "TA", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "OA", "bB", "()V", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k0.n.d.d.e */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/d/d/e.class */
public final class C16407e extends AbstractC16404b {
    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: OA */
    public boolean mo16325OA() {
        return true;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: PA */
    public boolean mo17429PA() {
        return true;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        C15314a c15314a = C15314a.f43582g;
        return Integer.valueOf(!C15314a.m18933f() ? 2131231213 : 2131231214);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: TA */
    public String mo17428TA() {
        String string = getString(2131890007);
        l.d(string, "getString(R.string.start…llrecording_enabled_info)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        return null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString((int) C2752R.string.startup_callrecording_enabled_positive);
        l.d(string, "getString(R.string.start…cording_enabled_positive)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        String string = getString(2131890009);
        l.d(string, "getString(R.string.start…cording_enabled_subtitle)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString(2131890010);
        l.d(string, "getString(R.string.start…lrecording_enabled_title)");
        return string;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.CONFIRMATION_SETUP_COMPLETE);
        super.mo8996bB();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    /* renamed from: cB */
    public StartupDialogEvent.Type mo16324cB() {
        return null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
    }
}
