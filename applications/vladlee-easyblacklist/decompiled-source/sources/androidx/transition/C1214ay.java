package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.ay */
/* loaded from: classes-dex2jar.jar:androidx/transition/ay.class */
public final class C1214ay extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ Transition f5228a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1214ay(Transition transition) {
        this.f5228a = transition;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f5228a.m6597h();
        animator.removeListener(this);
    }
}
