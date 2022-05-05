package androidx.fragment.app;

import android.view.ViewGroup;
import android.view.animation.Animation;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.fragment.app.q  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/q.class */
public final class animationAnimation$AnimationListenerC0907q implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ ViewGroup f3826a;

    /* renamed from: b */
    final /* synthetic */ Fragment f3827b;

    /* renamed from: c */
    final /* synthetic */ LayoutInflater$Factory2C0898n f3828c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public animationAnimation$AnimationListenerC0907q(LayoutInflater$Factory2C0898n nVar, ViewGroup viewGroup, Fragment fragment) {
        this.f3828c = nVar;
        this.f3826a = viewGroup;
        this.f3827b = fragment;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f3826a.post(new RunnableC0908r(this));
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
