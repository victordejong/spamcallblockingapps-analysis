package androidx.recyclerview.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.C1116e;
/* renamed from: androidx.recyclerview.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/m.class */
final class C1126m extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ C1116e.C1117a f4826a;

    /* renamed from: b */
    final /* synthetic */ ViewPropertyAnimator f4827b;

    /* renamed from: c */
    final /* synthetic */ View f4828c;

    /* renamed from: d */
    final /* synthetic */ C1116e f4829d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1126m(C1116e eVar, C1116e.C1117a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.f4829d = eVar;
        this.f4826a = aVar;
        this.f4827b = viewPropertyAnimator;
        this.f4828c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f4827b.setListener(null);
        this.f4828c.setAlpha(1.0f);
        this.f4828c.setTranslationX(0.0f);
        this.f4828c.setTranslationY(0.0f);
        this.f4829d.m7159f(this.f4826a.f4792b);
        this.f4829d.f4786g.remove(this.f4826a.f4792b);
        this.f4829d.m6761c();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
    }
}
