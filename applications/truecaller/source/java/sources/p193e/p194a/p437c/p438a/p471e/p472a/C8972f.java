package p193e.p194a.p437c.p438a.p471e.p472a;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.Fragment;
import com.airbnb.lottie.LottieAnimationView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.p168ui.C4078R;
import com.truecaller.insights.p168ui.semicard.view.UiType;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import e.m.a.g.e.e;
import java.util.Locale;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p437c.p438a.p477g.C9047l;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.z.c.d0;
import s1.z.c.f;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\u0018�� \u00172\u00020\u0001:\u0001\u0018B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u0019"}, d2 = {"Le/a/c/a/e/a/f;", "Le/m/a/g/e/e;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/c/a/g/l;", "a", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "OA", "()Le/a/c/a/g/l;", "binding", "<init>", "()V", "d", C22021b.f61237c, "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.c.a.e.a.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/f.class */
public final class C8972f extends e {

    /* renamed from: a */
    public final ViewBindingProperty f27281a = new C19350a(new C8973a());

    /* renamed from: b */
    public static final /* synthetic */ l[] f27278b = {C22128a.m8621g0(C8972f.class, "binding", "getBinding()Lcom/truecaller/insights/ui/databinding/BottomsheetFeedbackThanksBinding;", 0)};

    /* renamed from: d */
    public static final C8974b f27280d = new C8974b(null);

    /* renamed from: c */
    public static final String f27279c = d0.a(C8972f.class).c();

    /* renamed from: e.a.c.a.e.a.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/f$a.class */
    public static final class C8973a extends m implements s1.z.b.l<C8972f, C9047l> {
        public C8973a() {
            super(1);
        }

        /* renamed from: d */
        public Object m27906d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = C4078R.C4080id.feedbackImage;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) requireView.findViewById(i);
            if (lottieAnimationView != null) {
                i = C4078R.C4080id.header;
                TextView textView = (TextView) requireView.findViewById(i);
                if (textView != null) {
                    i = C4078R.C4080id.subTitle;
                    TextView textView2 = (TextView) requireView.findViewById(i);
                    if (textView2 != null) {
                        i = C4078R.C4080id.title;
                        TextView textView3 = (TextView) requireView.findViewById(i);
                        if (textView3 != null) {
                            return new C9047l((ConstraintLayout) requireView, lottieAnimationView, textView, textView2, textView3);
                        }
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.c.a.e.a.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/e/a/f$b.class */
    public static final class C8974b {
        public C8974b(f fVar) {
        }

        /* renamed from: a */
        public final C8972f m27905a(UiType uiType, String str) {
            s1.z.c.l.e(uiType, "uiType");
            s1.z.c.l.e(str, "type");
            C8972f c8972f = new C8972f();
            Bundle bundle = new Bundle();
            bundle.putString("thanks_ui_type", uiType.name());
            bundle.putString("message_type", str);
            c8972f.setArguments(bundle);
            return c8972f;
        }
    }

    /* renamed from: OA */
    public final C9047l m27907OA() {
        return (C9047l) this.f27281a.m34468b(this, f27278b[0]);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C4078R.layout.bottomsheet_feedback_thanks, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        C8972f.super.onViewCreated(view, bundle);
        requireView().postDelayed(new RunnableC8975g(this), 2500L);
        Bundle arguments = getArguments();
        if (arguments != null) {
            s1.z.c.l.d(arguments, "arguments ?: return");
            String string = arguments.getString("thanks_ui_type");
            if (string == null) {
                return;
            }
            s1.z.c.l.d(string, "arguments.getString(EXTR…THANKS_UI_TYPE) ?: return");
            UiType valueOf = UiType.valueOf(string);
            String string2 = arguments.getString("message_type");
            int ordinal = valueOf.ordinal();
            if (ordinal == 0) {
                TextView textView = m27907OA().f27526a;
                s1.z.c.l.d(textView, "binding.header");
                C19286f.m13689O(textView);
            } else if (ordinal == 1) {
                TextView textView2 = m27907OA().f27526a;
                s1.z.c.l.d(textView2, "binding.header");
                C19286f.m13684T(textView2);
                TextView textView3 = m27907OA().f27526a;
                s1.z.c.l.d(textView3, "binding.header");
                Resources resources = getResources();
                int i = C4078R.string.feedback_received;
                if (string2 == null) {
                    return;
                }
                Locale locale = Locale.US;
                textView3.setText(resources.getString(i, C22128a.m8586p(locale, "Locale.US", string2, locale, "(this as java.lang.String).toUpperCase(locale)")));
            } else if (ordinal != 2) {
            } else {
                TextView textView4 = m27907OA().f27526a;
                s1.z.c.l.d(textView4, "binding.header");
                C19286f.m13684T(textView4);
                TextView textView5 = m27907OA().f27526a;
                s1.z.c.l.d(textView5, "binding.header");
                Resources resources2 = getResources();
                int i2 = C4078R.string.type_recorded;
                if (string2 == null) {
                    return;
                }
                Locale locale2 = Locale.US;
                textView5.setText(resources2.getString(i2, C22128a.m8586p(locale2, "Locale.US", string2, locale2, "(this as java.lang.String).toUpperCase(locale)")));
            }
        }
    }
}
