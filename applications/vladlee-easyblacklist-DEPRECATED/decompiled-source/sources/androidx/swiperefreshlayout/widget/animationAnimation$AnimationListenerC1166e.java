package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* renamed from: androidx.swiperefreshlayout.widget.e  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/e.class */
final class animationAnimation$AnimationListenerC1166e implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f5034a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public animationAnimation$AnimationListenerC1166e(SwipeRefreshLayout swipeRefreshLayout) {
        this.f5034a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        if (this.f5034a.f4970a) {
            this.f5034a.f4979j.setAlpha(255);
            this.f5034a.f4979j.start();
            SwipeRefreshLayout swipeRefreshLayout = this.f5034a;
            swipeRefreshLayout.f4971b = swipeRefreshLayout.f4973d.getTop();
            return;
        }
        this.f5034a.m6678a();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
