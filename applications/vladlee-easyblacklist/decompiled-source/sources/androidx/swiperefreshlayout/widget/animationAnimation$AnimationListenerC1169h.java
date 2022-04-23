package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* renamed from: androidx.swiperefreshlayout.widget.h  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/h.class */
final class animationAnimation$AnimationListenerC1169h implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f5039a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public animationAnimation$AnimationListenerC1169h(SwipeRefreshLayout swipeRefreshLayout) {
        this.f5039a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        if (!this.f5039a.f4972c) {
            this.f5039a.m6672a((Animation.AnimationListener) null);
        }
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
