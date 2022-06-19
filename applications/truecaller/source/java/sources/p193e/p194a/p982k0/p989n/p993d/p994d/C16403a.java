package p193e.p194a.p982k0.p989n.p993d.p994d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p916i5.C15314a;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0012\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b?\u0010\u0013J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\tH\u0016¢\u0006\u0004\b\u000e\u0010\u000bJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0013J\u0019\u0010\u0018\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0016\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR\u001c\u0010#\u001a\u00020\u000f8\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010*\u001a\n %*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)R%\u0010-\u001a\n %*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b+\u0010'\u001a\u0004\b,\u0010)R%\u00102\u001a\n %*\u0004\u0018\u00010.0.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b/\u0010'\u001a\u0004\b0\u00101R%\u00105\u001a\n %*\u0004\u0018\u00010.0.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010'\u001a\u0004\b4\u00101R%\u00108\u001a\n %*\u0004\u0018\u00010.0.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010'\u001a\u0004\b7\u00101R%\u0010;\u001a\n %*\u0004\u0018\u00010.0.8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b9\u0010'\u001a\u0004\b:\u00101R%\u0010>\u001a\n %*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b<\u0010'\u001a\u0004\b=\u0010)¨\u0006@"}, d2 = {"Le/a/k0/n/d/d/a;", "Le/a/k0/n/d/d/b;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "bB", "()V", "aB", "onResume", "resId", "Landroid/text/Spanned;", "eB", "(I)Landroid/text/Spanned;", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "s", "I", "UA", "()I", "layoutId", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "q", "Ls1/g;", "getTurnOnImage", "()Landroid/widget/ImageView;", "turnOnImage", "m", "getPhoneSettingsImage", "phoneSettingsImage", "Landroid/widget/TextView;", "n", "getAccessibilityView", "()Landroid/widget/TextView;", "accessibilityView", "r", "getNoteView", "noteView", "l", "getPhoneSettingsView", "phoneSettingsView", "p", "getTurnOnView", "turnOnView", "o", "getAccessibilityImage", "accessibilityImage", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k0.n.d.d.a */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/d/d/a.class */
public final class C16403a extends AbstractC16404b {

    /* renamed from: t */
    public static final String f46114t;

    /* renamed from: u */
    public static final C16403a f46115u = null;

    /* renamed from: l */
    public final g f46116l = C19286f.m13659t(this, 2131366386);

    /* renamed from: m */
    public final g f46117m = C19286f.m13659t(this, 2131364292);

    /* renamed from: n */
    public final g f46118n = C19286f.m13659t(this, 2131366402);

    /* renamed from: o */
    public final g f46119o = C19286f.m13659t(this, 2131364298);

    /* renamed from: p */
    public final g f46120p = C19286f.m13659t(this, 2131366404);

    /* renamed from: q */
    public final g f46121q = C19286f.m13659t(this, 2131364301);

    /* renamed from: r */
    public final g f46122r = C19286f.m13659t(this, 2131366346);

    /* renamed from: s */
    public final int f46123s = 2131559230;

    static {
        String simpleName = C16403a.class.getSimpleName();
        l.d(simpleName, "CallRecordingAccessibili…og::class.java.simpleName");
        f46114t = simpleName;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        C15314a c15314a = C15314a.f43582g;
        return Integer.valueOf(!C15314a.m18933f() ? 2131231208 : 2131231209);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: UA */
    public int mo17430UA() {
        return this.f46123s;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getString((int) C2752R.string.startup_callrecording_accessibility_positive);
        l.d(string, "getString(R.string.start…g_accessibility_positive)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString(2131889997);
        l.d(string, "getString(R.string.start…g_accessibility_negative)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        return "";
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString(2131890006);
        l.d(string, "getString(R.string.start…ding_accessibility_title)");
        return string;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.DISMISSED);
        super.mo8997aB();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.ACCESSIBILITY_SETTINGS);
        super.mo8996bB();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    /* renamed from: cB */
    public StartupDialogEvent.Type mo16324cB() {
        return null;
    }

    /* renamed from: eB */
    public final Spanned m17433eB(int i) {
        return Build.VERSION.SDK_INT >= 24 ? Html.fromHtml(getString(i), 0) : Html.fromHtml(getString(i));
    }

    public void onResume() {
        C16403a.super.onResume();
        Context context = getContext();
        if (context == null || !C18334g0.m15242Z(context)) {
            this.f46124k = false;
            return;
        }
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.INTRO_CONTINUE);
        dismiss();
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        m28769SA().setGravity(8388611);
        Context requireContext = requireContext();
        C15314a c15314a = C15314a.f43582g;
        int i = C15314a.m18933f() ? 2131232313 : 2131232319;
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(requireContext, i);
        TextView textView = (TextView) this.f46116l.getValue();
        l.d(textView, "phoneSettingsView");
        textView.setText(m17433eB(2131890003));
        ((ImageView) this.f46117m.getValue()).setImageDrawable(m1789b);
        Drawable m1789b2 = C26467a.C26470c.m1789b(requireContext(), C15314a.m18933f() ? 2131231570 : 2131231571);
        TextView textView2 = (TextView) this.f46118n.getValue();
        l.d(textView2, "accessibilityView");
        textView2.setText(m17433eB(2131890005));
        ((ImageView) this.f46119o.getValue()).setImageDrawable(m1789b2);
        ((ImageView) this.f46121q.getValue()).setImageDrawable(C26467a.C26470c.m1789b(requireContext(), C15314a.m18933f() ? 2131232765 : 2131232766));
        TextView textView3 = (TextView) this.f46120p.getValue();
        l.d(textView3, "turnOnView");
        textView3.setText(m17433eB(2131890004));
        TextView textView4 = (TextView) this.f46122r.getValue();
        l.d(textView4, "noteView");
        textView4.setText(m17433eB(2131889998));
    }
}
