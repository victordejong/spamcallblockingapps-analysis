package com.github.mikephil.charting.animation;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
@SuppressLint({"NewApi"})
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/animation/EasingFunction.class */
public interface EasingFunction extends TimeInterpolator {
    @Override // android.animation.TimeInterpolator
    float getInterpolation(float f);
}
