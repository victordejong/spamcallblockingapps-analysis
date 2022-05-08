package p081h.p203i.p316b.p318b;
/* renamed from: h.i.b.b.p */
/* loaded from: classes2-dex2jar.jar:h/i/b/b/p.class */
public final class C9341p {
    /* renamed from: a */
    public static Object m15399a(Object obj, int i) {
        if (obj != null) {
            return obj;
        }
        throw new NullPointerException("at index " + i);
    }

    /* renamed from: a */
    public static Object[] m15398a(Object... objArr) {
        m15397a(objArr, objArr.length);
        return objArr;
    }

    /* renamed from: a */
    public static Object[] m15397a(Object[] objArr, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            m15399a(objArr[i2], i2);
        }
        return objArr;
    }

    /* renamed from: b */
    public static <T> T[] m15396b(T[] tArr, int i) {
        return (T[]) C9343r.m15393a(tArr, i);
    }
}
