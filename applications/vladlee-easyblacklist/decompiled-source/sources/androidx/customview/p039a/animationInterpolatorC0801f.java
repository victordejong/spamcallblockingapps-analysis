package androidx.customview.p039a;

import android.view.animation.Interpolator;
/* renamed from: androidx.customview.a.f  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/customview/a/f.class */
final class animationInterpolatorC0801f implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
