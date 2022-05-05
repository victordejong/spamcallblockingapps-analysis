package androidx.swiperefreshlayout.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;
/* renamed from: androidx.swiperefreshlayout.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/swiperefreshlayout/widget/i.class */
final class C1170i extends Animation {

    /* renamed from: a */
    final /* synthetic */ SwipeRefreshLayout f5040a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1170i(SwipeRefreshLayout swipeRefreshLayout) {
        this.f5040a = swipeRefreshLayout;
    }

    @Override // android.view.animation.Animation
    public final void applyTransformation(float f, Transformation transformation) {
        int abs = !this.f5040a.f4981l ? this.f5040a.f4977h - Math.abs(this.f5040a.f4976g) : this.f5040a.f4977h;
        this.f5040a.m6676a((this.f5040a.f4974e + ((int) ((abs - this.f5040a.f4974e) * f))) - this.f5040a.f4973d.getTop());
        this.f5040a.f4979j.m6655a(1.0f - f);
    }
}
