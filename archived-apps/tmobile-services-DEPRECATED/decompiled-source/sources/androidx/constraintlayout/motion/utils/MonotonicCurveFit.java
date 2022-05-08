package androidx.constraintlayout.motion.utils;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/utils/MonotonicCurveFit.class */
public class MonotonicCurveFit extends CurveFit {

    /* renamed from: a */
    private double[] f1638a;

    /* renamed from: b */
    private double[][] f1639b;

    /* renamed from: c */
    private double[][] f1640c;

    public MonotonicCurveFit(double[] dArr, double[][] dArr2) {
        int length = dArr.length;
        int length2 = dArr2[0].length;
        int i = length - 1;
        double[][] dArr3 = new double[i][length2];
        double[][] dArr4 = new double[length][length2];
        for (int i2 = 0; i2 < length2; i2++) {
            int i3 = 0;
            while (i3 < i) {
                int i4 = i3 + 1;
                dArr3[i3][i2] = (dArr2[i4][i2] - dArr2[i3][i2]) / (dArr[i4] - dArr[i3]);
                if (i3 == 0) {
                    dArr4[i3][i2] = dArr3[i3][i2];
                } else {
                    dArr4[i3][i2] = (dArr3[i3 - 1][i2] + dArr3[i3][i2]) * 0.5d;
                }
                i3 = i4;
            }
            dArr4[i][i2] = dArr3[length - 2][i2];
        }
        for (int i5 = 0; i5 < i; i5++) {
            for (int i6 = 0; i6 < length2; i6++) {
                if (dArr3[i5][i6] == 0.0d) {
                    dArr4[i5][i6] = 0.0d;
                    dArr4[i5 + 1][i6] = 0.0d;
                } else {
                    double d = dArr4[i5][i6] / dArr3[i5][i6];
                    int i7 = i5 + 1;
                    double d2 = dArr4[i7][i6] / dArr3[i5][i6];
                    double hypot = Math.hypot(d, d2);
                    if (hypot > 9.0d) {
                        double d3 = 3.0d / hypot;
                        dArr4[i5][i6] = d * d3 * dArr3[i5][i6];
                        dArr4[i7][i6] = d3 * d2 * dArr3[i5][i6];
                    }
                }
            }
        }
        this.f1638a = dArr;
        this.f1639b = dArr2;
        this.f1640c = dArr4;
    }

    /* renamed from: i */
    private static double m20964i(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d2 * 6.0d;
        double d9 = 3.0d * d;
        return ((((((((((-6.0d) * d7) * d4) + (d8 * d4)) + ((6.0d * d7) * d3)) - (d8 * d3)) + ((d9 * d6) * d7)) + ((d9 * d5) * d7)) - (((2.0d * d) * d6) * d2)) - (((4.0d * d) * d5) * d2)) + (d * d5);
    }

    /* renamed from: j */
    private static double m20963j(double d, double d2, double d3, double d4, double d5, double d6) {
        double d7 = d2 * d2;
        double d8 = d7 * d2;
        double d9 = 3.0d * d7;
        double d10 = d * d6;
        double d11 = d * d5;
        return (((((((((((-2.0d) * d8) * d4) + (d9 * d4)) + ((d8 * 2.0d) * d3)) - (d9 * d3)) + d3) + (d10 * d8)) + (d8 * d11)) - (d10 * d7)) - (((d * 2.0d) * d5) * d7)) + (d11 * d2);
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: c */
    public double mo20970c(double d, int i) {
        double[] dArr = this.f1638a;
        int length = dArr.length;
        int i2 = 0;
        if (d <= dArr[0]) {
            return this.f1639b[0][i];
        }
        int i3 = length - 1;
        if (d >= dArr[i3]) {
            return this.f1639b[i3][i];
        }
        while (i2 < i3) {
            double[] dArr2 = this.f1638a;
            if (d == dArr2[i2]) {
                return this.f1639b[i2][i];
            }
            int i4 = i2 + 1;
            if (d < dArr2[i4]) {
                double d2 = dArr2[i4] - dArr2[i2];
                double d3 = (d - dArr2[i2]) / d2;
                double[][] dArr3 = this.f1639b;
                double d4 = dArr3[i2][i];
                double d5 = dArr3[i4][i];
                double[][] dArr4 = this.f1640c;
                return m20963j(d2, d3, d4, d5, dArr4[i2][i], dArr4[i4][i]);
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: d */
    public void mo20969d(double d, double[] dArr) {
        double[] dArr2 = this.f1638a;
        int length = dArr2.length;
        int length2 = this.f1639b[0].length;
        if (d <= dArr2[0]) {
            for (int i = 0; i < length2; i++) {
                dArr[i] = this.f1639b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr2[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                dArr[i3] = this.f1639b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d == this.f1638a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    dArr[i5] = this.f1639b[i4][i5];
                }
            }
            double[] dArr3 = this.f1638a;
            int i6 = i4 + 1;
            if (d < dArr3[i6]) {
                double d2 = dArr3[i6] - dArr3[i4];
                double d3 = (d - dArr3[i4]) / d2;
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr4 = this.f1639b;
                    double d4 = dArr4[i4][i7];
                    double d5 = dArr4[i6][i7];
                    double[][] dArr5 = this.f1640c;
                    dArr[i7] = m20963j(d2, d3, d4, d5, dArr5[i4][i7], dArr5[i6][i7]);
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: e */
    public void mo20968e(double d, float[] fArr) {
        double[] dArr = this.f1638a;
        int length = dArr.length;
        int length2 = this.f1639b[0].length;
        if (d <= dArr[0]) {
            for (int i = 0; i < length2; i++) {
                fArr[i] = (float) this.f1639b[0][i];
            }
            return;
        }
        int i2 = length - 1;
        if (d >= dArr[i2]) {
            for (int i3 = 0; i3 < length2; i3++) {
                fArr[i3] = (float) this.f1639b[i2][i3];
            }
            return;
        }
        int i4 = 0;
        while (i4 < i2) {
            if (d == this.f1638a[i4]) {
                for (int i5 = 0; i5 < length2; i5++) {
                    fArr[i5] = (float) this.f1639b[i4][i5];
                }
            }
            double[] dArr2 = this.f1638a;
            int i6 = i4 + 1;
            if (d < dArr2[i6]) {
                double d2 = dArr2[i6] - dArr2[i4];
                double d3 = (d - dArr2[i4]) / d2;
                for (int i7 = 0; i7 < length2; i7++) {
                    double[][] dArr3 = this.f1639b;
                    double d4 = dArr3[i4][i7];
                    double d5 = dArr3[i6][i7];
                    double[][] dArr4 = this.f1640c;
                    fArr[i7] = (float) m20963j(d2, d3, d4, d5, dArr4[i4][i7], dArr4[i6][i7]);
                }
                return;
            }
            i4 = i6;
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: f */
    public double mo20967f(double d, int i) {
        double[] dArr = this.f1638a;
        int length = dArr.length;
        int i2 = 0;
        if (d < dArr[0]) {
            d = dArr[0];
        } else {
            int i3 = length - 1;
            if (d >= dArr[i3]) {
                d = dArr[i3];
            }
        }
        while (i2 < length - 1) {
            double[] dArr2 = this.f1638a;
            int i4 = i2 + 1;
            if (d <= dArr2[i4]) {
                double d2 = dArr2[i4] - dArr2[i2];
                double d3 = (d - dArr2[i2]) / d2;
                double[][] dArr3 = this.f1639b;
                double d4 = dArr3[i2][i];
                double d5 = dArr3[i4][i];
                double[][] dArr4 = this.f1640c;
                return m20964i(d2, d3, d4, d5, dArr4[i2][i], dArr4[i4][i]) / d2;
            }
            i2 = i4;
        }
        return 0.0d;
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: g */
    public void mo20966g(double d, double[] dArr) {
        double[] dArr2 = this.f1638a;
        int length = dArr2.length;
        int length2 = this.f1639b[0].length;
        if (d <= dArr2[0]) {
            d = dArr2[0];
        } else {
            int i = length - 1;
            if (d >= dArr2[i]) {
                d = dArr2[i];
            }
        }
        int i2 = 0;
        while (i2 < length - 1) {
            double[] dArr3 = this.f1638a;
            int i3 = i2 + 1;
            if (d <= dArr3[i3]) {
                double d2 = dArr3[i3] - dArr3[i2];
                double d3 = (d - dArr3[i2]) / d2;
                for (int i4 = 0; i4 < length2; i4++) {
                    double[][] dArr4 = this.f1639b;
                    double d4 = dArr4[i2][i4];
                    double d5 = dArr4[i3][i4];
                    double[][] dArr5 = this.f1640c;
                    dArr[i4] = m20964i(d2, d3, d4, d5, dArr5[i2][i4], dArr5[i3][i4]) / d2;
                }
                return;
            }
            i2 = i3;
        }
    }

    @Override // androidx.constraintlayout.motion.utils.CurveFit
    /* renamed from: h */
    public double[] mo20965h() {
        return this.f1638a;
    }
}
