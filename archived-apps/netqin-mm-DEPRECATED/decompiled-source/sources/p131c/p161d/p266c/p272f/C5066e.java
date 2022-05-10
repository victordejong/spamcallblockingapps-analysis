package p131c.p161d.p266c.p272f;

import java.math.RoundingMode;
/* renamed from: c.d.c.f.e */
/* loaded from: classes2-dex2jar.jar:c/d/c/f/e.class */
public final class C5066e {
    /* renamed from: a */
    public static int m24577a(String str, int i) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " (" + i + ") must be > 0");
    }

    /* renamed from: a */
    public static void m24576a(boolean z) {
        if (!z) {
            throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
        }
    }

    /* renamed from: a */
    public static void m24575a(boolean z, double d, RoundingMode roundingMode) {
        if (!z) {
            throw new ArithmeticException("rounded value is out of range for input " + d + " and rounding mode " + roundingMode);
        }
    }

    /* renamed from: a */
    public static void m24574a(boolean z, String str, int i, int i2) {
        if (!z) {
            throw new ArithmeticException("overflow: " + str + "(" + i + ", " + i2 + ")");
        }
    }

    /* renamed from: a */
    public static void m24573a(boolean z, String str, long j, long j2) {
        if (!z) {
            throw new ArithmeticException("overflow: " + str + "(" + j + ", " + j2 + ")");
        }
    }
}
