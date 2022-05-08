package com.google.gson.internal;

import java.lang.reflect.Type;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/gson/internal/Primitives.class */
public final class Primitives {

    /* renamed from: a */
    private static final Map<Class<?>, Class<?>> f12047a;

    static {
        HashMap hashMap = new HashMap(16);
        HashMap hashMap2 = new HashMap(16);
        m8280a(hashMap, hashMap2, Boolean.TYPE, Boolean.class);
        m8280a(hashMap, hashMap2, Byte.TYPE, Byte.class);
        m8280a(hashMap, hashMap2, Character.TYPE, Character.class);
        m8280a(hashMap, hashMap2, Double.TYPE, Double.class);
        m8280a(hashMap, hashMap2, Float.TYPE, Float.class);
        m8280a(hashMap, hashMap2, Integer.TYPE, Integer.class);
        m8280a(hashMap, hashMap2, Long.TYPE, Long.class);
        m8280a(hashMap, hashMap2, Short.TYPE, Short.class);
        m8280a(hashMap, hashMap2, Void.TYPE, Void.class);
        f12047a = Collections.unmodifiableMap(hashMap);
        Collections.unmodifiableMap(hashMap2);
    }

    private Primitives() {
        throw new UnsupportedOperationException();
    }

    /* renamed from: a */
    private static void m8280a(Map<Class<?>, Class<?>> map, Map<Class<?>, Class<?>> map2, Class<?> cls, Class<?> cls2) {
        map.put(cls, cls2);
        map2.put(cls2, cls);
    }

    /* renamed from: b */
    public static boolean m8279b(Type type) {
        return f12047a.containsKey(type);
    }

    /* renamed from: c */
    public static <T> Class<T> m8278c(Class<T> cls) {
        Map<Class<?>, Class<?>> map = f12047a;
        C$Gson$Preconditions.m8366b(cls);
        Class<?> cls2 = map.get(cls);
        if (cls2 != null) {
            cls = cls2;
        }
        return cls;
    }
}
