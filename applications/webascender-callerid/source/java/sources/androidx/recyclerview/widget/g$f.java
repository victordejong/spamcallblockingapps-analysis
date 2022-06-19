package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$f.class */
class g$f extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView$d0 f2070a;

    /* renamed from: b */
    final /* synthetic */ int f2071b;

    /* renamed from: c */
    final /* synthetic */ View f2072c;

    /* renamed from: d */
    final /* synthetic */ int f2073d;

    /* renamed from: e */
    final /* synthetic */ ViewPropertyAnimator f2074e;

    /* renamed from: f */
    final /* synthetic */ g f2075f;

    g$f(g gVar, RecyclerView$d0 recyclerView$d0, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f2075f = gVar;
        this.f2070a = recyclerView$d0;
        this.f2071b = i;
        this.f2072c = view;
        this.f2073d = i2;
        this.f2074e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        if (this.f2071b != 0) {
            this.f2072c.setTranslationX(0.0f);
        }
        if (this.f2073d != 0) {
            this.f2072c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2074e.setListener(null);
        this.f2075f.dispatchMoveFinished(this.f2070a);
        this.f2075f.mMoveAnimations.remove(this.f2070a);
        this.f2075f.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2075f.dispatchMoveStarting(this.f2070a);
    }
}
