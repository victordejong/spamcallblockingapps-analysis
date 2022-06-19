package p193e.p194a.p679d5.p681h;

import android.app.Activity;
import android.content.Intent;
import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogDismissReason;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p614c3.AbstractC10925a;
import p193e.p194a.p679d5.AbstractC12607b;
import p193e.p194a.p679d5.p680g.View$OnClickListenerC12631k;
import s1.w.d;
import s1.z.c.l;
/* renamed from: e.a.d5.h.k */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/k.class */
public final class C12653k implements AbstractC12607b {

    /* renamed from: a */
    public final boolean f36871a = true;

    /* renamed from: b */
    public final StartupDialogType f36872b = StartupDialogType.PIN_SHORTCUTS_REQUEST_DIALOG;

    /* renamed from: c */
    public final AbstractC21881d f36873c;

    /* renamed from: d */
    public final AbstractC10925a f36874d;

    /* renamed from: e */
    public final AbstractC19230g f36875e;

    @Inject
    public C12653k(AbstractC21881d abstractC21881d, AbstractC10925a abstractC10925a, AbstractC19230g abstractC19230g) {
        l.e(abstractC21881d, "generalSettings");
        l.e(abstractC10925a, "buildHelper");
        l.e(abstractC19230g, "deveInfoUtil");
        this.f36873c = abstractC21881d;
        this.f36874d = abstractC10925a;
        this.f36875e = abstractC19230g;
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
        return this.f36872b;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: c */
    public void mo22767c(StartupDialogDismissReason startupDialogDismissReason) {
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: d */
    public void mo22766d() {
        this.f36873c.putBoolean("general_requestPinDialerShortcutShown", true);
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    public Object mo22765e(d<? super Boolean> dVar) {
        return Boolean.valueOf(this.f36875e.mo13780q() >= 26 && !this.f36874d.mo25496a() && !this.f36874d.mo25495b() && !this.f36873c.getBoolean("general_requestPinDialerShortcutShown"));
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new View$OnClickListenerC12631k();
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return this.f36871a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: h */
    public boolean mo22762h(StartupDialogDismissReason startupDialogDismissReason) {
        return false;
    }
}
