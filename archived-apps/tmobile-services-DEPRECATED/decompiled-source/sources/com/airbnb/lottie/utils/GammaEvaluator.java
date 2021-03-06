package com.airbnb.lottie.utils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/utils/GammaEvaluator.class */
public class GammaEvaluator {
    /* renamed from: a */
    private static float m15746a(float f) {
        return f <= 0.04045f ? f / 12.92f : (float) Math.pow((f + 0.055f) / 1.055f, 2.4000000953674316d);
    }

    /* renamed from: b */
    private static float m15745b(float f) {
        return f <= 0.0031308f ? f * 12.92f : (float) ((Math.pow(f, 0.4166666567325592d) * 1.0549999475479126d) - 0.054999999701976776d);
    }

    /* renamed from: c */
    public static int m15744c(float f, int i, int i2) {
        if (i == i2) {
            return i;
        }
        float f2 = ((i >> 24) & 255) / 255.0f;
        float a = m15746a(((i >> 16) & 255) / 255.0f);
        float a2 = m15746a(((i >> 8) & 255) / 255.0f);
        float a3 = m15746a((i & 255) / 255.0f);
        float a4 = m15746a(((i2 >> 16) & 255) / 255.0f);
        float a5 = m15746a(((i2 >> 8) & 255) / 255.0f);
        float a6 = m15746a((i2 & 255) / 255.0f);
        float b = m15745b(a + ((a4 - a) * f));
        float b2 = m15745b(a2 + ((a5 - a2) * f));
        float b3 = m15745b(a3 + (f * (a6 - a3)));
        return (Math.round(b * 255.0f) << 16) | (Math.round((f2 + (((((i2 >> 24) & 255) / 255.0f) - f2) * f)) * 255.0f) << 24) | (Math.round(b2 * 255.0f) << 8) | Math.round(b3 * 255.0f);
    }
}
