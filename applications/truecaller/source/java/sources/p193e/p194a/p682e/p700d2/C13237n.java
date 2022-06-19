package p193e.p194a.p682e.p700d2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.animation.OvershootInterpolator;
import android.widget.LinearLayout;
import s1.z.c.l;
/* renamed from: e.a.e.d2.n */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/n.class */
public final class C13237n extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C13238o f38470a;

    public C13237n(C13238o c13238o) {
        this.f38470a = c13238o;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l.e(animator, "animation");
        LinearLayout linearLayout = this.f38470a.f38471a;
        if (linearLayout == null) {
            l.l("emojiContainer");
            throw null;
        }
        int childCount = linearLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            LinearLayout linearLayout2 = this.f38470a.f38471a;
            if (linearLayout2 == null) {
                l.l("emojiContainer");
                throw null;
            }
            linearLayout2.getChildAt(i).animate().scaleX(1.0f).scaleY(1.0f).setStartDelay(i * 50).setInterpolator(new OvershootInterpolator()).setDuration(150L).start();
        }
    }
}
