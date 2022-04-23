package androidx.appcompat.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
/* renamed from: androidx.appcompat.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d.class */
final class C0501d extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ ActionBarOverlayLayout f2389a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0501d(ActionBarOverlayLayout actionBarOverlayLayout) {
        this.f2389a = actionBarOverlayLayout;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2389a;
        actionBarOverlayLayout.f1786c = null;
        actionBarOverlayLayout.f1785b = false;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        ActionBarOverlayLayout actionBarOverlayLayout = this.f2389a;
        actionBarOverlayLayout.f1786c = null;
        actionBarOverlayLayout.f1785b = false;
    }
}
