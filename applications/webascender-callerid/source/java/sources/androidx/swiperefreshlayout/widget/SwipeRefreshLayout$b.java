package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$b.class */
class SwipeRefreshLayout$b extends Animation {

    /* renamed from: f */
    final /* synthetic */ SwipeRefreshLayout f2290f;

    SwipeRefreshLayout$b(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2290f = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f2290f.setAnimationProgress(f);
    }
}
