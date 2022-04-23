package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: androidx.swiperefreshlayout.widget.k */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/k.class */
final class C1172k extends Animation {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f5042a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1172k(SwipeRefreshLayout swipeRefreshLayout) {
        this.f5042a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        this.f5042a.m6677a(this.f5042a.f4975f + ((-this.f5042a.f4975f) * f));
        this.f5042a.m6669b(f);
    }
}
