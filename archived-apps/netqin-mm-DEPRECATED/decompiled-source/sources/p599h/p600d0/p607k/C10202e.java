package p599h.p600d0.p607k;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: h.d0.k.e */
/* loaded from: classes2-dex2jar.jar:h/d0/k/e.class */
public class C10202e<T> {

    /* renamed from: a */
    public final Class<?> f37667a;

    /* renamed from: b */
    public final String f37668b;

    /* renamed from: c */
    public final Class[] f37669c;

    public C10202e(Class<?> cls, String str, Class... clsArr) {
        this.f37667a = cls;
        this.f37668b = str;
        this.f37669c = clsArr;
    }

    /* renamed from: a */
    public static Method m1093a(Class<?> cls, String str, Class[] clsArr) {
        Method method;
        try {
            method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    method = null;
                }
            } catch (NoSuchMethodException e) {
            }
        } catch (NoSuchMethodException e2) {
            method = null;
        }
        return method;
    }

    /* renamed from: a */
    public Object m1091a(T t, Object... objArr) throws InvocationTargetException {
        Method a = m1094a(t.getClass());
        if (a != null) {
            try {
                return a.invoke(t, objArr);
            } catch (IllegalAccessException e) {
                AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + a);
                assertionError.initCause(e);
                throw assertionError;
            }
        } else {
            throw new AssertionError("Method " + this.f37668b + " not supported for object " + t);
        }
    }

    /* renamed from: a */
    public final Method m1094a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f37668b;
        Method method = null;
        if (str != null) {
            method = m1093a(cls, str, this.f37669c);
            if (!(method == null || (cls2 = this.f37667a) == null || cls2.isAssignableFrom(method.getReturnType()))) {
                method = null;
            }
        }
        return method;
    }

    /* renamed from: a */
    public boolean m1092a(T t) {
        return m1094a(t.getClass()) != null;
    }

    /* renamed from: b */
    public Object m1090b(T t, Object... objArr) throws InvocationTargetException {
        Method a = m1094a(t.getClass());
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
    public Object m1089c(T t, Object... objArr) {
        try {
            return m1090b(t, objArr);
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
    public Object m1088d(T t, Object... objArr) {
        try {
            return m1091a(t, objArr);
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
