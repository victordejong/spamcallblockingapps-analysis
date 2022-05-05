package com.google.p051a.p053b;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.a.b.aa */
/* loaded from: classes-dex2jar.jar:com/google/a/b/aa.class */
public final class C1450aa {

    /* renamed from: a */
    private static final Map<Class<?>, Class<?>> f5616a;

    /* renamed from: b */
    private static final Map<Class<?>, Class<?>> f5617b;

    static {
        HashMap hashMap = new HashMap(16);
        HashMap hashMap2 = new HashMap(16);
        m6307a(hashMap, hashMap2, Boolean.TYPE, Boolean.class);
        m6307a(hashMap, hashMap2, Byte.TYPE, Byte.class);
        m6307a(hashMap, hashMap2, Character.TYPE, Character.class);
        m6307a(hashMap, hashMap2, Double.TYPE, Double.class);
        m6307a(hashMap, hashMap2, Float.TYPE, Float.class);
        m6307a(hashMap, hashMap2, Integer.TYPE, Integer.class);
        m6307a(hashMap, hashMap2, Long.TYPE, Long.class);
        m6307a(hashMap, hashMap2, Short.TYPE, Short.class);
        m6307a(hashMap, hashMap2, Void.TYPE, Void.class);
        f5616a = Collections.unmodifiableMap(hashMap);
        f5617b = Collections.unmodifiableMap(hashMap2);
    }

    /* renamed from: a */
    public static <T> Class<T> m6309a(Class<T> cls) {
        Class<T> cls2 = (Class<T>) f5616a.get(C1382a.m6353a(cls));
        return cls2 == null ? cls : cls2;
    }

    /* renamed from: a */
    private static void m6307a(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    /* renamed from: a */
    public static boolean m6308a(Type type) {
        return f5616a.containsKey(type);
    }
}
