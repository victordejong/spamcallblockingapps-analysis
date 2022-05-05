package androidx.lifecycle;

import androidx.lifecycle.AbstractC0927f;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.a */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/a.class */
final class C0920a {

    /* renamed from: a */
    static C0920a f3889a = new C0920a();

    /* renamed from: b */
    private final Map<Class, C0921a> f3890b = new HashMap();

    /* renamed from: c */
    private final Map<Class, Boolean> f3891c = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$a.class */
    public static final class C0921a {

        /* renamed from: a */
        final Map<AbstractC0927f.EnumC0928a, List<C0922b>> f3892a = new HashMap();

        /* renamed from: b */
        final Map<C0922b, AbstractC0927f.EnumC0928a> f3893b;

        C0921a(Map<C0922b, AbstractC0927f.EnumC0928a> map) {
            this.f3893b = map;
            for (Map.Entry<C0922b, AbstractC0927f.EnumC0928a> entry : map.entrySet()) {
                AbstractC0927f.EnumC0928a value = entry.getValue();
                List<C0922b> list = this.f3892a.get(value);
                List<C0922b> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>();
                    this.f3892a.put(value, list2);
                }
                list2.add(entry.getKey());
            }
        }

        /* renamed from: a */
        private static void m7587a(List<C0922b> list, AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).m7586a(iVar, aVar, obj);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public final void m7588a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar, Object obj) {
            m7587a(this.f3892a.get(aVar), iVar, aVar, obj);
            m7587a(this.f3892a.get(AbstractC0927f.EnumC0928a.ON_ANY), iVar, aVar, obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.lifecycle.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/lifecycle/a$b.class */
    public static final class C0922b {

        /* renamed from: a */
        final int f3894a;

        /* renamed from: b */
        final Method f3895b;

        C0922b(int i, Method method) {
            this.f3894a = i;
            this.f3895b = method;
            this.f3895b.setAccessible(true);
        }

        /* renamed from: a */
        final void m7586a(AbstractC0932i iVar, AbstractC0927f.EnumC0928a aVar, Object obj) {
            try {
                int i = this.f3894a;
                if (i == 0) {
                    this.f3895b.invoke(obj, new Object[0]);
                } else if (i == 1) {
                    this.f3895b.invoke(obj, iVar);
                } else if (i == 2) {
                    this.f3895b.invoke(obj, iVar, aVar);
                }
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                throw new RuntimeException("Failed to call observer method", e2.getCause());
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            C0922b bVar = (C0922b) obj;
            return this.f3894a == bVar.f3894a && this.f3895b.getName().equals(bVar.f3895b.getName());
        }

        public final int hashCode() {
            return (this.f3894a * 31) + this.f3895b.getName().hashCode();
        }
    }

    C0920a() {
    }

    /* renamed from: a */
    private C0921a m7592a(Class cls, Method[] methodArr) {
        int i;
        C0921a b;
        Class superclass = cls.getSuperclass();
        HashMap hashMap = new HashMap();
        if (!(superclass == null || (b = m7590b(superclass)) == null)) {
            hashMap.putAll(b.f3893b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0922b, AbstractC0927f.EnumC0928a> entry : m7590b(cls2).f3893b.entrySet()) {
                m7591a(hashMap, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = m7589c(cls);
        }
        boolean z = false;
        for (Method method : methodArr) {
            AbstractC0942r rVar = (AbstractC0942r) method.getAnnotation(AbstractC0942r.class);
            if (rVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i = 0;
                } else if (parameterTypes[0].isAssignableFrom(AbstractC0932i.class)) {
                    i = 1;
                } else {
                    throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                }
                AbstractC0927f.EnumC0928a a = rVar.m7557a();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(AbstractC0927f.EnumC0928a.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    } else if (a == AbstractC0927f.EnumC0928a.ON_ANY) {
                        i = 2;
                    } else {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                }
                if (parameterTypes.length <= 2) {
                    m7591a(hashMap, new C0922b(i, method), a, cls);
                    z = true;
                } else {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
            }
        }
        C0921a aVar = new C0921a(hashMap);
        this.f3890b.put(cls, aVar);
        this.f3891c.put(cls, Boolean.valueOf(z));
        return aVar;
    }

    /* renamed from: a */
    private static void m7591a(Map<C0922b, AbstractC0927f.EnumC0928a> map, C0922b bVar, AbstractC0927f.EnumC0928a aVar, Class cls) {
        AbstractC0927f.EnumC0928a aVar2 = map.get(bVar);
        if (aVar2 != null && aVar != aVar2) {
            Method method = bVar.f3895b;
            throw new IllegalArgumentException("Method " + method.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + aVar2 + ", new value " + aVar);
        } else if (aVar2 == null) {
            map.put(bVar, aVar);
        }
    }

    /* renamed from: c */
    private static Method[] m7589c(Class cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m7593a(Class cls) {
        Boolean bool = this.f3891c.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] c = m7589c(cls);
        for (Method method : c) {
            if (((AbstractC0942r) method.getAnnotation(AbstractC0942r.class)) != null) {
                m7592a(cls, c);
                return true;
            }
        }
        this.f3891c.put(cls, Boolean.FALSE);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final C0921a m7590b(Class cls) {
        C0921a aVar = this.f3890b.get(cls);
        return aVar != null ? aVar : m7592a(cls, null);
    }
}
