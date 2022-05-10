package p131c.p161d.p367h;
/* renamed from: c.d.h.d */
/* loaded from: classes2-dex2jar.jar:c/d/h/d.class */
public final class C6288d {

    /* renamed from: a */
    public static final Class<?> f19866a = m21670a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f19867b;

    static {
        f19867b = m21670a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static Class<?> m21671a() {
        return f19866a;
    }

    /* renamed from: a */
    public static <T> Class<T> m21670a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m21669b() {
        return f19866a != null && !f19867b;
    }
}
