package com.google.android.material.p063d;
/* renamed from: com.google.android.material.d.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/d/a.class */
public final class C2992a {
    /* renamed from: a */
    public static float m1198a(float f, float f2, float f3) {
        return ((1.0f - f3) * f) + (f3 * f2);
    }

    /* renamed from: a */
    public static float m1197a(float f, float f2, float f3, float f4) {
        float b = m1196b(f, f2, 0.0f, 0.0f);
        float b2 = m1196b(f, f2, f3, 0.0f);
        float b3 = m1196b(f, f2, f3, f4);
        float b4 = m1196b(f, f2, 0.0f, f4);
        return (b <= b2 || b <= b3 || b <= b4) ? (b2 <= b3 || b2 <= b4) ? b3 > b4 ? b3 : b4 : b2 : b;
    }

    /* renamed from: b */
    private static float m1196b(float f, float f2, float f3, float f4) {
        return (float) Math.hypot(f3 - f, f4 - f2);
    }
}
