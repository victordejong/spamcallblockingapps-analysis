package p081h.p203i.p316b.p317a;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: h.i.b.a.p */
/* loaded from: classes2-dex2jar.jar:h/i/b/a/p.class */
public final class C9307p {

    /* renamed from: a */
    public static final Object f21333a = m15449b();

    static {
        if (f21333a != null) {
            m15453a();
        }
        if (f21333a != null) {
            m15446c();
        }
    }

    /* renamed from: a */
    public static Method m15453a() {
        return m15452a("getStackTraceElement", Throwable.class, Integer.TYPE);
    }

    /* renamed from: a */
    public static Method m15452a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    @Deprecated
    /* renamed from: a */
    public static void m15451a(Throwable th) {
        if (th != null) {
            m15448b(th);
        }
    }

    @Deprecated
    /* renamed from: a */
    public static <X extends Throwable> void m15450a(Throwable th, Class<X> cls) throws Throwable {
        if (th != null) {
            m15445c(th, cls);
        }
    }

    /* renamed from: b */
    public static Object m15449b() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    /* renamed from: b */
    public static void m15448b(Throwable th) {
        C9301k.m15478a(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    /* renamed from: b */
    public static <X extends Throwable> void m15447b(Throwable th, Class<X> cls) throws Throwable {
        m15450a(th, cls);
        m15451a(th);
    }

    /* renamed from: c */
    public static Method m15446c() {
        try {
            Method a = m15452a("getStackTraceDepth", Throwable.class);
            if (a == null) {
                return null;
            }
            a.invoke(m15449b(), new Throwable());
            return a;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: c */
    public static <X extends Throwable> void m15445c(Throwable th, Class<X> cls) throws Throwable {
        C9301k.m15478a(th);
        if (cls.isInstance(th)) {
            throw cls.cast(th);
        }
    }
}
