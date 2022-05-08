package androidx.lifecycle;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* renamed from: androidx.lifecycle.m */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/m.class */
public final class C0937m {

    /* renamed from: a */
    private static Map<Class, Integer> f3915a = new HashMap();

    /* renamed from: b */
    private static Map<Class, List<Constructor<? extends AbstractC0925d>>> f3916b = new HashMap();

    /* renamed from: a */
    private static AbstractC0925d m7564a(Constructor<? extends AbstractC0925d> constructor, Object obj) {
        try {
            return (AbstractC0925d) constructor.newInstance(obj);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        } catch (InstantiationException e2) {
            throw new RuntimeException(e2);
        } catch (InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC0930g m7565a(Object obj) {
        boolean z = obj instanceof AbstractC0930g;
        boolean z2 = obj instanceof AbstractC0923b;
        if (z && z2) {
            return new FullLifecycleObserverAdapter((AbstractC0923b) obj, (AbstractC0930g) obj);
        }
        if (z2) {
            return new FullLifecycleObserverAdapter((AbstractC0923b) obj, null);
        }
        if (z) {
            return (AbstractC0930g) obj;
        }
        Class<?> cls = obj.getClass();
        if (m7563b(cls) != 2) {
            return new ReflectiveGenericLifecycleObserver(obj);
        }
        List<Constructor<? extends AbstractC0925d>> list = f3916b.get(cls);
        if (list.size() == 1) {
            return new SingleGeneratedAdapterObserver(m7564a(list.get(0), obj));
        }
        AbstractC0925d[] dVarArr = new AbstractC0925d[list.size()];
        for (int i = 0; i < list.size(); i++) {
            dVarArr[i] = m7564a(list.get(i), obj);
        }
        return new CompositeGeneratedAdaptersObserver(dVarArr);
    }

    /* renamed from: a */
    private static Constructor<? extends AbstractC0925d> m7566a(Class<?> cls) {
        String str;
        try {
            Package r0 = cls.getPackage();
            String canonicalName = cls.getCanonicalName();
            String name = r0 != null ? r0.getName() : "";
            if (!name.isEmpty()) {
                canonicalName = canonicalName.substring(name.length() + 1);
            }
            String str2 = canonicalName.replace(".", AbstractC0079b.ROLL_OVER_FILE_NAME_SEPARATOR) + "_LifecycleAdapter";
            if (name.isEmpty()) {
                str = str2;
            } else {
                str = name + "." + str2;
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

    /* renamed from: b */
    private static int m7563b(Class<?> cls) {
        Integer num = f3915a.get(cls);
        if (num != null) {
            return num.intValue();
        }
        int c = m7562c(cls);
        f3915a.put(cls, Integer.valueOf(c));
        return c;
    }

    /* renamed from: c */
    private static int m7562c(Class<?> cls) {
        Class<?>[] interfaces;
        if (cls.getCanonicalName() == null) {
            return 1;
        }
        Constructor<? extends AbstractC0925d> a = m7566a(cls);
        if (a != null) {
            f3916b.put(cls, Collections.singletonList(a));
            return 2;
        } else if (C0920a.f3889a.m7593a(cls)) {
            return 1;
        } else {
            Class<? super Object> superclass = cls.getSuperclass();
            ArrayList arrayList = null;
            if (m7561d(superclass)) {
                if (m7563b(superclass) == 1) {
                    return 1;
                }
                arrayList = new ArrayList(f3916b.get(superclass));
            }
            for (Class<?> cls2 : cls.getInterfaces()) {
                arrayList = arrayList;
                if (m7561d(cls2)) {
                    if (m7563b(cls2) == 1) {
                        return 1;
                    }
                    arrayList = arrayList;
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.addAll(f3916b.get(cls2));
                }
            }
            if (arrayList == null) {
                return 1;
            }
            f3916b.put(cls, arrayList);
            return 2;
        }
    }

    /* renamed from: d */
    private static boolean m7561d(Class<?> cls) {
        return cls != null && AbstractC0931h.class.isAssignableFrom(cls);
    }
}
