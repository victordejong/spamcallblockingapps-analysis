package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/g$g.class */
class g$g extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ g$i f2076a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f2077b;

    /* renamed from: c */
    final /* synthetic */ View f2078c;

    /* renamed from: d */
    final /* synthetic */ g f2079d;

    g$g(g gVar, g$i g_i, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f2079d = gVar;
        this.f2076a = g_i;
        this.f2077b = viewPropertyAnimator;
        this.f2078c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.f2077b.setListener(null);
        this.f2078c.setAlpha(1.0f);
        this.f2078c.setTranslationX(0.0f);
        this.f2078c.setTranslationY(0.0f);
        this.f2079d.dispatchChangeFinished(this.f2076a.f2084a, true);
        this.f2079d.mChangeAnimations.remove(this.f2076a.f2084a);
        this.f2079d.dispatchFinishedWhenDone();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.f2079d.dispatchChangeStarting(this.f2076a.f2084a, true);
    }
}
