package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: androidx.swiperefreshlayout.widget.j */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/j.class */
final class C1171j extends Animation {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f5041a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1171j(SwipeRefreshLayout swipeRefreshLayout) {
        this.f5041a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        this.f5041a.m6669b(f);
    }
}
