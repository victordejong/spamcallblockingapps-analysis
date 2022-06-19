package p193e.p194a.p798g5;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.View;
import com.truecaller.common.tag.TagView;
import java.util.Objects;
/* renamed from: e.a.g5.u */
/* loaded from: classes14-dex2jar.jar:e/a/g5/u.class */
public class C14548u extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC14541t f41845a;

    public C14548u(View$OnClickListenerC14541t view$OnClickListenerC14541t) {
        this.f41845a = view$OnClickListenerC14541t;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        View$OnClickListenerC14541t view$OnClickListenerC14541t = this.f41845a;
        int i = View$OnClickListenerC14541t.f41820w;
        view$OnClickListenerC14541t.m20019SA();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        View$OnClickListenerC14541t view$OnClickListenerC14541t = this.f41845a;
        Objects.requireNonNull(view$OnClickListenerC14541t);
        float floatValue = ((Float) ((ValueAnimator) animator).getAnimatedValue()).floatValue();
        for (int i = 0; i < view$OnClickListenerC14541t.f41825i.getChildCount(); i++) {
            View childAt = view$OnClickListenerC14541t.f41825i.getChildAt(i);
            if ((childAt instanceof TagView) && childAt != view$OnClickListenerC14541t.f41832p) {
                childAt.setAlpha(floatValue);
            }
        }
        view$OnClickListenerC14541t.f41824h.invalidate();
    }
}
