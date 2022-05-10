package p131c.p161d.p170b.p224d.p251f;

import dalvik.system.PathClassLoader;
/* renamed from: c.d.b.d.f.i */
/* loaded from: classes-dex2jar.jar:c/d/b/d/f/i.class */
public final class C3336i extends PathClassLoader {
    public C3336i(String str, ClassLoader classLoader) {
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
