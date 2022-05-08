package androidx.constraintlayout.motion.utils;

import android.util.Log;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/Easing.class */
public class Easing {

    /* renamed from: b */
    static Easing f1627b = new Easing();

    /* renamed from: c */
    public static String[] f1628c = {"standard", "accelerate", "decelerate", "linear"};

    /* renamed from: a */
    String f1629a = "identity";

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/Easing$CubicEasing.class */
    static class CubicEasing extends Easing {

        /* renamed from: h */
        private static double f1630h = 0.01d;

        /* renamed from: i */
        private static double f1631i = 1.0E-4d;

        /* renamed from: d */
        double f1632d;

        /* renamed from: e */
        double f1633e;

        /* renamed from: f */
        double f1634f;

        /* renamed from: g */
        double f1635g;

        CubicEasing(String str) {
            this.f1629a = str;
            int indexOf = str.indexOf(40);
            int indexOf2 = str.indexOf(44, indexOf);
            this.f1632d = Double.parseDouble(str.substring(indexOf + 1, indexOf2).trim());
            int i = indexOf2 + 1;
            int indexOf3 = str.indexOf(44, i);
            this.f1633e = Double.parseDouble(str.substring(i, indexOf3).trim());
            int i2 = indexOf3 + 1;
            int indexOf4 = str.indexOf(44, i2);
            this.f1634f = Double.parseDouble(str.substring(i2, indexOf4).trim());
            int i3 = indexOf4 + 1;
            this.f1635g = Double.parseDouble(str.substring(i3, str.indexOf(41, i3)).trim());
        }

        /* renamed from: d */
        private double m20972d(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f1632d * d2 * d3 * d) + (this.f1634f * d3 * d * d) + (d * d * d);
        }

        /* renamed from: e */
        private double m20971e(double d) {
            double d2 = 1.0d - d;
            double d3 = 3.0d * d2;
            return (this.f1633e * d2 * d3 * d) + (this.f1635g * d3 * d * d) + (d * d * d);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v31 */
        /* JADX WARN: Type inference failed for: r0v33, types: [double] */
        /* JADX WARN: Type inference failed for: r0v35, types: [double] */
        /* JADX WARN: Type inference failed for: r0v5 */
        /* JADX WARN: Type inference failed for: r0v6, types: [double] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.constraintlayout.motion.utils.Easing
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public double mo20974a(double r8) {
            /*
                r7 = this;
                r0 = r8
                r1 = 0
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 > 0) goto L_0x0008
                r0 = 0
                return r0
            L_0x0008:
                r0 = r8
                r1 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 < 0) goto L_0x0010
                r0 = 4607182418800017408(0x3ff0000000000000, double:1.0)
                return r0
            L_0x0010:
                r0 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                r10 = r0
                r0 = r10
                r12 = r0
            L_0x0017:
                r0 = r10
                double r1 = androidx.constraintlayout.motion.utils.Easing.CubicEasing.f1630h
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0046
                r0 = r7
                r1 = r12
                double r0 = r0.m20972d(r1)
                r14 = r0
                r0 = r10
                r1 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                double r0 = r0 * r1
                r10 = r0
                r0 = r14
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x003d
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r12 = r0
                goto L_0x0017
            L_0x003d:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r12 = r0
                goto L_0x0017
            L_0x0046:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r16 = r0
                r0 = r7
                r1 = r16
                double r0 = r0.m20972d(r1)
                r14 = r0
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r12 = r0
                r0 = r7
                r1 = r12
                double r0 = r0.m20972d(r1)
                r10 = r0
                r0 = r7
                r1 = r16
                double r0 = r0.m20971e(r1)
                r16 = r0
                r0 = r7
                r1 = r12
                double r0 = r0.m20971e(r1)
                r1 = r16
                double r0 = r0 - r1
                r1 = r8
                r2 = r14
                double r1 = r1 - r2
                double r0 = r0 * r1
                r1 = r10
                r2 = r14
                double r1 = r1 - r2
                double r0 = r0 / r1
                r1 = r16
                double r0 = r0 + r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.Easing.CubicEasing.mo20974a(double):double");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v1 */
        /* JADX WARN: Type inference failed for: r0v2, types: [double] */
        /* JADX WARN: Type inference failed for: r0v25 */
        /* JADX WARN: Type inference failed for: r0v27, types: [double] */
        /* JADX WARN: Type inference failed for: r0v29, types: [double] */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // androidx.constraintlayout.motion.utils.Easing
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public double mo20973b(double r8) {
            /*
                r7 = this;
                r0 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                r10 = r0
                r0 = r10
                r12 = r0
            L_0x0007:
                r0 = r10
                double r1 = androidx.constraintlayout.motion.utils.Easing.CubicEasing.f1631i
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 <= 0) goto L_0x0036
                r0 = r7
                r1 = r12
                double r0 = r0.m20972d(r1)
                r14 = r0
                r0 = r10
                r1 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                double r0 = r0 * r1
                r10 = r0
                r0 = r14
                r1 = r8
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 >= 0) goto L_0x002d
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r12 = r0
                goto L_0x0007
            L_0x002d:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r12 = r0
                goto L_0x0007
            L_0x0036:
                r0 = r12
                r1 = r10
                double r0 = r0 - r1
                r14 = r0
                r0 = r7
                r1 = r14
                double r0 = r0.m20972d(r1)
                r8 = r0
                r0 = r12
                r1 = r10
                double r0 = r0 + r1
                r10 = r0
                r0 = r7
                r1 = r10
                double r0 = r0.m20972d(r1)
                r12 = r0
                r0 = r7
                r1 = r14
                double r0 = r0.m20971e(r1)
                r14 = r0
                r0 = r7
                r1 = r10
                double r0 = r0.m20971e(r1)
                r1 = r14
                double r0 = r0 - r1
                r1 = r12
                r2 = r8
                double r1 = r1 - r2
                double r0 = r0 / r1
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.utils.Easing.CubicEasing.mo20973b(double):double");
        }
    }

    /* renamed from: c */
    public static Easing m20975c(String str) {
        if (str == null) {
            return null;
        }
        if (str.startsWith("cubic")) {
            return new CubicEasing(str);
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1354466595:
                if (str.equals("accelerate")) {
                    c = 1;
                    break;
                }
                break;
            case -1263948740:
                if (str.equals("decelerate")) {
                    c = 2;
                    break;
                }
                break;
            case -1102672091:
                if (str.equals("linear")) {
                    c = 3;
                    break;
                }
                break;
            case 1312628413:
                if (str.equals("standard")) {
                    c = 0;
                    break;
                }
                break;
        }
        if (c == 0) {
            return new CubicEasing("cubic(0.4, 0.0, 0.2, 1)");
        }
        if (c == 1) {
            return new CubicEasing("cubic(0.4, 0.05, 0.8, 0.7)");
        }
        if (c == 2) {
            return new CubicEasing("cubic(0.0, 0.0, 0.2, 0.95)");
        }
        if (c == 3) {
            return new CubicEasing("cubic(1, 1, 0, 0)");
        }
        Log.e("ConstraintSet", "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or " + Arrays.toString(f1628c));
        return f1627b;
    }

    /* renamed from: a */
    public double mo20974a(double d) {
        return d;
    }

    /* renamed from: b */
    public double mo20973b(double d) {
        return 1.0d;
    }

    public String toString() {
        return this.f1629a;
    }
}
