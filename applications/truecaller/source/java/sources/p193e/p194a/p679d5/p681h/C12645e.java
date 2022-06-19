package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.incallui.callui.enablePromo.InCallUIEnableAnalyticsContext;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p717f.AbstractC13706b;
import p193e.p194a.p717f.p718a.p728u.C13680g;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.e */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/e.class */
public final class C12645e implements AbstractC12607b {

    /* renamed from: a */
    public final StartupDialogType f36836a = StartupDialogType.DIALOG_WHATS_NEW;

    /* renamed from: b */
    public final C20592g f36837b;

    /* renamed from: c */
    public final AbstractC8541a f36838c;

    /* renamed from: d */
    public final AbstractC13706b f36839d;

    @Inject
    public C12645e(C20592g c20592g, AbstractC8541a abstractC8541a, AbstractC13706b abstractC13706b) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC13706b, "inCallUI");
        this.f36837b = c20592g;
        this.f36838c = abstractC8541a;
        this.f36839d = abstractC13706b;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        C17422k.m16063o(activity);
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36836a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36839d.mo21254o(false);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        C20592g c20592g = this.f36837b;
        return Boolean.valueOf(c20592g.f58007q1.m10941a(c20592g, C20592g.f57695p6[120]).isEnabled() && this.f36839d.mo21255n() && !this.f36838c.getBoolean("core_isReturningUser") && this.f36839d.mo21257l() && !this.f36839d.mo21263f());
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        InCallUIEnableAnalyticsContext inCallUIEnableAnalyticsContext = InCallUIEnableAnalyticsContext.INCALLUI_PROMO;
        l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
        return C13680g.m21316hB(inCallUIEnableAnalyticsContext);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return false;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
