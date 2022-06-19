package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p679d5.p680g.C12627j;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.i */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/i.class */
public final class C12651i implements AbstractC12607b {

    /* renamed from: a */
    public final boolean f36859a = true;

    /* renamed from: b */
    public final StartupDialogType f36860b = StartupDialogType.TRUECALLER_ONBOARDING;

    /* renamed from: c */
    public final AbstractC21881d f36861c;

    /* renamed from: d */
    public final AbstractC8541a f36862d;

    @Inject
    public C12651i(AbstractC21881d abstractC21881d, AbstractC8541a abstractC8541a) {
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC8541a, "coreSettings");
        this.f36861c = abstractC21881d;
        this.f36862d = abstractC8541a;
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
        return this.f36860b;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
        this.f36861c.putBoolean("backupOnboardingAvailable", true);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36861c.putBoolean("hasShownWelcome", true);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        boolean z = true;
        if (this.f36862d.getBoolean("core_isReturningUser")) {
            this.f36861c.putBoolean("backupOnboardingAvailable", true);
        }
        if (this.f36862d.getBoolean("core_isReturningUser") || this.f36861c.getBoolean("hasShownWelcome")) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new C12627j();
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return this.f36859a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
