package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.e;
import com.google.android.gms.internal.firebase-auth-api.r0;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.t0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/t0.class */
final class C1211t0 {

    /* renamed from: a */
    private static final Class<?> f3810a;

    /* renamed from: b */
    private static final AbstractC1051f1<?, ?> f3811b;

    /* renamed from: c */
    private static final AbstractC1051f1<?, ?> f3812c;

    /* renamed from: d */
    private static final AbstractC1051f1<?, ?> f3813d;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        f3810a = cls;
        f3811b = m2451C(false);
        f3812c = m2451C(true);
        f3813d = new h1();
    }

    /* renamed from: A */
    public static void m2453A(Class<?> cls) {
        Class<?> cls2;
        if (e.class.isAssignableFrom(cls) || (cls2 = f3810a) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    /* renamed from: B */
    public static void m2452B(int i, List<?> list, C1244wp c1244wp, AbstractC1187r0 abstractC1187r0) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1244wp.m2366D(i, list.get(i2), abstractC1187r0);
        }
    }

    /* renamed from: C */
    private static AbstractC1051f1<?, ?> m2451C(boolean z) {
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
            return (AbstractC1051f1) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    /* renamed from: D */
    static int m2450D(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof t)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.c(list.get(i4).longValue());
                i4++;
            }
        } else {
            t tVar = (t) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.c(tVar.d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: E */
    static int m2449E(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m2450D(list) + (list.size() * vp.I(i));
    }

    /* renamed from: F */
    static int m2448F(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof t)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.c(list.get(i4).longValue());
                i4++;
            }
        } else {
            t tVar = (t) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.c(tVar.d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: G */
    static int m2447G(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2448F(list) + (size * vp.I(i));
    }

    /* renamed from: H */
    static int m2446H(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof t)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.c(vp.i(list.get(i4).longValue()));
                i4++;
            }
        } else {
            t tVar = (t) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.c(vp.i(tVar.d(i2)));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: I */
    static int m2445I(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2446H(list) + (size * vp.I(i));
    }

    /* renamed from: J */
    static int m2444J(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof f)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.J(list.get(i4).intValue());
                i4++;
            }
        } else {
            f fVar = (f) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.J(fVar.d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: K */
    static int m2443K(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2444J(list) + (size * vp.I(i));
    }

    /* renamed from: L */
    static int m2442L(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof f)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.J(list.get(i4).intValue());
                i4++;
            }
        } else {
            f fVar = (f) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.J(fVar.d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: M */
    static int m2441M(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2442L(list) + (size * vp.I(i));
    }

    /* renamed from: N */
    static int m2440N(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof f)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.b(list.get(i4).intValue());
                i4++;
            }
        } else {
            f fVar = (f) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.b(fVar.d(i2));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: O */
    static int m2439O(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2440N(list) + (size * vp.I(i));
    }

    /* renamed from: P */
    static int m2438P(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof f)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += vp.b(vp.h(list.get(i4).intValue()));
                i4++;
            }
        } else {
            f fVar = (f) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += vp.b(vp.h(fVar.d(i2)));
                i2++;
            }
        }
        return i;
    }

    /* renamed from: Q */
    static int m2437Q(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m2438P(list) + (size * vp.I(i));
    }

    /* renamed from: R */
    static int m2436R(List<?> list) {
        return list.size() * 4;
    }

    /* renamed from: S */
    static int m2435S(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (vp.I(i) + 4);
    }

    /* renamed from: T */
    static int m2434T(List<?> list) {
        return list.size() * 8;
    }

    /* renamed from: U */
    static int m2433U(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (vp.I(i) + 8);
    }

    /* renamed from: V */
    static int m2432V(List<?> list) {
        return list.size();
    }

    /* renamed from: W */
    static int m2431W(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (vp.I(i) + 1);
    }

    /* renamed from: X */
    static int m2430X(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int I = vp.I(i) * size;
        int i4 = I;
        if (!(list instanceof AbstractC1159o)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof AbstractC1151mp ? vp.f((AbstractC1151mp) obj) : vp.d((String) obj);
                i3++;
            }
        } else {
            AbstractC1159o abstractC1159o = (AbstractC1159o) list;
            int i5 = I;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object m2705o = abstractC1159o.m2705o(i6);
                i5 += m2705o instanceof AbstractC1151mp ? vp.f((AbstractC1151mp) m2705o) : vp.d((String) m2705o);
                i6++;
            }
        }
        return i2;
    }

    /* renamed from: Y */
    static int m2429Y(int i, Object obj, r0 r0Var) {
        if (obj instanceof C1139m) {
            int I = vp.I(i);
            int m2745a = ((C1139m) obj).m2745a();
            return I + vp.b(m2745a) + m2745a;
        }
        return vp.I(i) + vp.g((f0) obj, r0Var);
    }

    /* renamed from: Z */
    static int m2428Z(int i, List<?> list, AbstractC1187r0 abstractC1187r0) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int I = vp.I(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            I += obj instanceof C1139m ? vp.e((C1139m) obj) : vp.g((f0) obj, abstractC1187r0);
        }
        return I;
    }

    /* renamed from: a */
    public static AbstractC1051f1<?, ?> m2427a() {
        return f3811b;
    }

    /* renamed from: a0 */
    static int m2426a0(int i, List<AbstractC1151mp> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int I = size * vp.I(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            I += vp.f(list.get(i2));
        }
        return I;
    }

    /* renamed from: b */
    public static AbstractC1051f1<?, ?> m2425b() {
        return f3812c;
    }

    /* renamed from: b0 */
    static int m2424b0(int i, List<f0> list, AbstractC1187r0 abstractC1187r0) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += vp.l(i, list.get(i3), abstractC1187r0);
            }
            return i2;
        }
        return 0;
    }

    /* renamed from: c */
    public static AbstractC1051f1<?, ?> m2423c() {
        return f3813d;
    }

    /* renamed from: d */
    static boolean m2422d(Object obj, Object obj2) {
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
    static <T, FT extends AbstractC1050eq<FT>> void m2421e(AbstractC1024bq<FT> abstractC1024bq, T t, T t2) {
        abstractC1024bq.m2986b(t2);
        throw null;
    }

    /* renamed from: f */
    static <T, UT, UB> void m2420f(AbstractC1051f1<UT, UB> abstractC1051f1, T t, T t2) {
        abstractC1051f1.m2929i(t, abstractC1051f1.m2923o(abstractC1051f1.m2928j(t), abstractC1051f1.m2928j(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: g */
    static <UT, UB> UB m2419g(int i, List<Integer> list, AbstractC1096i abstractC1096i, UB ub, AbstractC1051f1<UT, UB> abstractC1051f1) {
        UB ub2;
        if (abstractC1096i == null) {
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
                if (!abstractC1096i.zza()) {
                    ub = m2418h(i, intValue, ub, abstractC1051f1);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (abstractC1096i.zza()) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = m2418h(i, intValue2, ub, abstractC1051f1);
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
    static <UT, UB> UB m2418h(int i, int i2, UB ub, AbstractC1051f1<UT, UB> abstractC1051f1) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = abstractC1051f1.m2931g();
        }
        abstractC1051f1.m2936b(ub2, i, i2);
        return ub2;
    }

    /* renamed from: i */
    static <T> void m2417i(C0998a0 c0998a0, T t, T t2, long j) {
        C1181q1.m2528z(t, j, C0998a0.m3041c(C1181q1.m2529y(t, j), C1181q1.m2529y(t2, j)));
    }

    /* renamed from: j */
    public static void m2416j(int i, List<Double> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2357b(i, list, z);
    }

    /* renamed from: k */
    public static void m2415k(int i, List<Float> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2358a(i, list, z);
    }

    /* renamed from: l */
    public static void m2414l(int i, List<Long> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2361I(i, list, z);
    }

    /* renamed from: m */
    public static void m2413m(int i, List<Long> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2360J(i, list, z);
    }

    /* renamed from: n */
    public static void m2412n(int i, List<Long> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2348k(i, list, z);
    }

    /* renamed from: o */
    public static void m2411o(int i, List<Long> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2359K(i, list, z);
    }

    /* renamed from: p */
    public static void m2410p(int i, List<Long> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2350i(i, list, z);
    }

    /* renamed from: q */
    public static void m2409q(int i, List<Integer> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2363G(i, list, z);
    }

    /* renamed from: r */
    public static void m2408r(int i, List<Integer> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2352g(i, list, z);
    }

    /* renamed from: s */
    public static void m2407s(int i, List<Integer> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2349j(i, list, z);
    }

    /* renamed from: t */
    public static void m2406t(int i, List<Integer> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2362H(i, list, z);
    }

    /* renamed from: u */
    public static void m2405u(int i, List<Integer> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2351h(i, list, z);
    }

    /* renamed from: v */
    public static void m2404v(int i, List<Integer> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2356c(i, list, z);
    }

    /* renamed from: w */
    public static void m2403w(int i, List<Boolean> list, C1244wp c1244wp, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2355d(i, list, z);
    }

    /* renamed from: x */
    public static void m2402x(int i, List<String> list, C1244wp c1244wp) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2354e(i, list);
    }

    /* renamed from: y */
    public static void m2401y(int i, List<AbstractC1151mp> list, C1244wp c1244wp) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        c1244wp.m2353f(i, list);
    }

    /* renamed from: z */
    public static void m2400z(int i, List<?> list, C1244wp c1244wp, AbstractC1187r0 abstractC1187r0) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            c1244wp.m2367C(i, list.get(i2), abstractC1187r0);
        }
    }
}
