package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.recyclerview.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/k.class */
final class C1124k extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ RecyclerView.AbstractC1082t f4816a;

    /* renamed from: b */
    final /* synthetic */ int f4817b;

    /* renamed from: c */
    final /* synthetic */ View f4818c;

    /* renamed from: d */
    final /* synthetic */ int f4819d;

    /* renamed from: e */
    final /* synthetic */ ViewPropertyAnimator f4820e;

    /* renamed from: f */
    final /* synthetic */ C1116e f4821f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1124k(C1116e eVar, RecyclerView.AbstractC1082t tVar, int i, View view, int i2, ViewPropertyAnimator viewPropertyAnimator) {
        this.f4821f = eVar;
        this.f4816a = tVar;
        this.f4817b = i;
        this.f4818c = view;
        this.f4819d = i2;
        this.f4820e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        if (this.f4817b != 0) {
            this.f4818c.setTranslationX(0.0f);
        }
        if (this.f4819d != 0) {
            this.f4818c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4820e.setListener(null);
        this.f4821f.m7159f(this.f4816a);
        this.f4821f.f4784e.remove(this.f4816a);
        this.f4821f.m6761c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
