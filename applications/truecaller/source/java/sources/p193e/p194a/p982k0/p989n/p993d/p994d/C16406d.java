package p193e.p194a.p982k0.p989n.p993d.p994d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.callrecording.p154ui.onboarding.CallRecordingOnBoardingMvp$Listener;
import com.truecaller.startup_dialogs.analytics.StartupDialogEvent;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b;\u0010\u001bJ!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\f\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u000bJ\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0014\u0010\u000bJ\u000f\u0010\u0015\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0015\u0010\u000bJ\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0019\u0010\u000fJ\u000f\u0010\u001a\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001a\u0010\u001bR%\u0010!\u001a\n \u001c*\u0004\u0018\u00010\u00020\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R%\u0010$\u001a\n \u001c*\u0004\u0018\u00010\u00020\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u001e\u001a\u0004\b#\u0010 R%\u0010'\u001a\n \u001c*\u0004\u0018\u00010\u00020\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001e\u001a\u0004\b&\u0010 R\u001c\u0010,\u001a\u00020\u00168\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u001e\u0010.\u001a\u0004\u0018\u00010-8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b.\u0010/\u001a\u0004\b0\u00101R%\u00104\u001a\n \u001c*\u0004\u0018\u00010\u00020\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b2\u0010\u001e\u001a\u0004\b3\u0010 R%\u00107\u001a\n \u001c*\u0004\u0018\u00010\u00020\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b5\u0010\u001e\u001a\u0004\b6\u0010 R%\u0010:\u001a\n \u001c*\u0004\u0018\u00010\u00020\u00028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u0010\u001e\u001a\u0004\b9\u0010 ¨\u0006<"}, d2 = {"Le/a/k0/n/d/d/d;", "Le/a/k0/n/d/d/b;", "Landroid/view/View;", ViewAction.VIEW, "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "ZA", "()Ljava/lang/String;", "YA", "", "PA", "()Z", "TA", "Landroid/graphics/drawable/Drawable;", "RA", "()Landroid/graphics/drawable/Drawable;", "XA", "WA", "", "QA", "()Ljava/lang/Integer;", "OA", "bB", "()V", "kotlin.jvm.PlatformType", "o", "Ls1/g;", "getStorageDescription", "()Landroid/view/View;", "storageDescription", "q", "getAccessibilityDescription", "accessibilityDescription", "l", "getAudioTitle", "audioTitle", "r", "I", "UA", "()I", "layoutId", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "analyticsType", "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "cB", "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;", "p", "getAccessibilityTitle", "accessibilityTitle", "n", "getStorageTitle", "storageTitle", "m", "getAudioDescription", "audioDescription", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k0.n.d.d.d */
/* loaded from: classes7-dex2jar.jar:e/a/k0/n/d/d/d.class */
public final class C16406d extends AbstractC16404b {

    /* renamed from: l */
    public final g f46125l = C19286f.m13659t(this, 2131366353);

    /* renamed from: m */
    public final g f46126m = C19286f.m13659t(this, 2131366352);

    /* renamed from: n */
    public final g f46127n = C19286f.m13659t(this, 2131366400);

    /* renamed from: o */
    public final g f46128o = C19286f.m13659t(this, 2131366399);

    /* renamed from: p */
    public final g f46129p = C19286f.m13659t(this, 2131366348);

    /* renamed from: q */
    public final g f46130q = C19286f.m13659t(this, 2131366347);

    /* renamed from: r */
    public final int f46131r = 2131559232;

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
        return null;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: RA */
    public Drawable mo17431RA() {
        Context requireContext = requireContext();
        Object obj = C26467a.f74235a;
        return C26467a.C26470c.m1789b(requireContext, 2131232800);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: TA */
    public String mo17428TA() {
        String string = getString(2131890021);
        l.d(string, "getString(R.string.start…cording_permissions_info)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: UA */
    public int mo17430UA() {
        return this.f46131r;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: WA */
    public String mo9001WA() {
        String string = getString((int) C2752R.string.startup_callrecording_permissions_negative);
        l.d(string, "getString(R.string.start…ing_permissions_negative)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: XA */
    public String mo9000XA() {
        String string = getString((int) C2752R.string.startup_callrecording_permissions_positive);
        l.d(string, "getString(R.string.start…ing_permissions_positive)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: YA */
    public String mo8999YA() {
        String string = getString(2131890026);
        l.d(string, "getString(R.string.start…ing_permissions_subtitle)");
        return string;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: ZA */
    public String mo8998ZA() {
        String string = getString((int) C2752R.string.startup_callrecording_permissions_title);
        l.d(string, "getString(R.string.start…ording_permissions_title)");
        return string;
    }

    @Override // p193e.p194a.p679d5.p680g.AbstractC12636o, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    /* renamed from: bB */
    public void mo8996bB() {
        m17432dB(CallRecordingOnBoardingMvp$Listener.Action.PERMISSIONS_CONTINUE);
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
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.getBoolean("hasAudioPermission")) {
            View view2 = (View) this.f46125l.getValue();
            l.d(view2, "audioTitle");
            C19286f.m13689O(view2);
            View view3 = (View) this.f46126m.getValue();
            l.d(view3, "audioDescription");
            C19286f.m13689O(view3);
        }
        Bundle arguments2 = getArguments();
        if (arguments2 == null || !arguments2.getBoolean("hasStoragePermission")) {
            View view4 = (View) this.f46127n.getValue();
            l.d(view4, "storageTitle");
            C19286f.m13689O(view4);
            View view5 = (View) this.f46128o.getValue();
            l.d(view5, "storageDescription");
            C19286f.m13689O(view5);
        }
        Bundle arguments3 = getArguments();
        if (arguments3 == null || !arguments3.getBoolean("needsAccessibility")) {
            View view6 = (View) this.f46129p.getValue();
            l.d(view6, "accessibilityTitle");
            C19286f.m13689O(view6);
            View view7 = (View) this.f46130q.getValue();
            l.d(view7, "accessibilityDescription");
            C19286f.m13689O(view7);
        }
    }
}
