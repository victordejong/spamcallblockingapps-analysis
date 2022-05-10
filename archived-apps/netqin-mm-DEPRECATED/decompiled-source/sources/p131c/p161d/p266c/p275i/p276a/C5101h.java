package p131c.p161d.p266c.p275i.p276a;

import com.google.common.collect.Ordering;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* renamed from: c.d.c.i.a.h */
/* loaded from: classes2-dex2jar.jar:c/d/c/i/a/h.class */
public final class C5101h {

    /* renamed from: a */
    public static final Ordering<Constructor<?>> f17693a = Ordering.natural().onResultOf(new C5102a()).reverse();

    /* renamed from: c.d.c.i.a.h$a */
    /* loaded from: classes2-dex2jar.jar:c/d/c/i/a/h$a.class */
    public static final class C5102a implements AbstractC4920g<Constructor<?>, Boolean> {
        /* renamed from: a */
        public Boolean apply(Constructor<?> constructor) {
            return Boolean.valueOf(Arrays.asList(constructor.getParameterTypes()).contains(String.class));
        }
    }

    /* renamed from: a */
    public static <X extends Exception> X m24511a(Class<X> cls, Throwable th) {
        for (Constructor constructor : m24509a(Arrays.asList(cls.getConstructors()))) {
            X x = (X) ((Exception) m24510a(constructor, th));
            if (x != null) {
                if (x.getCause() == null) {
                    x.initCause(th);
                }
                return x;
            }
        }
        throw new IllegalArgumentException("No appropriate constructor for exception of type " + cls + " in response to chained exception", th);
    }

    /* renamed from: a */
    public static <X> X m24510a(Constructor<X> constructor, Throwable th) {
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        Object[] objArr = new Object[parameterTypes.length];
        for (int i = 0; i < parameterTypes.length; i++) {
            Class<?> cls = parameterTypes[i];
            if (cls.equals(String.class)) {
                objArr[i] = th.toString();
            } else if (!cls.equals(Throwable.class)) {
                return null;
            } else {
                objArr[i] = th;
            }
        }
        try {
            return constructor.newInstance(objArr);
        } catch (IllegalAccessException | IllegalArgumentException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static <X extends Exception> List<Constructor<X>> m24509a(List<Constructor<X>> list) {
        return (List<Constructor<X>>) f17693a.sortedCopy(list);
    }

    /* renamed from: a */
    public static void m24512a(Class<? extends Exception> cls) {
        C4933n.m24782a(m24507c(cls), "Futures.getChecked exception type (%s) must not be a RuntimeException", cls);
        C4933n.m24782a(m24508b(cls), "Futures.getChecked exception type (%s) must be an accessible class with an accessible constructor whose parameters (if any) must be of type String and/or Throwable", cls);
    }

    /* renamed from: b */
    public static boolean m24508b(Class<? extends Exception> cls) {
        try {
            m24511a(cls, new Exception());
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: c */
    public static boolean m24507c(Class<? extends Exception> cls) {
        return !RuntimeException.class.isAssignableFrom(cls);
    }
}
