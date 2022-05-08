package com.ryanharter.auto.value.gson;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import java.lang.annotation.ElementType;
import java.lang.annotation.Inherited;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import p081h.p203i.p384e.AbstractC10117u;
import p081h.p203i.p384e.p390x.C10173a;
@Inherited
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes2-dex2jar.jar:com/ryanharter/auto/value/gson/GenerateTypeAdapter.class */
public @interface GenerateTypeAdapter {
    static {
        new AbstractC10117u() { // from class: com.ryanharter.auto.value.gson.GenerateTypeAdapter.1

            /* renamed from: a */
            public final Class<?> f9618a = Array.newInstance(Type.class, 0).getClass();

            /* renamed from: b */
            public final Map<Class<?>, Constructor<? extends TypeAdapter>> f9619b = Collections.synchronizedMap(new LinkedHashMap());

            /* renamed from: a */
            public final Constructor<? extends TypeAdapter> m29868a(Class<?> cls) {
                Constructor<? extends TypeAdapter> constructor;
                Constructor<? extends TypeAdapter> constructor2 = this.f9619b.get(cls);
                if (constructor2 != null) {
                    return constructor2;
                }
                String name = cls.getName();
                if (name.startsWith("android.") || name.startsWith("java.") || name.startsWith("kotlin.")) {
                    return null;
                }
                try {
                    try {
                        String replace = cls.getName().replace("$", "_");
                        ClassLoader classLoader = cls.getClassLoader();
                        Class<?> loadClass = classLoader.loadClass(replace + "_GsonTypeAdapter");
                        try {
                            constructor = loadClass.getDeclaredConstructor(Gson.class);
                            constructor.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            constructor = loadClass.getDeclaredConstructor(Gson.class, this.f9618a);
                            constructor.setAccessible(true);
                        }
                    } catch (ClassNotFoundException e2) {
                        Constructor<? extends TypeAdapter> a = m29868a(cls.getSuperclass());
                        constructor = a;
                        if (a != null) {
                            a.setAccessible(true);
                            constructor = a;
                        }
                    }
                    this.f9619b.put(cls, constructor);
                    return constructor;
                } catch (NoSuchMethodException e3) {
                    throw new RuntimeException("Unable to find binding constructor for " + name, e3);
                }
            }

            @Override // p081h.p203i.p384e.AbstractC10117u
            public <T> TypeAdapter<T> create(Gson gson, C10173a<T> aVar) {
                Class<? super T> a = aVar.m13280a();
                if (!a.isAnnotationPresent(GenerateTypeAdapter.class)) {
                    return null;
                }
                Class<? super Object> superclass = a.getSuperclass();
                if (superclass.isAnnotationPresent(GenerateTypeAdapter.class)) {
                    return gson.m30989a((Class) superclass);
                }
                Constructor<? extends TypeAdapter> a2 = m29868a(a);
                if (a2 == null) {
                    return null;
                }
                try {
                    return a2.getParameterTypes().length == 1 ? (TypeAdapter) a2.newInstance(gson) : (TypeAdapter) a2.newInstance(gson, ((ParameterizedType) aVar.m13276b()).getActualTypeArguments());
                } catch (IllegalAccessException e) {
                    throw new RuntimeException("Unable to invoke " + a2, e);
                } catch (InstantiationException e2) {
                    throw new RuntimeException("Unable to invoke " + a2, e2);
                } catch (InvocationTargetException e3) {
                    Throwable cause = e3.getCause();
                    if (cause instanceof RuntimeException) {
                        throw ((RuntimeException) cause);
                    } else if (cause instanceof Error) {
                        throw ((Error) cause);
                    } else {
                        throw new RuntimeException("Could not create generated TypeAdapter instance for type " + a, cause);
                    }
                }
            }
        };
    }
}
