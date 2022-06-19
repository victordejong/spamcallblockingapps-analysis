package p193e.p194a.p717f.p718a.p728u;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentManager;
import com.airbnb.lottie.LottieAnimationView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.enablePromo.InCallUIEnableAnalyticsContext;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001c\u0010\u0014\u001a\u00020\u000f8\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0017"}, d2 = {"Le/a/f/a/u/i;", "Le/a/f/a/u/d;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "u", "Ljava/lang/String;", "getType", "()Ljava/lang/String;", "type", "<init>", "()V", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.u.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/i.class */
public final class C13682i extends AbstractC13674b {

    /* renamed from: u */
    public final String f39656u = "InCallUIEnablePopup";

    /* renamed from: hB */
    public static final void m21314hB(FragmentManager fragmentManager, InCallUIEnableAnalyticsContext inCallUIEnableAnalyticsContext) {
        l.e(fragmentManager, "fragmentManager");
        l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
        C13682i c13682i = new C13682i();
        l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
        Bundle bundle = new Bundle();
        bundle.putString("analytics_context", inCallUIEnableAnalyticsContext.getValue());
        c13682i.setArguments(bundle);
        c13682i.show(fragmentManager, C13682i.class.getSimpleName());
    }

    @Override // p193e.p194a.p717f.p718a.p728u.AbstractC13676d
    public String getType() {
        return this.f39656u;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4013R.layout.dialog_incallui_enable_popup, viewGroup, false);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) view.findViewById(C4013R.C4015id.logo);
        lottieAnimationView.m42591g();
        C19286f.m13684T(lottieAnimationView);
        View findViewById = view.findViewById(C4013R.C4015id.checkmark);
        l.d(findViewById, "view.findViewById<View>(R.id.checkmark)");
        C19286f.m13689O(findViewById);
    }
}
