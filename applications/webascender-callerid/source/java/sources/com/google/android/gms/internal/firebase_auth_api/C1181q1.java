package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.p1;
import com.google.android.gms.internal.firebase-auth-api.q1;
import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.q1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/q1.class */
public final class C1181q1 {

    /* renamed from: a */
    private static final Unsafe f3776a;

    /* renamed from: b */
    private static final Class<?> f3777b = C1243wo.m2370b();

    /* renamed from: c */
    private static final boolean f3778c;

    /* renamed from: d */
    private static final boolean f3779d;

    /* renamed from: e */
    private static final p1 f3780e;

    /* renamed from: f */
    private static final boolean f3781f;

    /* renamed from: g */
    private static final boolean f3782g;

    /* renamed from: h */
    static final long f3783h;

    /* renamed from: i */
    static final boolean f3784i;

    static {
        Unsafe m2562C = m2562C();
        f3776a = m2562C;
        boolean m2549e = m2549e(Long.TYPE);
        f3778c = m2549e;
        boolean m2549e2 = m2549e(Integer.TYPE);
        f3779d = m2549e2;
        p1 p1Var = null;
        if (m2562C != null) {
            if (!C1243wo.m2371a()) {
                p1Var = new o1(m2562C);
            } else if (m2549e) {
                p1Var = new n1(m2562C);
            } else if (m2549e2) {
                p1Var = new m1(m2562C);
            }
        }
        f3780e = p1Var;
        f3781f = p1Var == null ? false : p1Var.m2640j();
        f3782g = p1Var == null ? false : p1Var.m2641i();
        f3783h = m2551c(byte[].class);
        m2551c(boolean[].class);
        m2550d(boolean[].class);
        m2551c(int[].class);
        m2550d(int[].class);
        m2551c(long[].class);
        m2550d(long[].class);
        m2551c(float[].class);
        m2550d(float[].class);
        m2551c(double[].class);
        m2550d(double[].class);
        m2551c(Object[].class);
        m2550d(Object[].class);
        Field m2548f = m2548f();
        if (m2548f != null && p1Var != null) {
            p1Var.m2639k(m2548f);
        }
        boolean z = false;
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z = true;
        }
        f3784i = z;
    }

    private C1181q1() {
    }

    /* renamed from: A */
    static byte m2564A(byte[] bArr, long j) {
        return f3780e.m2649a(bArr, f3783h + j);
    }

    /* renamed from: B */
    static void m2563B(byte[] bArr, long j, byte b) {
        f3780e.m2648b(bArr, f3783h + j, b);
    }

    /* renamed from: C */
    static Unsafe m2562C() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C1131l1());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: D */
    public static /* synthetic */ void m2561D(Throwable th) {
        Logger logger = Logger.getLogger(q1.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }

    /* renamed from: J */
    static /* synthetic */ boolean m2555J(Object obj, long j) {
        return m2546h(obj, j) != 0;
    }

    /* renamed from: K */
    static /* synthetic */ boolean m2554K(Object obj, long j) {
        return m2545i(obj, j) != 0;
    }

    /* renamed from: c */
    private static int m2551c(Class<?> cls) {
        if (f3782g) {
            return f3780e.m2638l(cls);
        }
        return -1;
    }

    /* renamed from: d */
    private static int m2550d(Class<?> cls) {
        if (f3782g) {
            return f3780e.m2637m(cls);
        }
        return -1;
    }

    /* renamed from: e */
    private static boolean m2549e(Class<?> cls) {
        if (!C1243wo.m2371a()) {
            return false;
        }
        try {
            Class<?> cls2 = f3777b;
            Class<?> cls3 = Boolean.TYPE;
            cls2.getMethod("peekLong", cls, cls3);
            cls2.getMethod("pokeLong", cls, Long.TYPE, cls3);
            Class<?> cls4 = Integer.TYPE;
            cls2.getMethod("pokeInt", cls, cls4, cls3);
            cls2.getMethod("peekInt", cls, cls3);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, cls4, cls4);
            cls2.getMethod("peekByteArray", cls, byte[].class, cls4, cls4);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* renamed from: f */
    public static Field m2548f() {
        Field m2547g;
        if (!C1243wo.m2371a() || (m2547g = m2547g(Buffer.class, "effectiveDirectAddress")) == null) {
            Field m2547g2 = m2547g(Buffer.class, "address");
            if (m2547g2 != null && m2547g2.getType() == Long.TYPE) {
                return m2547g2;
            }
            return null;
        }
        return m2547g;
    }

    /* renamed from: g */
    private static Field m2547g(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: h */
    public static byte m2546h(Object obj, long j) {
        return (byte) ((f3780e.m2636n(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: i */
    public static byte m2545i(Object obj, long j) {
        return (byte) ((f3780e.m2636n(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: j */
    public static void m2544j(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        p1 p1Var = f3780e;
        int m2636n = p1Var.m2636n(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        p1Var.m2635o(obj, j2, ((255 & b) << i) | (m2636n & ((255 << i) ^ (-1))));
    }

    /* renamed from: k */
    public static void m2543k(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        p1 p1Var = f3780e;
        int m2636n = p1Var.m2636n(obj, j2);
        int i = (((int) j) & 3) << 3;
        p1Var.m2635o(obj, j2, ((255 & b) << i) | (m2636n & ((255 << i) ^ (-1))));
    }

    /* renamed from: l */
    public static boolean m2542l() {
        return f3782g;
    }

    /* renamed from: m */
    public static boolean m2541m() {
        return f3781f;
    }

    /* renamed from: n */
    static <T> T m2540n(Class<T> cls) {
        try {
            return (T) f3776a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: o */
    static int m2539o(Object obj, long j) {
        return f3780e.m2636n(obj, j);
    }

    /* renamed from: p */
    static void m2538p(Object obj, long j, int i) {
        f3780e.m2635o(obj, j, i);
    }

    /* renamed from: q */
    static long m2537q(Object obj, long j) {
        return f3780e.m2634p(obj, j);
    }

    /* renamed from: r */
    static void m2536r(Object obj, long j, long j2) {
        f3780e.m2633q(obj, j, j2);
    }

    /* renamed from: s */
    static boolean m2535s(Object obj, long j) {
        return f3780e.m2647c(obj, j);
    }

    /* renamed from: t */
    static void m2534t(Object obj, long j, boolean z) {
        f3780e.m2646d(obj, j, z);
    }

    /* renamed from: u */
    static float m2533u(Object obj, long j) {
        return f3780e.m2645e(obj, j);
    }

    /* renamed from: v */
    static void m2532v(Object obj, long j, float f) {
        f3780e.m2644f(obj, j, f);
    }

    /* renamed from: w */
    static double m2531w(Object obj, long j) {
        return f3780e.m2643g(obj, j);
    }

    /* renamed from: x */
    static void m2530x(Object obj, long j, double d) {
        f3780e.m2642h(obj, j, d);
    }

    /* renamed from: y */
    public static Object m2529y(Object obj, long j) {
        return f3780e.m2632r(obj, j);
    }

    /* renamed from: z */
    public static void m2528z(Object obj, long j, Object obj2) {
        f3780e.m2631s(obj, j, obj2);
    }
}
