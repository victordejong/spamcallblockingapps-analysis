package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C1116e;
/* renamed from: androidx.recyclerview.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/l.class */
final class C1125l extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ C1116e.C1117a f4822a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f4823b;

    /* renamed from: c */
    final /* synthetic */ View f4824c;

    /* renamed from: d */
    final /* synthetic */ C1116e f4825d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1125l(C1116e eVar, C1116e.C1117a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f4825d = eVar;
        this.f4822a = aVar;
        this.f4823b = viewPropertyAnimator;
        this.f4824c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4823b.setListener(null);
        this.f4824c.setAlpha(1.0f);
        this.f4824c.setTranslationX(0.0f);
        this.f4824c.setTranslationY(0.0f);
        this.f4825d.m7159f(this.f4822a.f4791a);
        this.f4825d.f4786g.remove(this.f4822a.f4791a);
        this.f4825d.m6761c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
