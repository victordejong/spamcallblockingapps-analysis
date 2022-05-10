package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.s60 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s60.class */
public final class s60 {

    /* renamed from: a */
    public static final Class<?> f15074a = m26393a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f15075b;

    static {
        f15075b = m26393a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m26393a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m26394a() {
        return f15074a != null && !f15075b;
    }

    /* renamed from: b */
    public static Class<?> m26392b() {
        return f15074a;
    }
}
