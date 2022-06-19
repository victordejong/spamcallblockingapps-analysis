package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/SwipeRefreshLayout$d.class */
class SwipeRefreshLayout$d extends Animation {

    /* renamed from: f */
    final /* synthetic */ int f2292f;

    /* renamed from: g */
    final /* synthetic */ int f2293g;

    /* renamed from: h */
    final /* synthetic */ SwipeRefreshLayout f2294h;

    SwipeRefreshLayout$d(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.f2294h = swipeRefreshLayout;
        this.f2292f = i;
        this.f2293g = i2;
    }

    @Override // android.view.animation.Animation
    public void applyTransformation(float f, Transformation transformation) {
        C0446b c0446b = this.f2294h.G;
        int i = this.f2292f;
        c0446b.setAlpha((int) (i + ((this.f2293g - i) * f)));
    }
}
