package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$d.class */
class g$d extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView$d0 f2062a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f2063b;

    /* renamed from: c */
    final /* synthetic */ View f2064c;

    /* renamed from: d */
    final /* synthetic */ g f2065d;

    g$d(g gVar, RecyclerView$d0 recyclerView$d0, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2065d = gVar;
        this.f2062a = recyclerView$d0;
        this.f2063b = viewPropertyAnimator;
        this.f2064c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2063b.setListener(null);
        this.f2064c.setAlpha(1.0f);
        this.f2065d.dispatchRemoveFinished(this.f2062a);
        this.f2065d.mRemoveAnimations.remove(this.f2062a);
        this.f2065d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2065d.dispatchRemoveStarting(this.f2062a);
    }
}
