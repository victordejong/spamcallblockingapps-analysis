package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdem.class */
public final class zzdem {
    @NullableDecl

    /* renamed from: a */
    private static final Object f14247a;
    @NullableDecl

    /* renamed from: b */
    private static final Method f14248b;
    @NullableDecl

    /* renamed from: c */
    private static final Method f14249c;

    static {
        Object a = m3600a();
        f14247a = a;
        Method method = null;
        f14248b = a == null ? null : m3599a("getStackTraceElement", Throwable.class, Integer.TYPE);
        if (f14247a != null) {
            method = m3598b();
        }
        f14249c = method;
    }

    @NullableDecl
    /* renamed from: a */
    private static Object m3600a() {
        Object obj = null;
        try {
            obj = Class.forName("sun.misc.SharedSecrets", false, null).getMethod("getJavaLangAccess", new Class[0]).invoke(null, new Object[0]);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
        }
        return obj;
    }

    @NullableDecl
    /* renamed from: a */
    private static Method m3599a(String str, Class<?>... clsArr) {
        try {
            return Class.forName("sun.misc.JavaLangAccess", false, null).getMethod(str, clsArr);
        } catch (ThreadDeath e) {
            throw e;
        } catch (Throwable th) {
            return null;
        }
    }

    @NullableDecl
    /* renamed from: b */
    private static Method m3598b() {
        try {
            Method a = m3599a("getStackTraceDepth", Throwable.class);
            if (a == null) {
                return null;
            }
            a.invoke(m3600a(), new Throwable());
            return a;
        } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException e) {
            return null;
        }
    }

    public static String zza(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        zzdpt.zza(th, new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static void zzg(Throwable th) {
        zzdei.checkNotNull(th);
        if (th instanceof RuntimeException) {
            throw ((RuntimeException) th);
        } else if (th instanceof Error) {
            throw ((Error) th);
        }
    }

    @Deprecated
    public static RuntimeException zzh(Throwable th) {
        zzg(th);
        throw new RuntimeException(th);
    }
}
