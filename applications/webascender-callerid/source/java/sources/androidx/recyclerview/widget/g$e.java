package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$e.class */
class g$e extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView$d0 f2066a;

    /* renamed from: b */
    final /* synthetic */ View f2067b;

    /* renamed from: c */
    final /* synthetic */ ViewPropertyAnimator f2068c;

    /* renamed from: d */
    final /* synthetic */ g f2069d;

    g$e(g gVar, RecyclerView$d0 recyclerView$d0, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2069d = gVar;
        this.f2066a = recyclerView$d0;
        this.f2067b = view;
        this.f2068c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.f2067b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2068c.setListener(null);
        this.f2069d.dispatchAddFinished(this.f2066a);
        this.f2069d.mAddAnimations.remove(this.f2066a);
        this.f2069d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2069d.dispatchAddStarting(this.f2066a);
    }
}
