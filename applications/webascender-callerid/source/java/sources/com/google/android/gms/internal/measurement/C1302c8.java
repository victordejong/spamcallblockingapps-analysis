package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.measurement.c8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/c8.class */
final class C1302c8 {

    /* renamed from: a */
    private static final Class<?> f3892a;

    /* renamed from: b */
    private static final AbstractC1360n8<?, ?> f3893b;

    /* renamed from: c */
    private static final AbstractC1360n8<?, ?> f3894c;

    /* renamed from: d */
    private static final AbstractC1360n8<?, ?> f3895d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f3892a = cls;
        f3893b = m2207C(false);
        f3894c = m2207C(true);
        f3895d = new p8();
    }

    /* renamed from: A */
    public static void m2209A(Class<?> cls) {
        Class<?> cls2;
        if (l6.class.isAssignableFrom(cls) || (cls2 = f3892a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: B */
    public static void m2208B(int i, List<?> list, C1395u5 c1395u5, AbstractC1287a8 abstractC1287a8) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1395u5.m1942D(i, list.get(i2), abstractC1287a8);
        }
    }

    /* renamed from: C */
    private static AbstractC1360n8<?, ?> m2207C(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (AbstractC1360n8) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: D */
    static int m2206D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof d7)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += s5.B(list.get(i4).longValue());
                i4++;
            }
        } else {
            d7 d7Var = (d7) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += s5.B(d7Var.k0(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: E */
    static int m2205E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m2206D(list) + (list.size() * s5.y(i));
    }

    /* renamed from: F */
    static int m2204F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof d7)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += s5.B(list.get(i4).longValue());
                i4++;
            }
        } else {
            d7 d7Var = (d7) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += s5.B(d7Var.k0(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: G */
    static int m2203G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2204F(list) + (size * s5.y(i));
    }

    /* renamed from: H */
    static int m2202H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof d7)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += s5.B((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            d7 d7Var = (d7) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long k0 = d7Var.k0(i2);
                i5 += s5.B((k0 >> 63) ^ (k0 + k0));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: I */
    static int m2201I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2202H(list) + (size * s5.y(i));
    }

    /* renamed from: J */
    static int m2200J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof m6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += s5.z(list.get(i4).intValue());
                i4++;
            }
        } else {
            m6 m6Var = (m6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += s5.z(m6Var.g(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: K */
    static int m2199K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2200J(list) + (size * s5.y(i));
    }

    /* renamed from: L */
    static int m2198L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof m6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += s5.z(list.get(i4).intValue());
                i4++;
            }
        } else {
            m6 m6Var = (m6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += s5.z(m6Var.g(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: M */
    static int m2197M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2198L(list) + (size * s5.y(i));
    }

    /* renamed from: N */
    static int m2196N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof m6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += s5.A(list.get(i4).intValue());
                i4++;
            }
        } else {
            m6 m6Var = (m6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += s5.A(m6Var.g(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: O */
    static int m2195O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2196N(list) + (size * s5.y(i));
    }

    /* renamed from: P */
    static int m2194P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof m6)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += s5.A((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            m6 m6Var = (m6) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int g = m6Var.g(i2);
                i5 += s5.A((g >> 31) ^ (g + g));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    static int m2193Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2194P(list) + (size * s5.y(i));
    }

    /* renamed from: R */
    static int m2192R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: S */
    static int m2191S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (s5.A(i << 3) + 4);
    }

    /* renamed from: T */
    static int m2190T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: U */
    static int m2189U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (s5.A(i << 3) + 8);
    }

    /* renamed from: V */
    static int m2188V(List<?> list) {
        return list.size();
    }

    /* renamed from: W */
    static int m2187W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (s5.A(i << 3) + 1);
    }

    /* renamed from: X */
    static int m2186X(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int y = s5.y(i) * size;
        int i4 = y;
        if (!(list instanceof AbstractC1414y6)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof AbstractC1351m5 ? s5.a((AbstractC1351m5) obj) : s5.C((String) obj);
                i3++;
            }
        } else {
            AbstractC1414y6 abstractC1414y6 = (AbstractC1414y6) list;
            int i5 = y;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object m1871o = abstractC1414y6.m1871o(i6);
                i5 += m1871o instanceof AbstractC1351m5 ? s5.a((AbstractC1351m5) m1871o) : s5.C((String) m1871o);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: Y */
    static int m2185Y(int i, Object obj, AbstractC1287a8 abstractC1287a8) {
        if (obj instanceof C1404w6) {
            int A = s5.A(i << 3);
            int m1895a = ((C1404w6) obj).m1895a();
            return A + s5.A(m1895a) + m1895a;
        }
        return s5.A(i << 3) + s5.b((o7) obj, abstractC1287a8);
    }

    /* renamed from: Z */
    static int m2184Z(int i, List<?> list, AbstractC1287a8 abstractC1287a8) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = s5.y(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            y += obj instanceof C1404w6 ? s5.D((C1404w6) obj) : s5.b((o7) obj, abstractC1287a8);
        }
        return y;
    }

    /* renamed from: a */
    public static AbstractC1360n8<?, ?> m2183a() {
        return f3893b;
    }

    /* renamed from: a0 */
    static int m2182a0(int i, List<AbstractC1351m5> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int y = size * s5.y(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            y += s5.a(list.get(i2));
        }
        return y;
    }

    /* renamed from: b */
    public static AbstractC1360n8<?, ?> m2181b() {
        return f3894c;
    }

    /* renamed from: b0 */
    static int m2180b0(int i, List<o7> list, AbstractC1287a8 abstractC1287a8) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += s5.e(i, list.get(i3), abstractC1287a8);
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: c */
    public static AbstractC1360n8<?, ?> m2179c() {
        return f3895d;
    }

    /* renamed from: d */
    static boolean m2178d(Object obj, Object obj2) {
        boolean z = false;
        if (obj != obj2) {
            if (obj != null) {
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: e */
    static <T, FT extends AbstractC1300c6<FT>> void m2177e(AbstractC1420z5<FT> abstractC1420z5, T t, T t2) {
        abstractC1420z5.m1846b(t2);
        throw null;
    }

    /* renamed from: f */
    static <T, UT, UB> void m2176f(AbstractC1360n8<UT, UB> abstractC1360n8, T t, T t2) {
        abstractC1360n8.m2028c(t, abstractC1360n8.m2025f(abstractC1360n8.m2027d(t), abstractC1360n8.m2027d(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    static <UT, UB> UB m2175g(int i, List<Integer> list, AbstractC1370p6 abstractC1370p6, UB ub, AbstractC1360n8<UT, UB> abstractC1360n8) {
        UB ub2;
        if (abstractC1370p6 == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                if (!abstractC1370p6.m2006c(intValue)) {
                    ub = m2174h(i, intValue, ub, abstractC1360n8);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (abstractC1370p6.m2006c(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m2174h(i, intValue2, ub, abstractC1360n8);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return ub;
            }
            ub2 = ub;
        }
        return ub2;
    }

    /* renamed from: h */
    static <UT, UB> UB m2174h(int i, int i2, UB ub, AbstractC1360n8<UT, UB> abstractC1360n8) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = abstractC1360n8.m2029b();
        }
        abstractC1360n8.m2030a(ub2, i, i2);
        return ub2;
    }

    /* renamed from: i */
    static <T> void m2173i(C1339j7 c1339j7, T t, T t2, long j) {
        C1422z8.m1808z(t, j, C1339j7.m2072b(C1422z8.m1809y(t, j), C1422z8.m1809y(t2, j)));
    }

    /* renamed from: j */
    public static void m2172j(int i, List<Double> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1933b(i, list, z);
    }

    /* renamed from: k */
    public static void m2171k(int i, List<Float> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1934a(i, list, z);
    }

    /* renamed from: l */
    public static void m2170l(int i, List<Long> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1937I(i, list, z);
    }

    /* renamed from: m */
    public static void m2169m(int i, List<Long> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1936J(i, list, z);
    }

    /* renamed from: n */
    public static void m2168n(int i, List<Long> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1924k(i, list, z);
    }

    /* renamed from: o */
    public static void m2167o(int i, List<Long> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1935K(i, list, z);
    }

    /* renamed from: p */
    public static void m2166p(int i, List<Long> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1926i(i, list, z);
    }

    /* renamed from: q */
    public static void m2165q(int i, List<Integer> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1939G(i, list, z);
    }

    /* renamed from: r */
    public static void m2164r(int i, List<Integer> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1928g(i, list, z);
    }

    /* renamed from: s */
    public static void m2163s(int i, List<Integer> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1925j(i, list, z);
    }

    /* renamed from: t */
    public static void m2162t(int i, List<Integer> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1938H(i, list, z);
    }

    /* renamed from: u */
    public static void m2161u(int i, List<Integer> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1927h(i, list, z);
    }

    /* renamed from: v */
    public static void m2160v(int i, List<Integer> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1932c(i, list, z);
    }

    /* renamed from: w */
    public static void m2159w(int i, List<Boolean> list, C1395u5 c1395u5, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1931d(i, list, z);
    }

    /* renamed from: x */
    public static void m2158x(int i, List<String> list, C1395u5 c1395u5) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1930e(i, list);
    }

    /* renamed from: y */
    public static void m2157y(int i, List<AbstractC1351m5> list, C1395u5 c1395u5) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1395u5.m1929f(i, list);
    }

    /* renamed from: z */
    public static void m2156z(int i, List<?> list, C1395u5 c1395u5, AbstractC1287a8 abstractC1287a8) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1395u5.m1943C(i, list.get(i2), abstractC1287a8);
        }
    }
}
