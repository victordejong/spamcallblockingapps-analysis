package p193e.p194a.p918j.p933d;

import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.fragment.app.FragmentContainerView;
import com.airbnb.lottie.LottieAnimationView;
import com.truecaller.surveys.C4528R;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.j.d.g */
/* loaded from: classes14-dex2jar.jar:e/a/j/d/g.class */
public final class C15474g implements AbstractC26410a {

    /* renamed from: a */
    public final FragmentContainerView f43870a;

    /* renamed from: b */
    public final LottieAnimationView f43871b;

    /* renamed from: c */
    public final Group f43872c;

    /* renamed from: d */
    public final TextView f43873d;

    public C15474g(ConstraintLayout constraintLayout, FragmentContainerView fragmentContainerView, LottieAnimationView lottieAnimationView, Group group, TextView textView) {
        this.f43870a = fragmentContainerView;
        this.f43871b = lottieAnimationView;
        this.f43872c = group;
        this.f43873d = textView;
    }

    /* renamed from: a */
    public static C15474g m18783a(View view) {
        int i = C4528R.C4530id.questionContainer;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) view.findViewById(i);
        if (fragmentContainerView != null) {
            i = C4528R.C4530id.thanksAnimation;
            LottieAnimationView lottieAnimationView = (LottieAnimationView) view.findViewById(i);
            if (lottieAnimationView != null) {
                i = C4528R.C4530id.thanksGroup;
                Group group = (Group) view.findViewById(i);
                if (group != null) {
                    i = C4528R.C4530id.thanksText;
                    TextView textView = (TextView) view.findViewById(i);
                    if (textView != null) {
                        return new C15474g((ConstraintLayout) view, fragmentContainerView, lottieAnimationView, group, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
