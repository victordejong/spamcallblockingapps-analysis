package p081h.p203i.p204a.p224e.p253f;

import dalvik.system.PathClassLoader;
/* renamed from: h.i.a.e.f.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/f/i.class */
public final class C7127i extends PathClassLoader {
    public C7127i(String str, ClassLoader classLoader) {
        super(str, classLoader);
    }

    @Override // java.lang.ClassLoader
    public final Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        if (!str.startsWith("java.") && !str.startsWith("android.")) {
            try {
                return findClass(str);
            } catch (ClassNotFoundException e) {
            }
        }
        return super.loadClass(str, z);
    }
}
