package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: androidx.lifecycle.r */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/r.class */
public class C0341r {

    /* renamed from: a */
    private static Map<Class<?>, Integer> f1716a = new HashMap();

    /* renamed from: b */
    private static Map<Class<?>, List<Constructor<? extends AbstractC0325f>>> f1717b = new HashMap();

    /* renamed from: a */
    private static AbstractC0325f m5429a(Constructor<? extends AbstractC0325f> constructor, Object obj) {
        try {
            return constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* renamed from: b */
    private static Constructor<? extends AbstractC0325f> m5428b(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String m5427c = m5427c(canonicalName);
            if (name.isEmpty()) {
                str = m5427c;
            } else {
                str = name + "." + m5427c;
            }
            Constructor declaredConstructor = Class.forName(str).getDeclaredConstructor(cls);
            if (!declaredConstructor.isAccessible()) {
                declaredConstructor.setAccessible(true);
            }
            return declaredConstructor;
        } catch (ClassNotFoundException e) {
            return null;
        } catch (NoSuchMethodException e2) {
            throw new RuntimeException(e2);
        }
    }

    /* renamed from: c */
    public static String m5427c(String str) {
        return str.replace(".", "_") + "_LifecycleAdapter";
    }

    /* renamed from: d */
    private static int m5426d(Class<?> cls) {
        Integer num = f1716a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int m5423g = m5423g(cls);
        f1716a.put(cls, Integer.valueOf(m5423g));
        return m5423g;
    }

    /* renamed from: e */
    private static boolean m5425e(Class<?> cls) {
        return cls != null && AbstractC0339m.class.isAssignableFrom(cls);
    }

    /* renamed from: f */
    public static l m5424f(Object obj) {
        boolean z = obj instanceof l;
        boolean z2 = obj instanceof e;
        if (!z || !z2) {
            if (z2) {
                return new FullLifecycleObserverAdapter((e) obj, (l) null);
            }
            if (z) {
                return (l) obj;
            }
            Class<?> cls = obj.getClass();
            if (m5426d(cls) != 2) {
                return new ReflectiveGenericLifecycleObserver(obj);
            }
            List<Constructor<? extends AbstractC0325f>> list = f1717b.get(cls);
            if (list.size() == 1) {
                return new SingleGeneratedAdapterObserver(m5429a(list.get(0), obj));
            }
            AbstractC0325f[] abstractC0325fArr = new AbstractC0325f[list.size()];
            for (int i = 0; i < list.size(); i++) {
                abstractC0325fArr[i] = m5429a(list.get(i), obj);
            }
            return new CompositeGeneratedAdaptersObserver(abstractC0325fArr);
        }
        return new FullLifecycleObserverAdapter((e) obj, (l) obj);
    }

    /* renamed from: g */
    private static int m5423g(Class<?> cls) {
        ArrayList arrayList;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC0325f> m5428b = m5428b(cls);
        if (m5428b != null) {
            f1717b.put(cls, Collections.singletonList(m5428b));
            return 2;
        } else if (C0315b.f1695c.m5460d(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList2 = null;
            if (m5425e(superclass)) {
                if (m5426d(superclass) == 1) {
                    return 1;
                }
                arrayList2 = new ArrayList(f1717b.get(superclass));
            }
            Class<?>[] interfaces = cls.getInterfaces();
            int length = interfaces.length;
            int i = 0;
            while (i < length) {
                Class<?> cls2 = interfaces[i];
                if (!m5425e(cls2)) {
                    arrayList = arrayList2;
                } else if (m5426d(cls2) == 1) {
                    return 1;
                } else {
                    arrayList = arrayList2;
                    if (arrayList2 == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f1717b.get(cls2));
                }
                i++;
                arrayList2 = arrayList;
            }
            if (arrayList2 == null) {
                return 1;
            }
            f1717b.put(cls, arrayList2);
            return 2;
        }
    }
}
