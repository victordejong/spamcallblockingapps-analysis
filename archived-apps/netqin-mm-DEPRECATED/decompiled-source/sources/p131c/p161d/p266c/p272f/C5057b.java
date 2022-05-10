package p131c.p161d.p266c.p272f;

import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.f.b */
/* loaded from: classes2-dex2jar.jar:c/d/c/f/b.class */
public final class C5057b {
    /* renamed from: a */
    public static double m24592a(double d) {
        C4933n.m24791a(!Double.isNaN(d));
        if (d > 0.0d) {
            return d;
        }
        return 0.0d;
    }

    /* renamed from: b */
    public static long m24591b(double d) {
        C4933n.m24790a(m24590c(d), "not a normal value");
        int exponent = Math.getExponent(d);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | 4503599627370496L;
    }

    /* renamed from: c */
    public static boolean m24590c(double d) {
        return Math.getExponent(d) <= 1023;
    }
}
