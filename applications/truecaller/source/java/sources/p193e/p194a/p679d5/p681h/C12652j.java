package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.premium.PremiumLaunchContext;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1012a.C16604y;
import p193e.p194a.p1011l.p1025p2.AbstractC17042c0;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p679d5.AbstractC12607b;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.j */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/j.class */
public final class C12652j implements AbstractC12607b {

    /* renamed from: a */
    public final StartupDialogType f36863a = StartupDialogType.ONBOARDING_PREMIUM_POPUP;

    /* renamed from: b */
    public final boolean f36864b = true;

    /* renamed from: c */
    public final AbstractC17042c0 f36865c;

    /* renamed from: d */
    public final AbstractC21881d f36866d;

    /* renamed from: e */
    public final C8601l0 f36867e;

    /* renamed from: f */
    public final AbstractC16613a2 f36868f;

    /* renamed from: g */
    public final C16604y f36869g;

    /* renamed from: h */
    public final AbstractC8541a f36870h;

    @Inject
    public C12652j(AbstractC17042c0 abstractC17042c0, AbstractC21881d abstractC21881d, C8601l0 c8601l0, AbstractC16613a2 abstractC16613a2, C16604y c16604y, AbstractC8541a abstractC8541a) {
        l.e(abstractC17042c0, "premiumDataPrefetcher");
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC16613a2, "premiumScreenNavigator");
        l.e(c16604y, "premiumPurchaseSupportedCheck");
        l.e(abstractC8541a, "coreSettings");
        this.f36865c = abstractC17042c0;
        this.f36866d = abstractC21881d;
        this.f36867e = c8601l0;
        this.f36868f = abstractC16613a2;
        this.f36869g = c16604y;
        this.f36870h = abstractC8541a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: a */
    public Intent mo22769a(Activity activity) {
        l.e(activity, "fromActivity");
        return C10480a.m26059J(this.f36868f, activity, this.f36870h.getBoolean("core_isReturningUser") ? PremiumLaunchContext.ONBOARDING_POPUP : PremiumLaunchContext.NEW_USER_ON_BOARDING, null, null, 12, null);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36863a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36866d.putLong("promo_popup_last_shown_timestamp", this.f36867e.m28258c());
        this.f36866d.putBoolean("general_onboarding_premium_shown", true);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        return Boolean.valueOf(!this.f36866d.getBoolean("general_onboarding_premium_shown") && this.f36865c.mo16584d() && this.f36869g.m17198b());
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return null;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return this.f36864b;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
