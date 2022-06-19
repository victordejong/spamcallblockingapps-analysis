package p193e.p194a.p682e.p699c2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.truecaller.p183ui.components.FeedbackItemView;
/* renamed from: e.a.e.c2.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/e0.class */
public class C13186e0 extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ FeedbackItemView f38306a;

    public C13186e0(FeedbackItemView feedbackItemView) {
        this.f38306a = feedbackItemView;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f38306a.f15754i = false;
    }
}
