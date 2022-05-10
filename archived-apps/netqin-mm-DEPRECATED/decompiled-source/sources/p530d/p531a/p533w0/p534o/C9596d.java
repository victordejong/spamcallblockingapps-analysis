package p530d.p531a.p533w0.p534o;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: d.a.w0.o.d */
/* loaded from: classes2-dex2jar.jar:d/a/w0/o/d.class */
public class C9596d<T> {

    /* renamed from: a */
    public final Class<?> f36625a;

    /* renamed from: b */
    public final String f36626b;

    /* renamed from: c */
    public final Class[] f36627c;

    public C9596d(Class<?> cls, String str, Class... clsArr) {
        this.f36625a = cls;
        this.f36626b = str;
        this.f36627c = clsArr;
    }

    /* renamed from: a */
    public static Method m2287a(Class<?> cls, String str, Class[] clsArr) {
        Method method;
        if (cls == null) {
            return null;
        }
        try {
        } catch (NoSuchMethodException e) {
            method = null;
        }
        if ((cls.getModifiers() & 1) == 0) {
            return m2287a(cls.getSuperclass(), str, clsArr);
        }
        method = cls.getMethod(str, clsArr);
        try {
            if ((method.getModifiers() & 1) == 0) {
                method = null;
            }
        } catch (NoSuchMethodException e2) {
        }
        return method;
    }

    /* renamed from: a */
    public Object m2285a(T t, Object... objArr) throws InvocationTargetException {
        Method a = m2288a(t.getClass());
        if (a != null) {
            try {
                return a.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + a);
                assertionError.initCause(e);
                throw assertionError;
            }
        } else {
            throw new AssertionError("Method " + this.f36626b + " not supported for object " + t);
        }
    }

    /* renamed from: a */
    public final Method m2288a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f36626b;
        Method method = null;
        if (str != null) {
            method = m2287a(cls, str, this.f36627c);
            if (!(method == null || (cls2 = this.f36625a) == null || cls2.isAssignableFrom(method.getReturnType()))) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: a */
    public boolean m2286a(T t) {
        return m2288a(t.getClass()) != null;
    }

    /* renamed from: b */
    public Object m2284b(T t, Object... objArr) throws InvocationTargetException {
        Method a = m2288a(t.getClass());
        if (a == null) {
            return null;
        }
        try {
            return a.invoke(t, objArr);
        } catch (IllegalAccessException e) {
            return null;
        }
    }

    /* renamed from: c */
    public Object m2283c(T t, Object... objArr) {
        try {
            return m2284b(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    /* renamed from: d */
    public Object m2282d(T t, Object... objArr) {
        try {
            return m2285a(t, objArr);
        } catch (InvocationTargetException e) {
            Throwable targetException = e.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }
}
