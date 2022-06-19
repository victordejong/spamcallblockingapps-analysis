package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$c.class */
class SwipeRefreshLayout$c extends Animation {

    /* renamed from: f */
    final /* synthetic */ SwipeRefreshLayout f2291f;

    SwipeRefreshLayout$c(SwipeRefreshLayout swipeRefreshLayout) {
        this.f2291f = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        this.f2291f.setAnimationProgress(1.0f - f);
    }
}
