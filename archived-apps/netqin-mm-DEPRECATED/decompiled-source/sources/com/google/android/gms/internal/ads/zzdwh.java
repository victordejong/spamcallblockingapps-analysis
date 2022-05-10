package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdwh.class */
public final class zzdwh {

    /* renamed from: a */
    public static final Object f27904a;

    static {
        Object a = m13086a();
        f27904a = a;
        if (a != null) {
            m13085a("getStackTraceElement", Throwable.class, Integer.TYPE);
        }
        if (f27904a != null) {
            m13083b();
        }
    }

    /* renamed from: a */
    public static Object m13086a() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    /* renamed from: a */
    public static String m13084a(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        zzehy.m12543a(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* renamed from: a */
    public static Method m13085a(String str, Class<?>... clsArr) throws ThreadDeath {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    /* renamed from: b */
    public static Method m13083b() {
        try {
            Method a = m13085a("getStackTraceDepth", Throwable.class);
            if (a == null) {
                return null;
            }
            a.invoke(m13086a(), new Throwable());
            return a;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: b */
    public static void m13082b(Throwable th) {
        zzdwd.m13096a(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @Deprecated
    /* renamed from: c */
    public static RuntimeException m13081c(Throwable th) {
        m13082b(th);
        throw new RuntimeException(th);
    }
}
