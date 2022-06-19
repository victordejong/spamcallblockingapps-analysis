package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$a.class */
class SwipeRefreshLayout$a implements Animation.AnimationListener {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f2289a;

    SwipeRefreshLayout$a(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2289a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        SwipeRefreshLayout$j swipeRefreshLayout$j;
        SwipeRefreshLayout swipeRefreshLayout = this.f2289a;
        if (!swipeRefreshLayout.h) {
            swipeRefreshLayout.r();
            return;
        }
        swipeRefreshLayout.G.setAlpha(255);
        this.f2289a.G.start();
        SwipeRefreshLayout swipeRefreshLayout2 = this.f2289a;
        if (swipeRefreshLayout2.M && (swipeRefreshLayout$j = swipeRefreshLayout2.g) != null) {
            swipeRefreshLayout$j.onRefresh();
        }
        SwipeRefreshLayout swipeRefreshLayout3 = this.f2289a;
        swipeRefreshLayout3.r = swipeRefreshLayout3.z.getTop();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
