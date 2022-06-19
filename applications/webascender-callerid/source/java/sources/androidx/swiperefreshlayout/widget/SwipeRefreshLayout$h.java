package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$h.class */
class SwipeRefreshLayout$h extends Animation {

    /* renamed from: f */
    final /* synthetic */ SwipeRefreshLayout f2298f;

    SwipeRefreshLayout$h(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2298f = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        SwipeRefreshLayout swipeRefreshLayout = this.f2298f;
        float f2 = swipeRefreshLayout.C;
        swipeRefreshLayout.setAnimationProgress(f2 + ((-f2) * f));
        this.f2298f.p(f);
    }
}
