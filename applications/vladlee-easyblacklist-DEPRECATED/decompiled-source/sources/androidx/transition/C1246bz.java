package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: androidx.transition.bz */
/* loaded from: classes-dex2jar.jar:androidx/transition/bz.class */
final class C1246bz extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ AbstractC1230bk f5294a;

    /* renamed from: b */
    final /* synthetic */ View f5295b;

    /* renamed from: c */
    final /* synthetic */ Visibility f5296c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1246bz(Visibility visibility, AbstractC1230bk bkVar, View view) {
        this.f5296c = visibility;
        this.f5294a = bkVar;
        this.f5295b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f5294a.mo6533b(this.f5295b);
    }
}
