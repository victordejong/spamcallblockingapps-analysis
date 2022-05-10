package p131c.p161d.p266c.p273g;

import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.g.a */
/* loaded from: classes2-dex2jar.jar:c/d/c/g/a.class */
public final class C5068a {

    /* renamed from: a */
    public static final Map<Class<?>, Class<?>> f17661a;

    /* renamed from: b */
    public static final Map<Class<?>, Class<?>> f17662b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap(16);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(16);
        m24562a(linkedHashMap, linkedHashMap2, Boolean.TYPE, Boolean.class);
        m24562a(linkedHashMap, linkedHashMap2, Byte.TYPE, Byte.class);
        m24562a(linkedHashMap, linkedHashMap2, Character.TYPE, Character.class);
        m24562a(linkedHashMap, linkedHashMap2, Double.TYPE, Double.class);
        m24562a(linkedHashMap, linkedHashMap2, Float.TYPE, Float.class);
        m24562a(linkedHashMap, linkedHashMap2, Integer.TYPE, Integer.class);
        m24562a(linkedHashMap, linkedHashMap2, Long.TYPE, Long.class);
        m24562a(linkedHashMap, linkedHashMap2, Short.TYPE, Short.class);
        m24562a(linkedHashMap, linkedHashMap2, Void.TYPE, Void.class);
        f17661a = Collections.unmodifiableMap(linkedHashMap);
        f17662b = Collections.unmodifiableMap(linkedHashMap2);
    }

    /* renamed from: a */
    public static <T> Class<T> m24563a(Class<T> cls) {
        C4933n.m24795a(cls);
        Class<?> cls2 = f17662b.get(cls);
        if (cls2 != null) {
            cls = cls2;
        }
        return cls;
    }

    /* renamed from: a */
    public static Set<Class<?>> m24564a() {
        return f17662b.keySet();
    }

    /* renamed from: a */
    public static void m24562a(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    /* renamed from: b */
    public static <T> Class<T> m24561b(Class<T> cls) {
        C4933n.m24795a(cls);
        Class<?> cls2 = f17661a.get(cls);
        if (cls2 != null) {
            cls = cls2;
        }
        return cls;
    }
}
