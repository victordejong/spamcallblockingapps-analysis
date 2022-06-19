package p193e.p194a.p682e.p700d2;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: e.a.e.d2.k */
/* loaded from: classes15-dex2jar.jar:e/a/e/d2/k.class */
public class C13234k extends AnimatorListenerAdapter {

    /* renamed from: a */
    public final /* synthetic */ C13235l f38457a;

    public C13234k(C13235l c13235l) {
        this.f38457a = c13235l;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f38457a.f38467j = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C13235l c13235l = this.f38457a;
        if (!c13235l.f38467j) {
            c13235l.f38465h.start();
        }
    }
}
