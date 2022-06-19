package p193e.p194a.p717f.p718a.p729v;

import android.os.Bundle;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.airbnb.lottie.LottieAnimationView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.incallui.C4013R;
import com.truecaller.themes.C4621R;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p717f.p732x.C13743b;
import s1.a.l;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\t\b\u0007\u0018��  2\u00020\u00012\u00020\u0002:\u0001!B\u0007¢\u0006\u0004\b\u001f\u0010\u0017J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u00020\u00102\b\b\u0001\u0010\u0013\u001a\u00020\u0003H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0018\u0010\u0017R\u001d\u0010\u001e\u001a\u00020\u00198B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d¨\u0006\""}, d2 = {"Le/a/f/a/v/b;", "Ln3/r/a/k;", "Le/a/f/a/v/d;", "", "getTheme", "()I", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "res", "w", "(I)V", "t", "()V", "onDestroyView", "Le/a/f/x/b;", "e", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/f/x/b;", "binding", "<init>", "h", C22021b.f61237c, "incallui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.f.a.v.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/v/b.class */
public final class C13687b extends AbstractC13686a implements AbstractC13692d {

    /* renamed from: g */
    public static final /* synthetic */ l[] f39661g = {C22128a.m8621g0(C13687b.class, "binding", "getBinding()Lcom/truecaller/incallui/databinding/DialogIncalluiInfoBinding;", 0)};

    /* renamed from: h */
    public static final C13689b f39662h = new C13689b(null);

    /* renamed from: e */
    public final ViewBindingProperty f39663e = new C19350a(new C13688a());
    @Inject

    /* renamed from: f */
    public C13693e f39664f;

    /* renamed from: e.a.f.a.v.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/v/b$a.class */
    public static final class C13688a extends m implements s1.z.b.l<C13687b, C13743b> {
        public C13688a() {
            super(1);
        }

        /* renamed from: d */
        public Object m21310d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4013R.C4015id.button_got_it;
            Button button = (Button) requireView.findViewById(i);
            if (button != null) {
                i = C4013R.C4015id.container;
                ConstraintLayout constraintLayout = (ConstraintLayout) requireView.findViewById(i);
                if (constraintLayout != null) {
                    i = C4013R.C4015id.divider;
                    View findViewById = requireView.findViewById(i);
                    if (findViewById != null) {
                        i = C4013R.C4015id.image_logo;
                        LottieAnimationView lottieAnimationView = (LottieAnimationView) requireView.findViewById(i);
                        if (lottieAnimationView != null) {
                            i = C4013R.C4015id.image_truecaller_logo;
                            ImageView imageView = (ImageView) requireView.findViewById(i);
                            if (imageView != null) {
                                i = C4013R.C4015id.text_info;
                                TextView textView = (TextView) requireView.findViewById(i);
                                if (textView != null) {
                                    i = C4013R.C4015id.text_subtitle;
                                    TextView textView2 = (TextView) requireView.findViewById(i);
                                    if (textView2 != null) {
                                        i = C4013R.C4015id.text_title;
                                        TextView textView3 = (TextView) requireView.findViewById(i);
                                        if (textView3 != null) {
                                            return new C13743b((CardView) requireView, button, constraintLayout, findViewById, lottieAnimationView, imageView, textView, textView2, textView3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.f.a.v.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/v/b$b.class */
    public static final class C13689b {
        public C13689b(f fVar) {
        }
    }

    /* renamed from: e.a.f.a.v.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/v/b$c.class */
    public static final class View$OnClickListenerC13690c implements View.OnClickListener {
        public View$OnClickListenerC13690c() {
            C13687b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C13693e c13693e = C13687b.this.f39664f;
            if (c13693e == null) {
                s1.z.c.l.l("presenter");
                throw null;
            }
            AbstractC13692d abstractC13692d = (AbstractC13692d) c13693e.f57683a;
            if (abstractC13692d == null) {
                return;
            }
            abstractC13692d.mo21309t();
        }
    }

    public int getTheme() {
        return C4013R.style.Theme_InCallUi_NoFrame;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        Bundle arguments = getArguments();
        return (arguments != null ? arguments.getBoolean("forceDarkTheme") : false ? layoutInflater.cloneInContext(new ContextThemeWrapper(layoutInflater.getContext(), C4621R.style.ThemeX_Dark)) : C17422k.m16050u0(layoutInflater, true)).inflate(C4013R.layout.dialog_incallui_info, viewGroup, false);
    }

    public void onDestroyView() {
        C13693e c13693e = this.f39664f;
        if (c13693e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c13693e.f57683a = null;
        C13687b.super.onDestroyView();
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C13687b.super.onViewCreated(view, bundle);
        C13693e c13693e = this.f39664f;
        if (c13693e == null) {
            s1.z.c.l.l("presenter");
            throw null;
        }
        c13693e.mo9029Y0(this);
        ((C13743b) this.f39663e.m34468b(this, f39661g[0])).f39807a.setOnClickListener(new View$OnClickListenerC13690c());
    }

    @Override // p193e.p194a.p717f.p718a.p729v.AbstractC13692d
    /* renamed from: t */
    public void mo21309t() {
        dismissAllowingStateLoss();
    }

    @Override // p193e.p194a.p717f.p718a.p729v.AbstractC13692d
    /* renamed from: w */
    public void mo21308w(int i) {
        ((C13743b) this.f39663e.m34468b(this, f39661g[0])).f39809c.setImageResource(i);
    }
}
