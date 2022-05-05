package androidx.core.p037g;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
/* renamed from: androidx.core.g.ab */
/* loaded from: classes-dex2jar.jar:androidx/core/g/ab.class */
final class C0714ab extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ AbstractC0716ad f3075a;

    /* renamed from: b */
    final /* synthetic */ View f3076b;

    /* renamed from: c */
    final /* synthetic */ C0712aa f3077c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0714ab(C0712aa aaVar, AbstractC0716ad adVar, View view) {
        this.f3077c = aaVar;
        this.f3075a = adVar;
        this.f3076b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f3075a.mo8440c(this.f3076b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        this.f3075a.mo8441b(this.f3076b);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f3075a.mo8442a(this.f3076b);
    }
}
