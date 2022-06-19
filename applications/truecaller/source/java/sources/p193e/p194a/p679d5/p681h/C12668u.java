package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import javax.inject.Provider;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p679d5.p680g.C12637p;
import p193e.p194a.p947k.AbstractC16111h;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.u */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/u.class */
public final class C12668u implements AbstractC12607b {

    /* renamed from: a */
    public final StartupDialogType f36931a = StartupDialogType.DIALOG_WHATS_NEW;

    /* renamed from: b */
    public final AbstractC21881d f36932b;

    /* renamed from: c */
    public final C8601l0 f36933c;

    /* renamed from: d */
    public final Provider<AbstractC16111h> f36934d;

    @Inject
    public C12668u(AbstractC21881d abstractC21881d, C8601l0 c8601l0, Provider<AbstractC16111h> provider) {
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        l.e(provider, "videoCallerId");
        this.f36932b = abstractC21881d;
        this.f36933c = c8601l0;
        this.f36934d = provider;
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
        return this.f36931a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36932b.putInt("whatsNewDialogShownRevision", 30);
        this.f36932b.putLong("whatsNewShownTimestamp", this.f36933c.m28258c());
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        boolean z = false;
        if (this.f36932b.getInt("whatsNewDialogShownRevision", 0) < 30) {
            z = true;
        }
        return !z ? Boolean.FALSE : Boolean.valueOf(((AbstractC16111h) this.f36934d.get()).mo17820z());
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new C12637p();
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
