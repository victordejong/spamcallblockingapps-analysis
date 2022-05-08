package org.junit.internal;
/* loaded from: classes2-dex2jar.jar:org/junit/internal/Classes.class */
public class Classes {
    public static Class<?> getClass(String str) throws ClassNotFoundException {
        return Class.forName(str, true, Thread.currentThread().getContextClassLoader());
    }
}
