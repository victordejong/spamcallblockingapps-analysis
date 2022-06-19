package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p679d5.p680g.C12624h;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.f */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/f.class */
public final class C12646f implements AbstractC12607b {

    /* renamed from: a */
    public final StartupDialogType f36840a = StartupDialogType.LEGAL_REGION_C;

    /* renamed from: b */
    public final a<AbstractC8432l> f36841b;

    /* renamed from: c */
    public final a<AbstractC8541a> f36842c;

    /* renamed from: d */
    public final a<AbstractC8438a> f36843d;

    /* renamed from: e */
    public final a<AbstractC8426f> f36844e;

    @Inject
    public C12646f(a<AbstractC8432l> aVar, a<AbstractC8541a> aVar2, a<AbstractC8438a> aVar3, a<AbstractC8426f> aVar4) {
        l.e(aVar, "accountManager");
        l.e(aVar2, "coreSettings");
        l.e(aVar3, "accountSettings");
        l.e(aVar4, "regionUtils");
        this.f36841b = aVar;
        this.f36842c = aVar2;
        this.f36843d = aVar3;
        this.f36844e = aVar4;
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
        return this.f36840a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        return Boolean.valueOf(((AbstractC8432l) this.f36841b.get()).mo28580d() && ((AbstractC8426f) this.f36844e.get()).mo28591g() && !((AbstractC8541a) this.f36842c.get()).getBoolean("ppolicy_accepted") && (!((AbstractC8438a) this.f36843d.get()).contains("region_c_accepted") || ((AbstractC8438a) this.f36843d.get()).getBoolean("region_c_accepted")));
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new C12624h();
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return false;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return StartupDialogDismissReason.USER_IS_IN_REGION2 == startupDialogDismissReason;
    }
}
