package androidx.fragment.app;

import androidx.fragment.app.Fragment;
import androidx.p026b.C0542i;
import java.lang.reflect.InvocationTargetException;
/* renamed from: androidx.fragment.app.k */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/k.class */
public class C0895k {

    /* renamed from: a */
    private static final C0542i<String, Class<?>> f3767a = new C0542i<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m7757a(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m7755d(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static Class<? extends Fragment> m7756b(ClassLoader classLoader, String str) {
        try {
            return m7755d(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.C0861b("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.C0861b("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: d */
    private static Class<?> m7755d(ClassLoader classLoader, String str) {
        Class<?> cls = f3767a.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            f3767a.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: c */
    public Fragment mo7618c(ClassLoader classLoader, String str) {
        try {
            return (Fragment) m7756b(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment.C0861b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new Fragment.C0861b("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.C0861b("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.C0861b("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }
}
