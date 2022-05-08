package com.google.android.material.math;
/* loaded from: classes-dex2jar.jar:com/google/android/material/math/MathUtils.class */
public final class MathUtils {
    private MathUtils() {
    }

    /* renamed from: a */
    public static float m9421a(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }

    /* renamed from: b */
    public static float m9420b(float f, float f2, float f3, float f4, float f5, float f6) {
        return m9417e(m9421a(f, f2, f3, f4), m9421a(f, f2, f5, f4), m9421a(f, f2, f5, f6), m9421a(f, f2, f3, f6));
    }

    /* renamed from: c */
    public static boolean m9419c(float f, float f2, float f3) {
        return f + f3 >= f2;
    }

    /* renamed from: d */
    public static float m9418d(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: e */
    private static float m9417e(float f, float f2, float f3, float f4) {
        if (f <= f2 || f <= f3 || f <= f4) {
            f = (f2 <= f3 || f2 <= f4) ? f3 > f4 ? f3 : f4 : f2;
        }
        return f;
    }
}
