package p131c.p161d.p170b.p224d.p252g.p255c;
/* renamed from: c.d.b.d.g.c.m */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/m.class */
public final class C4379m {

    /* renamed from: a */
    public static final Class<?> f16561a = m25808a("libcore.io.Memory");

    /* renamed from: b */
    public static final boolean f16562b;

    static {
        f16562b = m25808a("org.robolectric.Robolectric") != null;
    }

    /* renamed from: a */
    public static <T> Class<T> m25808a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m25809a() {
        return f16561a != null && !f16562b;
    }

    /* renamed from: b */
    public static Class<?> m25807b() {
        return f16561a;
    }
}
