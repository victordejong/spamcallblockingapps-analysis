package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.p026b.C0529a;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.transition.ax */
/* loaded from: classes-dex2jar.jar:androidx/transition/ax.class */
public final class C1213ax extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ C0529a f5226a;

    /* renamed from: b */
    final /* synthetic */ Transition f5227b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1213ax(Transition transition, C0529a aVar) {
        this.f5227b = transition;
        this.f5226a = aVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f5226a.remove(animator);
        this.f5227b.f5130g.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f5227b.f5130g.add(animator);
    }
}
