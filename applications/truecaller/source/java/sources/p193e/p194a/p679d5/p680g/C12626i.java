package p193e.p194a.p679d5.p680g;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p916i5.C15314a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b*\u0010\u0017J)\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00072\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0012\u0010\u0010J\u000f\u0010\u0013\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0013\u0010\u0010J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u0017R\u0016\u0010\u001d\u001a\u00020\u001a8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\"\u0010#\u001a\u00020\u000e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010\u0010\"\u0004\b!\u0010\"R\u001c\u0010)\u001a\u00020$8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b%\u0010&\u001a\u0004\b'\u0010(¨\u0006+"}, d2 = {"Le/a/d5/g/i;", "Le/a/d5/g/o;", "", "requestCode", "resultCode", "Landroid/content/Intent;", RemoteMessageConst.DATA, "Ls1/s;", "onActivityResult", "(IILandroid/content/Intent;)V", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "", "ZA", "()Ljava/lang/String;", "YA", "XA", "WA", "QA", "()Ljava/lang/Integer;", "bB", "()V", "aB", "eB", "", "dB", "()Z", "isSmsUser", "l", "Ljava/lang/String;", "getAnalyticsContext", "setAnalyticsContext", "(Ljava/lang/String;)V", "analyticsContext", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "k", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.d5.g.i */
/* loaded from: classes12-dex2jar.jar:e/a/d5/g/i.class */
public final class C12626i extends AbstractC12636o {

    /* renamed from: k */
    public final StartupDialogEvent.Type f36779k = StartupDialogEvent.Type.MdauPromo;

    /* renamed from: l */
    public String f36780l = "whatsNew";

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: QA */
    public Integer mo9002QA() {
        C15314a c15314a = C15314a.f43582g;
        return Integer.valueOf(!C15314a.m18933f() ? 2131232051 : 2131232050);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getString(2131887898);
        l.d(string, "getString(R.string.StrMaybeLater)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString((int) C2752R.string.mdau_promo_ok);
        l.d(string, "getString(R.string.mdau_promo_ok)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        String string = getString((int) C2752R.string.mdau_promo_subtitle);
        l.d(string, "getString(R.string.mdau_promo_subtitle)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString((int) C2752R.string.mdau_promo_title);
        l.d(string, "getString(R.string.mdau_promo_title)");
        return string;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: aB */
    public void mo8997aB() {
        super.mo8997aB();
        dismiss();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        super.mo8996bB();
        if (m22809dB()) {
            m22808eB();
            return;
        }
        Context context = getContext();
        if (context == null) {
            return;
        }
        l.d(context, "context ?: return");
        startActivityForResult(DefaultSmsActivity.m34991pa(context, this.f36780l), 101);
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o
    /* renamed from: cB */
    public StartupDialogEvent.Type mo16324cB() {
        return this.f36779k;
    }

    /* renamed from: dB */
    public final boolean m22809dB() {
        TrueApp m36032b0 = TrueApp.m36032b0();
        l.d(m36032b0, "TrueApp.getApp()");
        AbstractC19230g mo12512W = m36032b0.mo10154s().mo12512W();
        l.d(mo12512W, "TrueApp.getApp().objectsGraph.deviceInfoHelper()");
        return mo12512W.mo13794c();
    }

    /* renamed from: eB */
    public final void m22808eB() {
        if (getActivity() instanceof TruecallerInit) {
            TruecallerInit activity = getActivity();
            Objects.requireNonNull(activity, "null cannot be cast to non-null type com.truecaller.ui.TruecallerInit");
            activity.m34572Qa("messages");
        }
        dismissAllowingStateLoss();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        C12626i.super.onActivityResult(i, i2, intent);
        if (i != 101 || !m22809dB()) {
            return;
        }
        m22808eB();
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setCancelable(false);
    }
}
