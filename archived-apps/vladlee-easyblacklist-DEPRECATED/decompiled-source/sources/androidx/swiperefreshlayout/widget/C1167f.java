package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: androidx.swiperefreshlayout.widget.f */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/f.class */
final class C1167f extends Animation {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f5035a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1167f(SwipeRefreshLayout swipeRefreshLayout) {
        this.f5035a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        this.f5035a.m6677a(1.0f - f);
    }
}
