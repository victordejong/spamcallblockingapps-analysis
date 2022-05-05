package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/i.class */
final class C1122i extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView.AbstractC1082t f4808a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f4809b;

    /* renamed from: c */
    final /* synthetic */ View f4810c;

    /* renamed from: d */
    final /* synthetic */ C1116e f4811d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1122i(C1116e eVar, RecyclerView.AbstractC1082t tVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f4811d = eVar;
        this.f4808a = tVar;
        this.f4809b = viewPropertyAnimator;
        this.f4810c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4809b.setListener(null);
        this.f4810c.setAlpha(1.0f);
        this.f4811d.m7159f(this.f4808a);
        this.f4811d.f4785f.remove(this.f4808a);
        this.f4811d.m6761c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
