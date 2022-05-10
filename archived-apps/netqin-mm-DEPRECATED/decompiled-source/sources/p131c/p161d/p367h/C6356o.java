package p131c.p161d.p367h;
/* renamed from: c.d.h.o */
/* loaded from: classes2-dex2jar.jar:c/d/h/o.class */
public final class C6356o {

    /* renamed from: a */
    public static final Class<?> f20001a = m21174b();

    /* renamed from: a */
    public static C6358p m21176a() {
        C6358p a = m21175a("getEmptyRegistry");
        if (a == null) {
            a = C6358p.f20004d;
        }
        return a;
    }

    /* renamed from: a */
    public static final C6358p m21175a(String str) {
        Class<?> cls = f20001a;
        if (cls == null) {
            return null;
        }
        try {
            return (C6358p) cls.getDeclaredMethod(str, new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: b */
    public static Class<?> m21174b() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException e) {
            return null;
        }
    }
}
