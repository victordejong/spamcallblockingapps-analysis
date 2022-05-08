package p081h.p203i.p384e.p386w;

import java.lang.reflect.Type;
/* renamed from: h.i.e.w.j */
/* loaded from: classes2-dex2jar.jar:h/i/e/w/j.class */
public final class C10156j {
    /* renamed from: a */
    public static <T> Class<T> m13305a(Class<T> cls) {
        if (cls == Integer.TYPE) {
            return Integer.class;
        }
        if (cls == Float.TYPE) {
            return Float.class;
        }
        if (cls == Byte.TYPE) {
            return Byte.class;
        }
        if (cls == Double.TYPE) {
            return Double.class;
        }
        if (cls == Long.TYPE) {
            return Long.class;
        }
        if (cls == Character.TYPE) {
            return Character.class;
        }
        if (cls == Boolean.TYPE) {
            return Boolean.class;
        }
        if (cls == Short.TYPE) {
            return Short.class;
        }
        Class<T> cls2 = cls;
        if (cls == Void.TYPE) {
            cls2 = (Class<T>) Void.class;
        }
        return cls2;
    }

    /* renamed from: a */
    public static boolean m13304a(Type type) {
        return (type instanceof Class) && ((Class) type).isPrimitive();
    }
}
