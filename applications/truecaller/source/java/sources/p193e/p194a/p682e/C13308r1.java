package p193e.p194a.p682e;

import android.animation.Animator;
import android.view.View;
import com.truecaller.p183ui.TruecallerInit;
/* renamed from: e.a.e.r1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/r1.class */
public class C13308r1 implements Animator.AnimatorListener {

    /* renamed from: a */
    public final /* synthetic */ View f38681a;

    public C13308r1(TruecallerInit truecallerInit, View view) {
        this.f38681a = view;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f38681a.setVisibility(8);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
    }
}
