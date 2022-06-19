package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.List;
/* renamed from: com.google.android.gms.internal.measurement.u5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/u5.class */
final class C1395u5 {

    /* renamed from: a */
    private final s5 f3964a;

    private C1395u5(s5 s5Var) {
        C1396u6.m1907b(s5Var, "output");
        this.f3964a = s5Var;
        s5Var.a = this;
    }

    /* renamed from: l */
    public static C1395u5 m1923l(s5 s5Var) {
        C1395u5 c1395u5 = s5Var.a;
        return c1395u5 != null ? c1395u5 : new C1395u5(s5Var);
    }

    /* renamed from: A */
    public final void m1945A(int i, int i2) throws IOException {
        this.f3964a.i(i, (i2 >> 31) ^ (i2 + i2));
    }

    /* renamed from: B */
    public final void m1944B(int i, long j) throws IOException {
        this.f3964a.k(i, (j >> 63) ^ (j + j));
    }

    /* renamed from: C */
    public final void m1943C(int i, Object obj, AbstractC1287a8 abstractC1287a8) throws IOException {
        w4 w4Var = (o7) obj;
        r5 r5Var = this.f3964a;
        r5Var.r((i << 3) | 2);
        w4 w4Var2 = w4Var;
        int h = w4Var2.h();
        int i2 = h;
        if (h == -1) {
            i2 = abstractC1287a8.m2242a(w4Var2);
            w4Var2.i(i2);
        }
        r5Var.r(i2);
        abstractC1287a8.m2236g(w4Var, ((s5) r5Var).a);
    }

    /* renamed from: D */
    public final void m1942D(int i, Object obj, AbstractC1287a8 abstractC1287a8) throws IOException {
        s5 s5Var = this.f3964a;
        s5Var.g(i, 3);
        abstractC1287a8.m2236g((o7) obj, s5Var.a);
        s5Var.g(i, 4);
    }

    /* renamed from: E */
    public final void m1941E(int i) throws IOException {
        this.f3964a.g(i, 3);
    }

    /* renamed from: F */
    public final void m1940F(int i) throws IOException {
        this.f3964a.g(i, 4);
    }

    /* renamed from: G */
    public final void m1939G(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += s5.z(list.get(i4).intValue());
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.q(list.get(i5).intValue());
        }
    }

    /* renamed from: H */
    public final void m1938H(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.s(list.get(i5).intValue());
        }
    }

    /* renamed from: I */
    public final void m1937I(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += s5.B(list.get(i4).longValue());
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.t(list.get(i5).longValue());
        }
    }

    /* renamed from: J */
    public final void m1936J(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.k(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += s5.B(list.get(i4).longValue());
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.t(list.get(i5).longValue());
        }
    }

    /* renamed from: K */
    public final void m1935K(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.u(list.get(i5).longValue());
        }
    }

    /* renamed from: a */
    public final void m1934a(int i, List<Float> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.j(i, Float.floatToRawIntBits(list.get(i2).floatValue()));
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).floatValue();
            i3 += 4;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.s(Float.floatToRawIntBits(list.get(i5).floatValue()));
        }
    }

    /* renamed from: b */
    public final void m1933b(int i, List<Double> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.l(i, Double.doubleToRawLongBits(list.get(i2).doubleValue()));
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).doubleValue();
            i3 += 8;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.u(Double.doubleToRawLongBits(list.get(i5).doubleValue()));
        }
    }

    /* renamed from: c */
    public final void m1932c(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.h(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += s5.z(list.get(i4).intValue());
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.q(list.get(i5).intValue());
        }
    }

    /* renamed from: d */
    public final void m1931d(int i, List<Boolean> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.m(i, list.get(i2).booleanValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).booleanValue();
            i3++;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.p(list.get(i5).booleanValue() ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: e */
    public final void m1930e(int i, List<String> list) throws IOException {
        if (!(list instanceof AbstractC1414y6)) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.n(i, list.get(i2));
            }
            return;
        }
        AbstractC1414y6 abstractC1414y6 = (AbstractC1414y6) list;
        for (int i3 = 0; i3 < list.size(); i3++) {
            Object m1871o = abstractC1414y6.m1871o(i3);
            if (m1871o instanceof String) {
                this.f3964a.n(i, (String) m1871o);
            } else {
                this.f3964a.o(i, (AbstractC1351m5) m1871o);
            }
        }
    }

    /* renamed from: f */
    public final void m1929f(int i, List<AbstractC1351m5> list) throws IOException {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f3964a.o(i, list.get(i2));
        }
    }

    /* renamed from: g */
    public final void m1928g(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.i(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            i3 += s5.A(list.get(i4).intValue());
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.r(list.get(i5).intValue());
        }
    }

    /* renamed from: h */
    public final void m1927h(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.j(i, list.get(i2).intValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).intValue();
            i3 += 4;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.s(list.get(i5).intValue());
        }
    }

    /* renamed from: i */
    public final void m1926i(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                this.f3964a.l(i, list.get(i2).longValue());
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            list.get(i4).longValue();
            i3 += 8;
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            this.f3964a.u(list.get(i5).longValue());
        }
    }

    /* renamed from: j */
    public final void m1925j(int i, List<Integer> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                s5 s5Var = this.f3964a;
                int intValue = list.get(i2).intValue();
                s5Var.i(i, (intValue >> 31) ^ (intValue + intValue));
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            int intValue2 = list.get(i4).intValue();
            i3 += s5.A((intValue2 >> 31) ^ (intValue2 + intValue2));
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            s5 s5Var2 = this.f3964a;
            int intValue3 = list.get(i5).intValue();
            s5Var2.r((intValue3 >> 31) ^ (intValue3 + intValue3));
        }
    }

    /* renamed from: k */
    public final void m1924k(int i, List<Long> list, boolean z) throws IOException {
        if (!z) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                s5 s5Var = this.f3964a;
                long longValue = list.get(i2).longValue();
                s5Var.k(i, (longValue >> 63) ^ (longValue + longValue));
            }
            return;
        }
        this.f3964a.g(i, 2);
        int i3 = 0;
        for (int i4 = 0; i4 < list.size(); i4++) {
            long longValue2 = list.get(i4).longValue();
            i3 += s5.B((longValue2 >> 63) ^ (longValue2 + longValue2));
        }
        this.f3964a.r(i3);
        for (int i5 = 0; i5 < list.size(); i5++) {
            s5 s5Var2 = this.f3964a;
            long longValue3 = list.get(i5).longValue();
            s5Var2.t((longValue3 >> 63) ^ (longValue3 + longValue3));
        }
    }

    /* renamed from: m */
    public final void m1922m(int i, int i2) throws IOException {
        this.f3964a.j(i, i2);
    }

    /* renamed from: n */
    public final void m1921n(int i, long j) throws IOException {
        this.f3964a.k(i, j);
    }

    /* renamed from: o */
    public final void m1920o(int i, long j) throws IOException {
        this.f3964a.l(i, j);
    }

    /* renamed from: p */
    public final void m1919p(int i, float f) throws IOException {
        this.f3964a.j(i, Float.floatToRawIntBits(f));
    }

    /* renamed from: q */
    public final void m1918q(int i, double d) throws IOException {
        this.f3964a.l(i, Double.doubleToRawLongBits(d));
    }

    /* renamed from: r */
    public final void m1917r(int i, int i2) throws IOException {
        this.f3964a.h(i, i2);
    }

    /* renamed from: s */
    public final void m1916s(int i, long j) throws IOException {
        this.f3964a.k(i, j);
    }

    /* renamed from: t */
    public final void m1915t(int i, int i2) throws IOException {
        this.f3964a.h(i, i2);
    }

    /* renamed from: u */
    public final void m1914u(int i, long j) throws IOException {
        this.f3964a.l(i, j);
    }

    /* renamed from: v */
    public final void m1913v(int i, int i2) throws IOException {
        this.f3964a.j(i, i2);
    }

    /* renamed from: w */
    public final void m1912w(int i, boolean z) throws IOException {
        this.f3964a.m(i, z);
    }

    /* renamed from: x */
    public final void m1911x(int i, String str) throws IOException {
        this.f3964a.n(i, str);
    }

    /* renamed from: y */
    public final void m1910y(int i, AbstractC1351m5 abstractC1351m5) throws IOException {
        this.f3964a.o(i, abstractC1351m5);
    }

    /* renamed from: z */
    public final void m1909z(int i, int i2) throws IOException {
        this.f3964a.i(i, i2);
    }
}
