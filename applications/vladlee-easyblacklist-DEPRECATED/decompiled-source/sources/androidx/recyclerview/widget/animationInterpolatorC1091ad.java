package androidx.recyclerview.widget;

import android.view.animation.Interpolator;
/* renamed from: androidx.recyclerview.widget.ad  reason: invalid class name */
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ad.class */
final class animationInterpolatorC1091ad implements Interpolator {
    @Override // android.animation.TimeInterpolator
    public final float getInterpolation(float f) {
        float f2 = f - 1.0f;
        return (f2 * f2 * f2 * f2 * f2) + 1.0f;
    }
}
