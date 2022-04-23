package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: androidx.swiperefreshlayout.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/g.class */
final class C1168g extends Animation {

    /* renamed from: a */
    final /* synthetic */ int f5036a;

    /* renamed from: b */
    final /* synthetic */ int f5037b;

    /* renamed from: c */
    final /* synthetic */ SwipeRefreshLayout f5038c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1168g(SwipeRefreshLayout swipeRefreshLayout, int i, int i2) {
        this.f5038c = swipeRefreshLayout;
        this.f5036a = i;
        this.f5037b = i2;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        C1162b bVar = this.f5038c.f4979j;
        int i = this.f5036a;
        bVar.setAlpha((int) (i + ((this.f5037b - i) * f)));
    }
}
