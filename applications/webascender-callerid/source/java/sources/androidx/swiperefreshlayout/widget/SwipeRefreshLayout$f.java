package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$f.class */
class SwipeRefreshLayout$f extends Animation {

    /* renamed from: f */
    final /* synthetic */ SwipeRefreshLayout f2296f;

    SwipeRefreshLayout$f(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2296f = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f2296f;
        int abs = !swipeRefreshLayout.O ? swipeRefreshLayout.E - Math.abs(swipeRefreshLayout.D) : swipeRefreshLayout.E;
        SwipeRefreshLayout swipeRefreshLayout2 = this.f2296f;
        int i = swipeRefreshLayout2.B;
        this.f2296f.setTargetOffsetTopAndBottom((i + ((int) ((abs - i) * f))) - swipeRefreshLayout2.z.getTop());
        this.f2296f.G.m4725e(1.0f - f);
    }
}
