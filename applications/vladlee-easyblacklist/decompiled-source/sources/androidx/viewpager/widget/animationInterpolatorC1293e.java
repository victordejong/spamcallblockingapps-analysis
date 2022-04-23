package androidx.viewpager.widget;

import android.view.animation.Interpolator;
/* renamed from: androidx.viewpager.widget.e  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/viewpager/widget/e.class */
final class animationInterpolatorC1293e implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
