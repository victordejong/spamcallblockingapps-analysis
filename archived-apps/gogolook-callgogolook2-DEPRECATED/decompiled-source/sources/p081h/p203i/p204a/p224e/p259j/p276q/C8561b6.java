package p081h.p203i.p204a.p224e.p259j.p276q;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* renamed from: h.i.a.e.j.q.b6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/b6.class */
public final class C8561b6 {

    /* renamed from: a */
    public static final Class<?> f19614a = m17795d();

    /* renamed from: b */
    public static final AbstractC8722r6<?, ?> f19615b = m17808a(false);

    /* renamed from: c */
    public static final AbstractC8722r6<?, ?> f19616c = m17808a(true);

    /* renamed from: d */
    public static final AbstractC8722r6<?, ?> f19617d = new C8740t6();

    /* renamed from: a */
    public static int m17822a(int i, Object obj, AbstractC8797z5 z5Var) {
        return obj instanceof C8720r4 ? AbstractC8632i3.m17545a(i, (C8720r4) obj) : AbstractC8632i3.m17530b(i, (AbstractC8648j5) obj, z5Var);
    }

    /* renamed from: a */
    public static int m17821a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int e = AbstractC8632i3.m17512e(i) * size;
        int i5 = e;
        if (!(list instanceof AbstractC8738t4)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof AbstractC8736t2 ? AbstractC8632i3.m17541a((AbstractC8736t2) obj) : AbstractC8632i3.m17540a((String) obj);
                i3++;
            }
        } else {
            AbstractC8738t4 t4Var = (AbstractC8738t4) list;
            int i6 = e;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object a = t4Var.mo17118a(i4);
                i6 += a instanceof AbstractC8736t2 ? AbstractC8632i3.m17541a((AbstractC8736t2) a) : AbstractC8632i3.m17540a((String) a);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m17816a(int i, List<?> list, AbstractC8797z5 z5Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = AbstractC8632i3.m17512e(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            e += obj instanceof C8720r4 ? AbstractC8632i3.m17542a((C8720r4) obj) : AbstractC8632i3.m17543a((AbstractC8648j5) obj, z5Var);
        }
        return e;
    }

    /* renamed from: a */
    public static int m17815a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m17779h(list) + (list.size() * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: a */
    public static int m17809a(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8582d4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17492k(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8582d4 d4Var = (C8582d4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17492k(d4Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC8722r6<?, ?> m17824a() {
        return f19615b;
    }

    /* renamed from: a */
    public static AbstractC8722r6<?, ?> m17808a(boolean z) {
        try {
            Class<?> e = m17791e();
            if (e == null) {
                return null;
            }
            return (AbstractC8722r6) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static <UT, UB> UB m17823a(int i, int i2, UB ub, AbstractC8722r6<UT, UB> r6Var) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = r6Var.mo17146a();
        }
        r6Var.mo17142a((AbstractC8722r6<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* renamed from: a */
    public static <UT, UB> UB m17820a(int i, List<Integer> list, AbstractC8622h4 h4Var, UB ub, AbstractC8722r6<UT, UB> r6Var) {
        UB ub2;
        if (h4Var == null) {
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
                if (!h4Var.mo17426a(intValue)) {
                    ub = (UB) m17823a(i, intValue, ub, r6Var);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (h4Var.mo17426a(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) m17823a(i, intValue2, ub, r6Var);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }

    /* renamed from: a */
    public static void m17819a(int i, List<String> list, AbstractC8677m7 m7Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17368b(i, list);
        }
    }

    /* renamed from: a */
    public static void m17818a(int i, List<?> list, AbstractC8677m7 m7Var, AbstractC8797z5 z5Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17375a(i, list, z5Var);
        }
    }

    /* renamed from: a */
    public static void m17817a(int i, List<Double> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17348m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T> void m17814a(AbstractC8592e5 e5Var, T t, T t2, long j) {
        C8776x6.m17052a(t, j, e5Var.mo17670b(C8776x6.m17028f(t, j), C8776x6.m17028f(t2, j)));
    }

    /* renamed from: a */
    public static <T, FT extends AbstractC8755v3<FT>> void m17813a(AbstractC8710q3<FT> q3Var, T t, T t2) {
        C8737t3<FT> a = q3Var.mo17223a(t2);
        if (!a.m17159b()) {
            q3Var.mo17220b(t).m17164a(a);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m17812a(AbstractC8722r6<UT, UB> r6Var, T t, T t2) {
        r6Var.mo17137a(t, r6Var.mo17131c(r6Var.mo17132c(t), r6Var.mo17132c(t2)));
    }

    /* renamed from: a */
    public static void m17811a(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC8568c4.class.isAssignableFrom(cls) && (cls2 = f19614a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m17810a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m17806b(int i, List<AbstractC8736t2> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = size * AbstractC8632i3.m17512e(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            e += AbstractC8632i3.m17541a(list.get(i2));
        }
        return e;
    }

    /* renamed from: b */
    public static int m17802b(int i, List<AbstractC8648j5> list, AbstractC8797z5 z5Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC8632i3.m17519c(i, list.get(i3), z5Var);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m17801b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m17776i(list) + (size * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: b */
    public static int m17800b(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8582d4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17509f(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8582d4 d4Var = (C8582d4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17509f(d4Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC8722r6<?, ?> m17807b() {
        return f19616c;
    }

    /* renamed from: b */
    public static void m17805b(int i, List<AbstractC8736t2> list, AbstractC8677m7 m7Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17376a(i, list);
        }
    }

    /* renamed from: b */
    public static void m17804b(int i, List<?> list, AbstractC8677m7 m7Var, AbstractC8797z5 z5Var) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17367b(i, list, z5Var);
        }
    }

    /* renamed from: b */
    public static void m17803b(int i, List<Float> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17347n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m17797c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m17773j(list) + (size * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: c */
    public static int m17796c(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8582d4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17505g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8582d4 d4Var = (C8582d4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17505g(d4Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC8722r6<?, ?> m17799c() {
        return f19617d;
    }

    /* renamed from: c */
    public static void m17798c(int i, List<Long> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17366b(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m17793d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m17809a(list) + (size * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: d */
    public static int m17792d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8582d4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17501h(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8582d4 d4Var = (C8582d4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17501h(d4Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m17795d() {
        try {
            return Class.forName("h.i.g.v");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m17794d(int i, List<Long> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17349l(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m17789e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m17800b(list) + (size * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: e */
    public static int m17788e(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: e */
    public static Class<?> m17791e() {
        try {
            return Class.forName("h.i.g.g1");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m17790e(int i, List<Long> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17360d(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m17786f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m17796c(list) + (size * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: f */
    public static int m17785f(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: f */
    public static void m17787f(int i, List<Long> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17350k(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m17783g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m17792d(list) + (size * AbstractC8632i3.m17512e(i));
    }

    /* renamed from: g */
    public static int m17782g(List<?> list) {
        return list.size();
    }

    /* renamed from: g */
    public static void m17784g(int i, List<Long> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17353h(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m17780h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC8632i3.m17496i(i, 0);
    }

    /* renamed from: h */
    public static int m17779h(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8787y4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17513d(list.get(i2).longValue());
                i2++;
            }
        } else {
            C8787y4 y4Var = (C8787y4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17513d(y4Var.m16996g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: h */
    public static void m17781h(int i, List<Integer> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17374a(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m17777i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC8632i3.m17503g(i, 0L);
    }

    /* renamed from: i */
    public static int m17776i(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8787y4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17510e(list.get(i2).longValue());
                i2++;
            }
        } else {
            C8787y4 y4Var = (C8787y4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17510e(y4Var.m16996g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: i */
    public static void m17778i(int i, List<Integer> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17352i(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m17774j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC8632i3.m17527b(i, true);
    }

    /* renamed from: j */
    public static int m17773j(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8787y4)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8632i3.m17506f(list.get(i2).longValue());
                i2++;
            }
        } else {
            C8787y4 y4Var = (C8787y4) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8632i3.m17506f(y4Var.m16996g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: j */
    public static void m17775j(int i, List<Integer> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17357e(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m17772k(int i, List<Integer> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17363c(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m17771l(int i, List<Integer> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17351j(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m17770m(int i, List<Integer> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17354g(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m17769n(int i, List<Boolean> list, AbstractC8677m7 m7Var, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            m7Var.mo17355f(i, list, z);
        }
    }
}
