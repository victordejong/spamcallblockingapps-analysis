package p193e.p194a.p717f.p718a.p728u;

import android.app.Dialog;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import androidx.fragment.app.FragmentManager;
import com.airbnb.lottie.LottieAnimationView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.enablePromo.InCallUIEnableAnalyticsContext;
import kotlin.Metadata;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p916i5.AbstractC15317d;
import p193e.p194a.p916i5.C15314a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\b\b\u0007\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\b\u0010\tJ-\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u000e2\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0019\u001a\u00020\u00148\u0016@\u0016X\u0096D¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018¨\u0006\u001c"}, d2 = {"Le/a/f/a/u/g;", "Le/a/f/a/u/d;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/app/Dialog;", "onCreateDialog", "(Landroid/os/Bundle;)Landroid/app/Dialog;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "u", "Ljava/lang/String;", "getType", "()Ljava/lang/String;", "type", "<init>", "()V", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.u.g */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/g.class */
public final class C13680g extends AbstractC13673a {

    /* renamed from: u */
    public final String f39655u = "InCallUIEnableFullscreen";

    /* renamed from: hB */
    public static final C13680g m21316hB(InCallUIEnableAnalyticsContext inCallUIEnableAnalyticsContext) {
        C13680g c13680g = new C13680g();
        l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
        Bundle bundle = new Bundle();
        bundle.putString("analytics_context", inCallUIEnableAnalyticsContext.getValue());
        c13680g.setArguments(bundle);
        return c13680g;
    }

    /* renamed from: iB */
    public static final void m21315iB(FragmentManager fragmentManager, InCallUIEnableAnalyticsContext inCallUIEnableAnalyticsContext) {
        l.e(fragmentManager, "fragmentManager");
        l.e(inCallUIEnableAnalyticsContext, "analyticsContext");
        m21316hB(inCallUIEnableAnalyticsContext).show(fragmentManager, C13680g.class.getSimpleName());
    }

    @Override // p193e.p194a.p717f.p718a.p728u.AbstractC13676d
    public String getType() {
        return this.f39655u;
    }

    @Override // p193e.p194a.p717f.p718a.p728u.AbstractC13676d, p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(0, C4013R.style.ThemeX_Truecaller_Dialog_FullScreen_TransparentStatus);
    }

    public Dialog onCreateDialog(Bundle bundle) {
        int i;
        View decorView;
        Dialog onCreateDialog = C13680g.super.onCreateDialog(bundle);
        l.d(onCreateDialog, "super.onCreateDialog(savedInstanceState)");
        C15314a c15314a = C15314a.f43582g;
        if (C15314a.m18938a() instanceof AbstractC15317d.C15318a) {
            i = 9472;
            if (Build.VERSION.SDK_INT >= 26) {
                i = 9488;
            }
        } else {
            i = 1280;
        }
        Window window = onCreateDialog.getWindow();
        if (window != null && (decorView = window.getDecorView()) != null) {
            decorView.setSystemUiVisibility(i);
        }
        return onCreateDialog;
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C4013R.layout.dialog_incallui_enable_promo_fullscreen, viewGroup, false);
    }

    @Override // p193e.p194a.p372b0.p373a.p374a.AbstractC8213a
    public void onViewCreated(View view, Bundle bundle) {
        ImageView imageView;
        l.e(view, ViewAction.VIEW);
        super.onViewCreated(view, bundle);
        View view2 = getView();
        if (view2 != null && (imageView = (ImageView) view2.findViewById(C4013R.C4015id.logo_bg)) != null) {
            C15314a c15314a = C15314a.f43582g;
            imageView.setImageResource(C15314a.m18938a() instanceof AbstractC15317d.C15318a ? C4013R.C4014drawable.ic_incallui_enable_promo_fullscreen_bg_light : C4013R.C4014drawable.ic_incallui_enable_promo_fullscreen_bg_dark);
        }
        View findViewById = view.findViewById(C4013R.C4015id.logo_bg);
        C19286f.m13687Q(findViewById);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) view.findViewById(C4013R.C4015id.logo);
        C19286f.m13684T(lottieAnimationView);
        lottieAnimationView.f1626l.add(new C13679f(findViewById));
    }
}
