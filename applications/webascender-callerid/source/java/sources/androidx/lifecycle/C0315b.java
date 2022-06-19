package androidx.lifecycle;

import androidx.lifecycle.AbstractC0329h;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.b */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/b.class */
final class C0315b {

    /* renamed from: c */
    static C0315b f1695c = new C0315b();

    /* renamed from: a */
    private final Map<Class<?>, C0316a> f1696a = new HashMap();

    /* renamed from: b */
    private final Map<Class<?>, Boolean> f1697b = new HashMap();

    /* renamed from: androidx.lifecycle.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$a.class */
    public static class C0316a {

        /* renamed from: a */
        final Map<AbstractC0329h.EnumC0331b, List<C0317b>> f1698a = new HashMap();

        /* renamed from: b */
        final Map<C0317b, AbstractC0329h.EnumC0331b> f1699b;

        C0316a(Map<C0317b, AbstractC0329h.EnumC0331b> map) {
            this.f1699b = map;
            for (Map.Entry<C0317b, AbstractC0329h.EnumC0331b> entry : map.entrySet()) {
                AbstractC0329h.EnumC0331b value = entry.getValue();
                List<C0317b> list = this.f1698a.get(value);
                ArrayList arrayList = list;
                if (list == null) {
                    arrayList = new ArrayList();
                    this.f1698a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        /* renamed from: b */
        private static void m5457b(List<C0317b> list, AbstractC0340n abstractC0340n, AbstractC0329h.EnumC0331b enumC0331b, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m5456a(abstractC0340n, enumC0331b, obj);
                }
            }
        }

        /* renamed from: a */
        void m5458a(AbstractC0340n abstractC0340n, AbstractC0329h.EnumC0331b enumC0331b, Object obj) {
            m5457b(this.f1698a.get(enumC0331b), abstractC0340n, enumC0331b, obj);
            m5457b(this.f1698a.get(AbstractC0329h.EnumC0331b.ON_ANY), abstractC0340n, enumC0331b, obj);
        }
    }

    /* renamed from: androidx.lifecycle.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/b$b.class */
    public static final class C0317b {

        /* renamed from: a */
        final int f1700a;

        /* renamed from: b */
        final Method f1701b;

        C0317b(int i, Method method) {
            this.f1700a = i;
            this.f1701b = method;
            method.setAccessible(true);
        }

        /* renamed from: a */
        void m5456a(AbstractC0340n abstractC0340n, AbstractC0329h.EnumC0331b enumC0331b, Object obj) {
            try {
                int i = this.f1700a;
                if (i == 0) {
                    this.f1701b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f1701b.invoke(obj, abstractC0340n);
                } else if (i != 2) {
                } else {
                    this.f1701b.invoke(obj, abstractC0340n, enumC0331b);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0317b)) {
                return false;
            }
            C0317b c0317b = (C0317b) obj;
            if (this.f1700a != c0317b.f1700a || !this.f1701b.getName().equals(c0317b.f1701b.getName())) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return (this.f1700a * 31) + this.f1701b.getName().hashCode();
        }
    }

    C0315b() {
    }

    /* renamed from: a */
    private C0316a m5463a(Class<?> cls, Method[] methodArr) {
        int i;
        C0316a m5461c;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (superclass != null && (m5461c = m5461c(superclass)) != null) {
            hashMap.putAll(m5461c.f1699b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0317b, AbstractC0329h.EnumC0331b> entry : m5461c(cls2).f1699b.entrySet()) {
                m5459e(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m5462b(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC0344v abstractC0344v = (AbstractC0344v) method.getAnnotation(AbstractC0344v.class);
            if (abstractC0344v != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (!parameterTypes[0].isAssignableFrom(AbstractC0340n.class)) {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                } else {
                    i = 1;
                }
                AbstractC0329h.EnumC0331b value = abstractC0344v.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0329h.EnumC0331b.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (value != AbstractC0329h.EnumC0331b.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                m5459e(hashMap, new C0317b(i, method), value, cls);
                z = true;
            }
        }
        C0316a c0316a = new C0316a(hashMap);
        this.f1696a.put(cls, c0316a);
        this.f1697b.put(cls, Boolean.valueOf(z));
        return c0316a;
    }

    /* renamed from: b */
    private Method[] m5462b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* renamed from: e */
    private void m5459e(Map<C0317b, AbstractC0329h.EnumC0331b> map, C0317b c0317b, AbstractC0329h.EnumC0331b enumC0331b, Class<?> cls) {
        AbstractC0329h.EnumC0331b enumC0331b2 = map.get(c0317b);
        if (enumC0331b2 == null || enumC0331b == enumC0331b2) {
            if (enumC0331b2 != null) {
                return;
            }
            map.put(c0317b, enumC0331b);
            return;
        }
        Method method = c0317b.f1701b;
        throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC0331b2 + ", new value " + enumC0331b);
    }

    /* renamed from: c */
    C0316a m5461c(Class<?> cls) {
        C0316a c0316a = this.f1696a.get(cls);
        return c0316a != null ? c0316a : m5463a(cls, null);
    }

    /* renamed from: d */
    public boolean m5460d(Class<?> cls) {
        Boolean bool = this.f1697b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] m5462b = m5462b(cls);
        for (Method method : m5462b) {
            if (((AbstractC0344v) method.getAnnotation(AbstractC0344v.class)) != null) {
                m5463a(cls, m5462b);
                return true;
            }
        }
        this.f1697b.put(cls, Boolean.FALSE);
        return false;
    }
}
