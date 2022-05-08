package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionPaths.class */
public class MotionPaths implements Comparable<MotionPaths> {

    /* renamed from: t */
    static String[] f1927t = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: f */
    Easing f1928f;

    /* renamed from: g */
    int f1929g;

    /* renamed from: h */
    float f1930h;

    /* renamed from: i */
    float f1931i;

    /* renamed from: j */
    float f1932j;

    /* renamed from: k */
    float f1933k;

    /* renamed from: l */
    float f1934l;

    /* renamed from: m */
    float f1935m;

    /* renamed from: n */
    float f1936n;

    /* renamed from: o */
    int f1937o;

    /* renamed from: p */
    LinkedHashMap<String, ConstraintAttribute> f1938p;

    /* renamed from: q */
    int f1939q;

    /* renamed from: r */
    double[] f1940r;

    /* renamed from: s */
    double[] f1941s;

    public MotionPaths() {
        this.f1929g = 0;
        this.f1936n = Float.NaN;
        this.f1937o = Key.f1667e;
        this.f1938p = new LinkedHashMap<>();
        this.f1939q = 0;
        this.f1940r = new double[18];
        this.f1941s = new double[18];
    }

    public MotionPaths(int i, int i2, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.f1929g = 0;
        this.f1936n = Float.NaN;
        this.f1937o = Key.f1667e;
        this.f1938p = new LinkedHashMap<>();
        this.f1939q = 0;
        this.f1940r = new double[18];
        this.f1941s = new double[18];
        int i3 = keyPosition.f1740p;
        if (i3 == 1) {
            m20662q(keyPosition, motionPaths, motionPaths2);
        } else if (i3 != 2) {
            m20663p(keyPosition, motionPaths, motionPaths2);
        } else {
            m20661t(i, i2, keyPosition, motionPaths, motionPaths2);
        }
    }

    /* renamed from: e */
    private boolean m20671e(float f, float f2) {
        boolean z = true;
        boolean z2 = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            if (Float.isNaN(f) == Float.isNaN(f2)) {
                z = false;
            }
            return z;
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public void m20673a(ConstraintSet.Constraint constraint) {
        this.f1928f = Easing.m20975c(constraint.f2623c.f2693c);
        ConstraintSet.Motion motion = constraint.f2623c;
        this.f1937o = motion.f2694d;
        this.f1936n = motion.f2697g;
        this.f1929g = motion.f2695e;
        float f = constraint.f2622b.f2702e;
        for (String str : constraint.f2626f.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.f2626f.get(str);
            if (constraintAttribute.m20073c() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.f1938p.put(str, constraintAttribute);
            }
        }
    }

    /* renamed from: b */
    public int compareTo(@NonNull MotionPaths motionPaths) {
        return Float.compare(this.f1931i, motionPaths.f1931i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m20670g(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z) {
        zArr[0] = zArr[0] | m20671e(this.f1931i, motionPaths.f1931i);
        zArr[1] = zArr[1] | m20671e(this.f1932j, motionPaths.f1932j) | z;
        zArr[2] = z | m20671e(this.f1933k, motionPaths.f1933k) | zArr[2];
        zArr[3] = zArr[3] | m20671e(this.f1934l, motionPaths.f1934l);
        zArr[4] = m20671e(this.f1935m, motionPaths.f1935m) | zArr[4];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public void m20669h(double[] dArr, int[] iArr) {
        float f = this.f1931i;
        float f2 = this.f1932j;
        float f3 = this.f1933k;
        float f4 = this.f1934l;
        float f5 = this.f1935m;
        float f6 = this.f1936n;
        int i = 0;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            i = i;
            if (iArr[i2] < 6) {
                dArr[i] = new float[]{f, f2, f3, f4, f5, f6}[iArr[i2]];
                i++;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m20668i(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f1932j;
        float f2 = this.f1933k;
        float f3 = this.f1934l;
        float f4 = this.f1935m;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        fArr[i] = f + (f3 / 2.0f) + 0.0f;
        fArr[i + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public int m20667k(String str, double[] dArr, int i) {
        ConstraintAttribute constraintAttribute = this.f1938p.get(str);
        if (constraintAttribute.m20070f() == 1) {
            dArr[i] = constraintAttribute.m20072d();
            return 1;
        }
        int f = constraintAttribute.m20070f();
        float[] fArr = new float[f];
        constraintAttribute.m20071e(fArr);
        int i2 = 0;
        while (i2 < f) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public int m20666l(String str) {
        return this.f1938p.get(str).m20070f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public void m20665m(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f1932j;
        float f2 = this.f1933k;
        float f3 = this.f1934l;
        float f4 = this.f1935m;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        float f6 = f3 + f;
        float f7 = f4 + f2;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i4 = i + 1;
        fArr[i] = f + 0.0f;
        int i5 = i4 + 1;
        fArr[i4] = f2 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = f6 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f2 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = f6 + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f7 + 0.0f;
        fArr[i9] = f + 0.0f;
        fArr[i9 + 1] = f7 + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m20664o(String str) {
        return this.f1938p.containsKey(str);
    }

    /* renamed from: p */
    void m20663p(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = keyPosition.f1668a / 100.0f;
        this.f1930h = f;
        this.f1929g = keyPosition.f1733i;
        float f2 = Float.isNaN(keyPosition.f1734j) ? f : keyPosition.f1734j;
        float f3 = Float.isNaN(keyPosition.f1735k) ? f : keyPosition.f1735k;
        float f4 = motionPaths2.f1934l;
        float f5 = motionPaths.f1934l;
        float f6 = motionPaths2.f1935m;
        float f7 = motionPaths.f1935m;
        this.f1931i = this.f1930h;
        float f8 = motionPaths.f1932j;
        float f9 = f5 / 2.0f;
        float f10 = motionPaths.f1933k;
        float f11 = f7 / 2.0f;
        float f12 = f4 / 2.0f;
        float f13 = f6 / 2.0f;
        float f14 = (motionPaths2.f1932j + f12) - (f9 + f8);
        float f15 = (motionPaths2.f1933k + f13) - (f10 + f11);
        float f16 = (f4 - f5) * f2;
        float f17 = f16 / 2.0f;
        this.f1932j = (int) ((f8 + (f14 * f)) - f17);
        float f18 = (f6 - f7) * f3;
        float f19 = f18 / 2.0f;
        this.f1933k = (int) ((f10 + (f15 * f)) - f19);
        this.f1934l = (int) (f5 + f16);
        this.f1935m = (int) (f7 + f18);
        float f20 = Float.isNaN(keyPosition.f1736l) ? f : keyPosition.f1736l;
        float f21 = 0.0f;
        float f22 = Float.isNaN(keyPosition.f1739o) ? 0.0f : keyPosition.f1739o;
        if (!Float.isNaN(keyPosition.f1737m)) {
            f = keyPosition.f1737m;
        }
        if (!Float.isNaN(keyPosition.f1738n)) {
            f21 = keyPosition.f1738n;
        }
        this.f1939q = 2;
        this.f1932j = (int) (((motionPaths.f1932j + (f20 * f14)) + (f21 * f15)) - f17);
        this.f1933k = (int) (((motionPaths.f1933k + (f14 * f22)) + (f15 * f)) - f19);
        this.f1928f = Easing.m20975c(keyPosition.f1731g);
        this.f1937o = keyPosition.f1732h;
    }

    /* renamed from: q */
    void m20662q(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5 = keyPosition.f1668a / 100.0f;
        this.f1930h = f5;
        this.f1929g = keyPosition.f1733i;
        float f6 = Float.isNaN(keyPosition.f1734j) ? f5 : keyPosition.f1734j;
        float f7 = Float.isNaN(keyPosition.f1735k) ? f5 : keyPosition.f1735k;
        float f8 = motionPaths2.f1934l;
        float f9 = motionPaths.f1934l;
        float f10 = motionPaths2.f1935m;
        float f11 = motionPaths.f1935m;
        this.f1931i = this.f1930h;
        if (!Float.isNaN(keyPosition.f1736l)) {
            f5 = keyPosition.f1736l;
        }
        float f12 = motionPaths.f1932j;
        float f13 = motionPaths.f1934l / 2.0f;
        float f14 = motionPaths.f1933k;
        float f15 = motionPaths.f1935m / 2.0f;
        float f16 = (motionPaths2.f1932j + (motionPaths2.f1934l / 2.0f)) - (f13 + f12);
        float f17 = (motionPaths2.f1933k + (motionPaths2.f1935m / 2.0f)) - (f15 + f14);
        float f18 = f16 * f5;
        float f19 = ((f8 - f9) * f6) / 2.0f;
        this.f1932j = (int) ((f12 + f18) - f19);
        float f20 = f5 * f17;
        float f21 = ((f10 - f11) * f7) / 2.0f;
        this.f1933k = (int) ((f14 + f20) - f21);
        this.f1934l = (int) (f + f3);
        this.f1935m = (int) (f2 + f4);
        float f22 = Float.isNaN(keyPosition.f1737m) ? 0.0f : keyPosition.f1737m;
        float f23 = -f17;
        this.f1939q = 1;
        float f24 = (int) ((motionPaths.f1932j + f18) - f19);
        this.f1932j = f24;
        float f25 = (int) ((motionPaths.f1933k + f20) - f21);
        this.f1933k = f25;
        this.f1932j = f24 + (f23 * f22);
        this.f1933k = f25 + (f16 * f22);
        this.f1928f = Easing.m20975c(keyPosition.f1731g);
        this.f1937o = keyPosition.f1732h;
    }

    /* renamed from: t */
    void m20661t(int i, int i2, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = keyPosition.f1668a / 100.0f;
        this.f1930h = f;
        this.f1929g = keyPosition.f1733i;
        float f2 = Float.isNaN(keyPosition.f1734j) ? f : keyPosition.f1734j;
        float f3 = Float.isNaN(keyPosition.f1735k) ? f : keyPosition.f1735k;
        float f4 = motionPaths2.f1934l;
        float f5 = motionPaths.f1934l;
        float f6 = motionPaths2.f1935m;
        float f7 = motionPaths.f1935m;
        this.f1931i = this.f1930h;
        float f8 = motionPaths.f1932j;
        float f9 = f5 / 2.0f;
        float f10 = motionPaths.f1933k;
        float f11 = f7 / 2.0f;
        float f12 = motionPaths2.f1932j;
        float f13 = f4 / 2.0f;
        float f14 = motionPaths2.f1933k;
        float f15 = f6 / 2.0f;
        float f16 = (f4 - f5) * f2;
        this.f1932j = (int) ((f8 + (((f12 + f13) - (f9 + f8)) * f)) - (f16 / 2.0f));
        float f17 = (f6 - f7) * f3;
        this.f1933k = (int) ((f10 + (((f14 + f15) - (f10 + f11)) * f)) - (f17 / 2.0f));
        this.f1934l = (int) (f5 + f16);
        this.f1935m = (int) (f7 + f17);
        this.f1939q = 3;
        if (!Float.isNaN(keyPosition.f1736l)) {
            this.f1932j = (int) (keyPosition.f1736l * ((int) (i - this.f1934l)));
        }
        if (!Float.isNaN(keyPosition.f1737m)) {
            this.f1933k = (int) (keyPosition.f1737m * ((int) (i2 - this.f1935m)));
        }
        this.f1928f = Easing.m20975c(keyPosition.f1731g);
        this.f1937o = keyPosition.f1732h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public void m20660w(float f, float f2, float f3, float f4) {
        this.f1932j = f;
        this.f1933k = f2;
        this.f1934l = f3;
        this.f1935m = f4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public void m20659x(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f4) / 2.0f);
        float f9 = f5 - ((0.0f * f6) / 2.0f);
        fArr[0] = (f8 * (1.0f - f)) + (((f4 * 1.0f) + f8) * f) + 0.0f;
        fArr[1] = (f9 * (1.0f - f2)) + (((f6 * 1.0f) + f9) * f2) + 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public void m20658y(View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f = this.f1932j;
        float f2 = this.f1933k;
        float f3 = this.f1934l;
        float f4 = this.f1935m;
        if (iArr.length != 0 && this.f1940r.length <= iArr[iArr.length - 1]) {
            int i = iArr[iArr.length - 1] + 1;
            this.f1940r = new double[i];
            this.f1941s = new double[i];
        }
        Arrays.fill(this.f1940r, Double.NaN);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.f1940r[iArr[i2]] = dArr[i2];
            this.f1941s[iArr[i2]] = dArr2[i2];
        }
        int i3 = 0;
        float f5 = Float.NaN;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        while (true) {
            double[] dArr4 = this.f1940r;
            if (i3 >= dArr4.length) {
                break;
            }
            double d = 0.0d;
            if (!Double.isNaN(dArr4[i3]) || !(dArr3 == null || dArr3[i3] == 0.0d)) {
                if (dArr3 != null) {
                    d = dArr3[i3];
                }
                if (!Double.isNaN(this.f1940r[i3])) {
                    d = this.f1940r[i3] + d;
                }
                float f10 = (float) d;
                float f11 = (float) this.f1941s[i3];
                if (i3 == 1) {
                    f6 = f11;
                    f = f10;
                } else if (i3 == 2) {
                    f2 = f10;
                    f8 = f11;
                } else if (i3 == 3) {
                    f3 = f10;
                    f7 = f11;
                } else if (i3 == 4) {
                    f4 = f10;
                    f9 = f11;
                } else if (i3 == 5) {
                    f5 = f10;
                }
            }
            i3++;
        }
        if (!Float.isNaN(f5)) {
            float f12 = Float.NaN;
            if (Float.isNaN(Float.NaN)) {
                f12 = 0.0f;
            }
            view.setRotation((float) (f12 + f5 + Math.toDegrees(Math.atan2(f8 + (f9 / 2.0f), f6 + (f7 / 2.0f)))));
        } else if (!Float.isNaN(Float.NaN)) {
            view.setRotation(Float.NaN);
        }
        float f13 = f + 0.5f;
        int i4 = (int) f13;
        float f14 = f2 + 0.5f;
        int i5 = (int) f14;
        int i6 = (int) (f13 + f3);
        int i7 = (int) (f14 + f4);
        int i8 = i6 - i4;
        int i9 = i7 - i5;
        if ((i8 == view.getMeasuredWidth() && i9 == view.getMeasuredHeight()) ? false : true) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i8, 1073741824), View.MeasureSpec.makeMeasureSpec(i9, 1073741824));
        }
        view.layout(i4, i5, i6, i7);
    }
}
