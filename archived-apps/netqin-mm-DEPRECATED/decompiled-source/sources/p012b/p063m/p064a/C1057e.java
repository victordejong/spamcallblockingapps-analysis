package p012b.p063m.p064a;

import androidx.fragment.app.Fragment;
import java.lang.reflect.InvocationTargetException;
import p012b.p035f.C0793g;
/* renamed from: b.m.a.e */
/* loaded from: classes-dex2jar.jar:b/m/a/e.class */
public class C1057e {

    /* renamed from: a */
    public static final C0793g<String, Class<?>> f4434a = new C0793g<>();

    /* renamed from: b */
    public static boolean m34922b(ClassLoader classLoader, String str) {
        try {
            return Fragment.class.isAssignableFrom(m34921c(classLoader, str));
        } catch (ClassNotFoundException e) {
            return false;
        }
    }

    /* renamed from: c */
    public static Class<?> m34921c(ClassLoader classLoader, String str) throws ClassNotFoundException {
        Class<?> cls = f4434a.get(str);
        Class<?> cls2 = cls;
        if (cls == null) {
            cls2 = Class.forName(str, false, classLoader);
            f4434a.put(str, cls2);
        }
        return cls2;
    }

    /* renamed from: d */
    public static Class<? extends Fragment> m34920d(ClassLoader classLoader, String str) {
        try {
            return m34921c(classLoader, str);
        } catch (ClassCastException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class is a valid subclass of Fragment", e);
        } catch (ClassNotFoundException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists", e2);
        }
    }

    /* renamed from: a */
    public Fragment mo34766a(ClassLoader classLoader, String str) {
        try {
            return (Fragment) m34920d(classLoader, str).getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (IllegalAccessException e) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e);
        } catch (InstantiationException e2) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": make sure class name exists, is public, and has an empty constructor that is public", e2);
        } catch (NoSuchMethodException e3) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": could not find Fragment constructor", e3);
        } catch (InvocationTargetException e4) {
            throw new Fragment.InstantiationException("Unable to instantiate fragment " + str + ": calling Fragment constructor caused an exception", e4);
        }
    }
}
