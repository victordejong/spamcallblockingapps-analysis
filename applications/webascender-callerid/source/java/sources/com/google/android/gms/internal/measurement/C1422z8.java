package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.z8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z8.class */
public final class C1422z8 {

    /* renamed from: a */
    private static final Unsafe f4000a;

    /* renamed from: b */
    private static final Class<?> f4001b = C1412y4.m1878b();

    /* renamed from: c */
    private static final boolean f4002c;

    /* renamed from: d */
    private static final boolean f4003d;

    /* renamed from: e */
    private static final AbstractC1415y8 f4004e;

    /* renamed from: f */
    private static final boolean f4005f;

    /* renamed from: g */
    private static final boolean f4006g;

    /* renamed from: h */
    static final long f4007h;

    /* renamed from: i */
    static final boolean f4008i;

    static {
        Unsafe m1842C = m1842C();
        f4000a = m1842C;
        boolean m1829e = m1829e(Long.TYPE);
        f4002c = m1829e;
        boolean m1829e2 = m1829e(Integer.TYPE);
        f4003d = m1829e2;
        AbstractC1415y8 abstractC1415y8 = null;
        if (m1842C != null) {
            if (!C1412y4.m1879a()) {
                abstractC1415y8 = new x8(m1842C);
            } else if (m1829e) {
                abstractC1415y8 = new w8(m1842C);
            } else if (m1829e2) {
                abstractC1415y8 = new v8(m1842C);
            }
        }
        f4004e = abstractC1415y8;
        f4005f = abstractC1415y8 == null ? false : abstractC1415y8.m1861j();
        f4006g = abstractC1415y8 == null ? false : abstractC1415y8.m1862i();
        f4007h = m1831c(byte[].class);
        m1831c(boolean[].class);
        m1830d(boolean[].class);
        m1831c(int[].class);
        m1830d(int[].class);
        m1831c(long[].class);
        m1830d(long[].class);
        m1831c(float[].class);
        m1830d(float[].class);
        m1831c(double[].class);
        m1830d(double[].class);
        m1831c(Object[].class);
        m1830d(Object[].class);
        Field m1828f = m1828f();
        if (m1828f != null && abstractC1415y8 != null) {
            abstractC1415y8.m1860k(m1828f);
        }
        boolean z = false;
        if (ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN) {
            z = true;
        }
        f4008i = z;
    }

    private C1422z8() {
    }

    /* renamed from: A */
    static byte m1844A(byte[] bArr, long j) {
        return f4004e.m1870a(bArr, f4007h + j);
    }

    /* renamed from: B */
    static void m1843B(byte[] bArr, long j, byte b) {
        f4004e.m1869b(bArr, f4007h + j, b);
    }

    /* renamed from: C */
    static Unsafe m1842C() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C1398u8());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: D */
    public static /* synthetic */ void m1841D(Throwable th) {
        Logger logger = Logger.getLogger(C1422z8.class.getName());
        Level level = Level.WARNING;
        String valueOf = String.valueOf(th);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
        sb.append("platform method missing - proto runtime falling back to safer methods: ");
        sb.append(valueOf);
        logger.logp(level, "com.google.protobuf.UnsafeUtil", "logMissingMethod", sb.toString());
    }

    /* renamed from: J */
    static /* synthetic */ boolean m1835J(Object obj, long j) {
        return m1826h(obj, j) != 0;
    }

    /* renamed from: K */
    static /* synthetic */ boolean m1834K(Object obj, long j) {
        return m1825i(obj, j) != 0;
    }

    /* renamed from: c */
    private static int m1831c(Class<?> cls) {
        if (f4006g) {
            return f4004e.m1859l(cls);
        }
        return -1;
    }

    /* renamed from: d */
    private static int m1830d(Class<?> cls) {
        if (f4006g) {
            return f4004e.m1858m(cls);
        }
        return -1;
    }

    /* renamed from: e */
    private static boolean m1829e(Class<?> cls) {
        if (!C1412y4.m1879a()) {
            return false;
        }
        try {
            Class<?> cls2 = f4001b;
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
    public static Field m1828f() {
        Field m1827g;
        if (!C1412y4.m1879a() || (m1827g = m1827g(Buffer.class, "effectiveDirectAddress")) == null) {
            Field m1827g2 = m1827g(Buffer.class, "address");
            if (m1827g2 != null && m1827g2.getType() == Long.TYPE) {
                return m1827g2;
            }
            return null;
        }
        return m1827g;
    }

    /* renamed from: g */
    private static Field m1827g(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: h */
    public static byte m1826h(Object obj, long j) {
        return (byte) ((f4004e.m1857n(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: i */
    public static byte m1825i(Object obj, long j) {
        return (byte) ((f4004e.m1857n(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: j */
    public static void m1824j(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC1415y8 abstractC1415y8 = f4004e;
        int m1857n = abstractC1415y8.m1857n(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        abstractC1415y8.m1856o(obj, j2, ((255 & b) << i) | (m1857n & ((255 << i) ^ (-1))));
    }

    /* renamed from: k */
    public static void m1823k(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        AbstractC1415y8 abstractC1415y8 = f4004e;
        int m1857n = abstractC1415y8.m1857n(obj, j2);
        int i = (((int) j) & 3) << 3;
        abstractC1415y8.m1856o(obj, j2, ((255 & b) << i) | (m1857n & ((255 << i) ^ (-1))));
    }

    /* renamed from: l */
    public static boolean m1822l() {
        return f4006g;
    }

    /* renamed from: m */
    public static boolean m1821m() {
        return f4005f;
    }

    /* renamed from: n */
    static <T> T m1820n(Class<T> cls) {
        try {
            return (T) f4000a.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: o */
    static int m1819o(Object obj, long j) {
        return f4004e.m1857n(obj, j);
    }

    /* renamed from: p */
    static void m1818p(Object obj, long j, int i) {
        f4004e.m1856o(obj, j, i);
    }

    /* renamed from: q */
    static long m1817q(Object obj, long j) {
        return f4004e.m1855p(obj, j);
    }

    /* renamed from: r */
    static void m1816r(Object obj, long j, long j2) {
        f4004e.m1854q(obj, j, j2);
    }

    /* renamed from: s */
    static boolean m1815s(Object obj, long j) {
        return f4004e.m1868c(obj, j);
    }

    /* renamed from: t */
    static void m1814t(Object obj, long j, boolean z) {
        f4004e.m1867d(obj, j, z);
    }

    /* renamed from: u */
    static float m1813u(Object obj, long j) {
        return f4004e.m1866e(obj, j);
    }

    /* renamed from: v */
    static void m1812v(Object obj, long j, float f) {
        f4004e.m1865f(obj, j, f);
    }

    /* renamed from: w */
    static double m1811w(Object obj, long j) {
        return f4004e.m1864g(obj, j);
    }

    /* renamed from: x */
    static void m1810x(Object obj, long j, double d) {
        f4004e.m1863h(obj, j, d);
    }

    /* renamed from: y */
    public static Object m1809y(Object obj, long j) {
        return f4004e.m1853r(obj, j);
    }

    /* renamed from: z */
    public static void m1808z(Object obj, long j, Object obj2) {
        f4004e.m1852s(obj, j, obj2);
    }
}
