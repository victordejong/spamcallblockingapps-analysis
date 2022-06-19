package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$h.class */
class g$h extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ g$i f2080a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f2081b;

    /* renamed from: c */
    final /* synthetic */ View f2082c;

    /* renamed from: d */
    final /* synthetic */ g f2083d;

    g$h(g gVar, g$i g_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2083d = gVar;
        this.f2080a = g_i;
        this.f2081b = viewPropertyAnimator;
        this.f2082c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2081b.setListener(null);
        this.f2082c.setAlpha(1.0f);
        this.f2082c.setTranslationX(0.0f);
        this.f2082c.setTranslationY(0.0f);
        this.f2083d.dispatchChangeFinished(this.f2080a.f2085b, false);
        this.f2083d.mChangeAnimations.remove(this.f2080a.f2085b);
        this.f2083d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2083d.dispatchChangeStarting(this.f2080a.f2085b, false);
    }
}
