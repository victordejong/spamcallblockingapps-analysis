package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/j.class */
final class C1123j extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView.AbstractC1082t f4812a;

    /* renamed from: b */
    final /* synthetic */ View f4813b;

    /* renamed from: c */
    final /* synthetic */ ViewPropertyAnimator f4814c;

    /* renamed from: d */
    final /* synthetic */ C1116e f4815d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1123j(C1116e eVar, RecyclerView.AbstractC1082t tVar, View view, ViewPropertyAnimator viewPropertyAnimator) {
        this.f4815d = eVar;
        this.f4812a = tVar;
        this.f4813b = view;
        this.f4814c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f4813b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4814c.setListener(null);
        this.f4815d.m7159f(this.f4812a);
        this.f4815d.f4783d.remove(this.f4812a);
        this.f4815d.m6761c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
