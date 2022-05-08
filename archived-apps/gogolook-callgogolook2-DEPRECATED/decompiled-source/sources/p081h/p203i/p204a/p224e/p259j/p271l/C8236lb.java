package p081h.p203i.p204a.p224e.p259j.p271l;

import java.io.IOException;
import java.util.List;
/* renamed from: h.i.a.e.j.l.lb */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/lb.class */
public final class C8236lb {

    /* renamed from: a */
    public static final Class<?> f19079a = m18309d();

    /* renamed from: b */
    public static final AbstractC8071e<?, ?> f19080b = m18322a(false);

    /* renamed from: c */
    public static final AbstractC8071e<?, ?> f19081c = m18322a(true);

    /* renamed from: d */
    public static final AbstractC8071e<?, ?> f19082d = new C8110g();

    /* renamed from: a */
    public static int m18335a(int i, Object obj, AbstractC8212kb kbVar) {
        return obj instanceof C8069da ? AbstractC8447x8.m18076a(i, (C8069da) obj) : AbstractC8447x8.m18064b(i, (AbstractC8390ua) obj, kbVar);
    }

    /* renamed from: a */
    public static int m18334a(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int e = AbstractC8447x8.m18046e(i) * size;
        int i5 = e;
        if (!(list instanceof AbstractC8108fa)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof AbstractC8209k8 ? AbstractC8447x8.m18060b((AbstractC8209k8) obj) : AbstractC8447x8.m18058b((String) obj);
                i3++;
            }
        } else {
            AbstractC8108fa faVar = (AbstractC8108fa) list;
            int i6 = e;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object a = faVar.mo18458a(i4);
                i6 += a instanceof AbstractC8209k8 ? AbstractC8447x8.m18060b((AbstractC8209k8) a) : AbstractC8447x8.m18058b((String) a);
                i4++;
            }
        }
        return i2;
    }

    /* renamed from: a */
    public static int m18333a(int i, List<?> list, AbstractC8212kb kbVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = AbstractC8447x8.m18046e(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            e += obj instanceof C8069da ? AbstractC8447x8.m18075a((C8069da) obj) : AbstractC8447x8.m18074a((AbstractC8390ua) obj, kbVar);
        }
        return e;
    }

    /* renamed from: a */
    public static int m18329a(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return m18323a(list) + (list.size() * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: a */
    public static int m18323a(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8169ia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18029i(list.get(i2).longValue());
                i2++;
            }
        } else {
            C8169ia iaVar = (C8169ia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18029i(iaVar.m18465g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: a */
    public static AbstractC8071e<?, ?> m18336a() {
        return f19080b;
    }

    /* renamed from: a */
    public static AbstractC8071e<?, ?> m18322a(boolean z) {
        try {
            Class<?> e = m18305e();
            if (e == null) {
                return null;
            }
            return (AbstractC8071e) e.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m18332a(int i, List<String> list, AbstractC8468z zVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17937b(i, list);
        }
    }

    /* renamed from: a */
    public static void m18331a(int i, List<?> list, AbstractC8468z zVar, AbstractC8212kb kbVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17936b(i, list, kbVar);
        }
    }

    /* renamed from: a */
    public static void m18330a(int i, List<Double> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17917m(i, list, z);
        }
    }

    /* renamed from: a */
    public static <T, FT extends AbstractC8127g9<FT>> void m18328a(AbstractC8068d9<FT> d9Var, T t, T t2) {
        C8087e9<FT> a = d9Var.mo18616a(t2);
        if (!a.f18818a.isEmpty()) {
            d9Var.mo18614b(t).m18578a(a);
        }
    }

    /* renamed from: a */
    public static <T, UT, UB> void m18327a(AbstractC8071e<UT, UB> eVar, T t, T t2) {
        eVar.mo18535a(t, eVar.mo18532b(eVar.mo18534b(t), eVar.mo18534b(t2)));
    }

    /* renamed from: a */
    public static <T> void m18326a(AbstractC8339ra raVar, T t, T t2, long j) {
        C8190k.m18433a(t, j, raVar.mo18182b(C8190k.m18410f(t, j), C8190k.m18410f(t2, j)));
    }

    /* renamed from: a */
    public static void m18325a(Class<?> cls) {
        Class<?> cls2;
        if (!AbstractC8228l9.class.isAssignableFrom(cls) && (cls2 = f19079a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* renamed from: a */
    public static boolean m18324a(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: b */
    public static int m18320b(int i, List<AbstractC8209k8> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int e = size * AbstractC8447x8.m18046e(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            e += AbstractC8447x8.m18060b(list.get(i2));
        }
        return e;
    }

    /* renamed from: b */
    public static int m18319b(int i, List<AbstractC8390ua> list, AbstractC8212kb kbVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += AbstractC8447x8.m18052c(i, list.get(i3), kbVar);
        }
        return i2;
    }

    /* renamed from: b */
    public static int m18315b(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m18314b(list) + (size * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: b */
    public static int m18314b(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8169ia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18047d(list.get(i2).longValue());
                i2++;
            }
        } else {
            C8169ia iaVar = (C8169ia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18047d(iaVar.m18465g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: b */
    public static AbstractC8071e<?, ?> m18321b() {
        return f19081c;
    }

    /* renamed from: b */
    public static void m18318b(int i, List<AbstractC8209k8> list, AbstractC8468z zVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17946a(i, list);
        }
    }

    /* renamed from: b */
    public static void m18317b(int i, List<?> list, AbstractC8468z zVar, AbstractC8212kb kbVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17945a(i, list, kbVar);
        }
    }

    /* renamed from: b */
    public static void m18316b(int i, List<Float> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17916n(i, list, z);
        }
    }

    /* renamed from: c */
    public static int m18311c(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m18310c(list) + (size * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: c */
    public static int m18310c(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8169ia)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18044e(list.get(i2).longValue());
                i2++;
            }
        } else {
            C8169ia iaVar = (C8169ia) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18044e(iaVar.m18465g(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: c */
    public static AbstractC8071e<?, ?> m18313c() {
        return f19082d;
    }

    /* renamed from: c */
    public static void m18312c(int i, List<Long> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17935b(i, list, z);
        }
    }

    /* renamed from: d */
    public static int m18307d(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m18306d(list) + (size * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: d */
    public static int m18306d(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8264n9)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18026k(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8264n9 n9Var = (C8264n9) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18026k(n9Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: d */
    public static Class<?> m18309d() {
        try {
            return Class.forName("h.i.g.v");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: d */
    public static void m18308d(int i, List<Long> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17918l(i, list, z);
        }
    }

    /* renamed from: e */
    public static int m18303e(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m18302e(list) + (size * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: e */
    public static int m18302e(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8264n9)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18043f(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8264n9 n9Var = (C8264n9) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18043f(n9Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: e */
    public static Class<?> m18305e() {
        try {
            return Class.forName("h.i.g.g1");
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: e */
    public static void m18304e(int i, List<Long> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17929d(i, list, z);
        }
    }

    /* renamed from: f */
    public static int m18300f(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m18299f(list) + (size * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: f */
    public static int m18299f(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8264n9)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18039g(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8264n9 n9Var = (C8264n9) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18039g(n9Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: f */
    public static void m18301f(int i, List<Long> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17919k(i, list, z);
        }
    }

    /* renamed from: g */
    public static int m18297g(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return m18296g(list) + (size * AbstractC8447x8.m18046e(i));
    }

    /* renamed from: g */
    public static int m18296g(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof C8264n9)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += AbstractC8447x8.m18035h(list.get(i2).intValue());
                i2++;
            }
        } else {
            C8264n9 n9Var = (C8264n9) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += AbstractC8447x8.m18035h(n9Var.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* renamed from: g */
    public static void m18298g(int i, List<Long> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17922h(i, list, z);
        }
    }

    /* renamed from: h */
    public static int m18294h(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC8447x8.m18030i(i, 0);
    }

    /* renamed from: h */
    public static int m18293h(List<?> list) {
        return list.size() << 2;
    }

    /* renamed from: h */
    public static void m18295h(int i, List<Integer> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17944a(i, list, z);
        }
    }

    /* renamed from: i */
    public static int m18291i(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC8447x8.m18037g(i, 0L);
    }

    /* renamed from: i */
    public static int m18290i(List<?> list) {
        return list.size() << 3;
    }

    /* renamed from: i */
    public static void m18292i(int i, List<Integer> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17921i(i, list, z);
        }
    }

    /* renamed from: j */
    public static int m18288j(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * AbstractC8447x8.m18062b(i, true);
    }

    /* renamed from: j */
    public static int m18287j(List<?> list) {
        return list.size();
    }

    /* renamed from: j */
    public static void m18289j(int i, List<Integer> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17926e(i, list, z);
        }
    }

    /* renamed from: k */
    public static void m18286k(int i, List<Integer> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17932c(i, list, z);
        }
    }

    /* renamed from: l */
    public static void m18285l(int i, List<Integer> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17920j(i, list, z);
        }
    }

    /* renamed from: m */
    public static void m18284m(int i, List<Integer> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17923g(i, list, z);
        }
    }

    /* renamed from: n */
    public static void m18283n(int i, List<Boolean> list, AbstractC8468z zVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zVar.mo17924f(i, list, z);
        }
    }
}
