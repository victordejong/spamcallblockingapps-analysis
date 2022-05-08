package com.google.android.material.animation;

import android.animation.TimeInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import androidx.interpolator.view.animation.LinearOutSlowInInterpolator;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/AnimationUtils.class */
public class AnimationUtils {

    /* renamed from: a */
    public static final TimeInterpolator f9923a = new LinearInterpolator();

    /* renamed from: b */
    public static final TimeInterpolator f9924b = new FastOutSlowInInterpolator();

    /* renamed from: c */
    public static final TimeInterpolator f9925c = new FastOutLinearInInterpolator();

    /* renamed from: d */
    public static final TimeInterpolator f9926d = new LinearOutSlowInInterpolator();

    /* renamed from: e */
    public static final TimeInterpolator f9927e = new DecelerateInterpolator();

    /* renamed from: a */
    public static float m10769a(float f, float f2, float f3) {
        return f + (f3 * (f2 - f));
    }

    /* renamed from: b */
    public static int m10768b(int i, int i2, float f) {
        return i + Math.round(f * (i2 - i));
    }
}
