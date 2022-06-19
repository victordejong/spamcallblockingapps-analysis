package p193e.p194a.p717f.p718a.p728u;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.enablePromo.Action;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17547g2;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p373a.p374a.AbstractC8213a;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p851h5.AbstractC14946m;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0010\b&\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\bJ\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00022\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0012J\u000f\u0010\u0019\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0019\u0010\u0012J\u000f\u0010\u001a\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001a\u0010\u0004J\u000f\u0010\u001b\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u001b\u0010\u0004J\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u001cH\u0016¢\u0006\u0004\b \u0010\u001fR\"\u0010(\u001a\u00020!8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\"\u00100\u001a\u00020)8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R\"\u00108\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\u0016\u0010:\u001a\u00020\u00108&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b9\u0010\u0012R\"\u0010B\u001a\u00020;8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b<\u0010=\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u001d\u0010F\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bC\u0010D\u001a\u0004\bE\u0010\u0016R\u0018\u0010I\u001a\u0004\u0018\u00010\u00108\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010H¨\u0006K"}, d2 = {"Le/a/f/a/u/d;", "Le/a/b0/a/a/a;", "Ls1/s;", "cB", "()V", "Lcom/truecaller/incallui/callui/enablePromo/Action;", "action", "eB", "(Lcom/truecaller/incallui/callui/enablePromo/Action;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "QA", "()Ljava/lang/Integer;", "", "ZA", "()Ljava/lang/String;", "YA", "", "PA", "()Z", "TA", "XA", "WA", "aB", "bB", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDismiss", "Le/a/f/b;", "j", "Le/a/f/b;", "getInCallUI", "()Le/a/f/b;", "setInCallUI", "(Le/a/f/b;)V", "inCallUI", "Le/a/q2/a;", "k", "Le/a/q2/a;", "getAnalytics", "()Le/a/q2/a;", "setAnalytics", "(Le/a/q2/a;)V", DTBMetricsConfiguration.ANALYTICS_KEY_NAME, "Le/a/h5/m;", "l", "Le/a/h5/m;", "getRoleRequester", "()Le/a/h5/m;", "setRoleRequester", "(Le/a/h5/m;)V", "roleRequester", "getType", "type", "Le/a/p5/g;", "m", "Le/a/p5/g;", "getDeviceInfoUtil", "()Le/a/p5/g;", "setDeviceInfoUtil", "(Le/a/p5/g;)V", "deviceInfoUtil", "n", "Ls1/g;", "dB", "isDefaultDialer", "o", "Ljava/lang/String;", "analyticsContext", "<init>", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.u.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/d.class */
public abstract class AbstractC13676d extends AbstractC8213a {

    /* renamed from: p */
    public static final /* synthetic */ int f39645p = 0;
    @Inject

    /* renamed from: j */
    public AbstractC13706b f39646j;
    @Inject

    /* renamed from: k */
    public AbstractC19462a f39647k;
    @Inject

    /* renamed from: l */
    public AbstractC14946m f39648l;
    @Inject

    /* renamed from: m */
    public AbstractC19230g f39649m;

    /* renamed from: n */
    public final g f39650n = C25225a.m3978P1(new C13677a());

    /* renamed from: o */
    public String f39651o;

    /* renamed from: e.a.f.a.u.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/u/d$a.class */
    public static final class C13677a extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13677a() {
            super(0);
            AbstractC13676d.this = r4;
        }

        public Object invoke() {
            AbstractC19230g abstractC19230g = AbstractC13676d.this.f39649m;
            if (abstractC19230g != null) {
                return Boolean.valueOf(abstractC19230g.mo13791f());
            }
            l.l("deviceInfoUtil");
            throw null;
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: PA */
    public boolean mo17429PA() {
        return !m21319dB();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        return null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: TA */
    public String mo17428TA() {
        String string = getString(C4013R.string.whats_new_incallui_info_incallui_disabled);
        l.d(string, "getString(R.string.whats…i_info_incallui_disabled)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getString(C4013R.string.StrNotNow);
        l.d(string, "getString(R.string.StrNotNow)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = m21319dB() ? getString(C4013R.string.whats_new_incallui_enable_positive_button) : getString(C4013R.string.whats_new_incallui_positive_button_incallui_disabled);
        l.d(string, "if (isDefaultDialer) {\n …_incallui_disabled)\n    }");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        String string = getString(C4013R.string.whats_new_incallui_subtitle);
        l.d(string, "getString(R.string.whats_new_incallui_subtitle)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString(C4013R.string.whats_new_incallui_title);
        l.d(string, "getString(R.string.whats_new_incallui_title)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        m21318eB(Action.NegativeBtnClicked);
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        m21318eB(Action.PositiveBtnClicked);
        if (m21319dB()) {
            m21320cB();
            return;
        }
        AbstractC14946m abstractC14946m = this.f39648l;
        if (abstractC14946m != null) {
            abstractC14946m.mo19390a(new C13678e(this));
        } else {
            l.l("roleRequester");
            throw null;
        }
    }

    /* renamed from: cB */
    public final void m21320cB() {
        FragmentManager supportFragmentManager;
        Context activity = getActivity();
        if (activity != null) {
            l.d(activity, "activity ?: return");
            AbstractC13706b abstractC13706b = this.f39646j;
            if (abstractC13706b == null) {
                l.l("inCallUI");
                throw null;
            }
            abstractC13706b.mo21264e(true);
            AbstractC13706b abstractC13706b2 = this.f39646j;
            if (abstractC13706b2 == null) {
                l.l("inCallUI");
                throw null;
            }
            abstractC13706b2.mo21252q(activity);
        }
        String str = this.f39651o;
        if (str != null) {
            String str2 = m21319dB() ? "AlreadyDefaultDialer" : "GrantedDefaultDialer";
            AbstractC19462a abstractC19462a = this.f39647k;
            if (abstractC19462a == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            C17547g2.C17549b m15957a = C17547g2.m15957a();
            m15957a.m15952e(getType());
            m15957a.m15955b(Action.InCallUIEnabled.getValue());
            m15957a.m15953d(str2);
            m15957a.m15954c(str);
            C17547g2 build = m15957a.build();
            l.d(build, "AppStartupDialog.newBuil…\n                .build()");
            abstractC19462a.mo13275a(build);
        }
        n3.r.a.l activity2 = getActivity();
        if (activity2 != null && (supportFragmentManager = activity2.getSupportFragmentManager()) != null) {
            l.d(supportFragmentManager, "activity?.supportFragmentManager ?: return");
            l.e(supportFragmentManager, "fragmentManager");
            new C13684k().show(supportFragmentManager, C13684k.class.getSimpleName());
        }
        dismissAllowingStateLoss();
    }

    /* renamed from: dB */
    public final boolean m21319dB() {
        return ((Boolean) this.f39650n.getValue()).booleanValue();
    }

    /* renamed from: eB */
    public final void m21318eB(Action action) {
        String str = this.f39651o;
        if (str != null) {
            AbstractC19462a abstractC19462a = this.f39647k;
            if (abstractC19462a == null) {
                l.l(DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
                throw null;
            }
            C17547g2.C17549b m15957a = C17547g2.m15957a();
            m15957a.m15952e(getType());
            m15957a.m15955b(action.getValue());
            m15957a.m15954c(str);
            C17547g2 build = m15957a.build();
            l.d(build, "AppStartupDialog.newBuil…\n                .build()");
            abstractC19462a.mo13275a(build);
        }
    }

    public abstract String getType();

    public void onCancel(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        m21318eB(Action.DialogCancelled);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f39651o = arguments.getString("analytics_context");
        }
        m21318eB(Action.DialogShown);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        l.e(dialogInterface, "dialog");
        AbstractC13676d.super.onDismiss(dialogInterface);
        DialogInterface.OnDismissListener activity = getActivity();
        n3.r.a.l lVar = activity;
        if (!(activity instanceof DialogInterface.OnDismissListener)) {
            lVar = null;
        }
        DialogInterface.OnDismissListener onDismissListener = lVar;
        if (onDismissListener != null) {
            onDismissListener.onDismiss(dialogInterface);
        }
    }
}
