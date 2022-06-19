package androidx.fragment.app;

import f.e.g;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public class C0277j {

    /* renamed from: a */
    private static final g<ClassLoader, g<String, Class<?>>> f1519a = new g<>();

    /* renamed from: b */
    public static boolean m5752b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m5751c(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    private static Class<?> m5751c(ClassLoader classLoader, String str) throws ClassNotFoundException {
        g<ClassLoader, g<String, Class<?>>> gVar = f1519a;
        g gVar2 = (g) gVar.get(classLoader);
        g gVar3 = gVar2;
        if (gVar2 == null) {
            gVar3 = new g();
            gVar.put(classLoader, gVar3);
        }
        Class<?> cls = (Class) gVar3.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            gVar3.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: d */
    public static Class<? extends Fragment> m5750d(ClassLoader classLoader, String str) {
        try {
            return m5751c(classLoader, str);
        } catch (ClassCastException e) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e) { // from class: androidx.fragment.app.Fragment$InstantiationException
            };
        } catch (ClassNotFoundException e2) {
            throw new RuntimeException("Unable to instantiate fragment " + str + ": make sure class name exists", e2) { // from class: androidx.fragment.app.Fragment$InstantiationException
            };
        }
    }

    /* renamed from: a */
    public Fragment m5753a(ClassLoader classLoader, String str) {
        throw null;
    }
}
