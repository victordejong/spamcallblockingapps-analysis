package org.mozilla.javascript;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/DefiningClassLoader.class */
public class DefiningClassLoader extends ClassLoader implements GeneratedClassLoader {
    private final ClassLoader parentLoader;

    public DefiningClassLoader() {
        this.parentLoader = getClass().getClassLoader();
    }

    public DefiningClassLoader(ClassLoader classLoader) {
        this.parentLoader = classLoader;
    }

    @Override // org.mozilla.javascript.GeneratedClassLoader
    public Class<?> defineClass(String str, byte[] bArr) {
        return super.defineClass(str, bArr, 0, bArr.length, SecurityUtilities.getProtectionDomain(getClass()));
    }

    @Override // org.mozilla.javascript.GeneratedClassLoader
    public void linkClass(Class<?> cls) {
        resolveClass(cls);
    }

    @Override // java.lang.ClassLoader
    public Class<?> loadClass(String str, boolean z) throws ClassNotFoundException {
        Class<?> findLoadedClass = findLoadedClass(str);
        Class<?> cls = findLoadedClass;
        if (findLoadedClass == null) {
            cls = this.parentLoader != null ? this.parentLoader.loadClass(str) : findSystemClass(str);
        }
        if (z) {
            resolveClass(cls);
        }
        return cls;
    }
}
