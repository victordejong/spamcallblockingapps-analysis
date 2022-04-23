package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.ep */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ep.class */
final class C2588ep {

    /* renamed from: a */
    static final boolean f16043a;

    /* renamed from: b */
    private static final Logger f16044b = Logger.getLogger(C2588ep.class.getName());

    /* renamed from: c */
    private static final Unsafe f16045c = m2567c();

    /* renamed from: d */
    private static final Class<?> f16046d = C2509br.m2896b();

    /* renamed from: e */
    private static final boolean f16047e = m2561d(Long.TYPE);

    /* renamed from: f */
    private static final boolean f16048f = m2561d(Integer.TYPE);

    /* renamed from: g */
    private static final AbstractC2592d f16049g;

    /* renamed from: h */
    private static final boolean f16050h;

    /* renamed from: i */
    private static final boolean f16051i;

    /* renamed from: j */
    private static final long f16052j;

    /* renamed from: k */
    private static final long f16053k;

    /* renamed from: l */
    private static final long f16054l;

    /* renamed from: m */
    private static final long f16055m;

    /* renamed from: n */
    private static final long f16056n;

    /* renamed from: o */
    private static final long f16057o;

    /* renamed from: p */
    private static final long f16058p;

    /* renamed from: q */
    private static final long f16059q;

    /* renamed from: r */
    private static final long f16060r;

    /* renamed from: s */
    private static final long f16061s;

    /* renamed from: t */
    private static final long f16062t;

    /* renamed from: u */
    private static final long f16063u;

    /* renamed from: v */
    private static final long f16064v;

    /* renamed from: w */
    private static final long f16065w;

    /* renamed from: x */
    private static final int f16066x;

    /* renamed from: com.google.android.gms.internal.measurement.ep$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ep$a.class */
    static final class C2589a extends AbstractC2592d {
        C2589a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final byte mo2548a(Object obj, long j) {
            return C2588ep.f16043a ? C2588ep.m2550k(obj, j) : C2588ep.m2549l(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2547a(Object obj, long j, byte b) {
            if (C2588ep.f16043a) {
                C2588ep.m2564c(obj, j, b);
            } else {
                C2588ep.m2559d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2546a(Object obj, long j, double d) {
            m2543a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2545a(Object obj, long j, float f) {
            m2544a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2542a(Object obj, long j, boolean z) {
            if (C2588ep.f16043a) {
                C2588ep.m2568b(obj, j, z);
            } else {
                C2588ep.m2563c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: b */
        public final boolean mo2541b(Object obj, long j) {
            return C2588ep.f16043a ? C2588ep.m2552i(obj, j) : C2588ep.m2551j(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: c */
        public final float mo2540c(Object obj, long j) {
            return Float.intBitsToFloat(m2538e(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: d */
        public final double mo2539d(Object obj, long j) {
            return Double.longBitsToDouble(m2537f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ep$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ep$b.class */
    static final class C2590b extends AbstractC2592d {
        C2590b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final byte mo2548a(Object obj, long j) {
            return this.f16067a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2547a(Object obj, long j, byte b) {
            this.f16067a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2546a(Object obj, long j, double d) {
            this.f16067a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2545a(Object obj, long j, float f) {
            this.f16067a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2542a(Object obj, long j, boolean z) {
            this.f16067a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: b */
        public final boolean mo2541b(Object obj, long j) {
            return this.f16067a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: c */
        public final float mo2540c(Object obj, long j) {
            return this.f16067a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: d */
        public final double mo2539d(Object obj, long j) {
            return this.f16067a.getDouble(obj, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.measurement.ep$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ep$c.class */
    static final class C2591c extends AbstractC2592d {
        C2591c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final byte mo2548a(Object obj, long j) {
            return C2588ep.f16043a ? C2588ep.m2550k(obj, j) : C2588ep.m2549l(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2547a(Object obj, long j, byte b) {
            if (C2588ep.f16043a) {
                C2588ep.m2564c(obj, j, b);
            } else {
                C2588ep.m2559d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2546a(Object obj, long j, double d) {
            m2543a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2545a(Object obj, long j, float f) {
            m2544a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: a */
        public final void mo2542a(Object obj, long j, boolean z) {
            if (C2588ep.f16043a) {
                C2588ep.m2568b(obj, j, z);
            } else {
                C2588ep.m2563c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: b */
        public final boolean mo2541b(Object obj, long j) {
            return C2588ep.f16043a ? C2588ep.m2552i(obj, j) : C2588ep.m2551j(obj, j);
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: c */
        public final float mo2540c(Object obj, long j) {
            return Float.intBitsToFloat(m2538e(obj, j));
        }

        @Override // com.google.android.gms.internal.measurement.C2588ep.AbstractC2592d
        /* renamed from: d */
        public final double mo2539d(Object obj, long j) {
            return Double.longBitsToDouble(m2537f(obj, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.measurement.ep$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ep$d.class */
    public static abstract class AbstractC2592d {

        /* renamed from: a */
        Unsafe f16067a;

        AbstractC2592d(Unsafe unsafe) {
            this.f16067a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo2548a(Object obj, long j);

        /* renamed from: a */
        public abstract void mo2547a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo2546a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo2545a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m2544a(Object obj, long j, int i) {
            this.f16067a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m2543a(Object obj, long j, long j2) {
            this.f16067a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo2542a(Object obj, long j, boolean z);

        /* renamed from: b */
        public abstract boolean mo2541b(Object obj, long j);

        /* renamed from: c */
        public abstract float mo2540c(Object obj, long j);

        /* renamed from: d */
        public abstract double mo2539d(Object obj, long j);

        /* renamed from: e */
        public final int m2538e(Object obj, long j) {
            return this.f16067a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m2537f(Object obj, long j) {
            return this.f16067a.getLong(obj, j);
        }
    }

    static {
        AbstractC2592d dVar;
        AbstractC2592d dVar2 = null;
        if (f16045c != null) {
            if (!C2509br.m2898a()) {
                dVar2 = new C2590b(f16045c);
            } else if (f16047e) {
                dVar2 = new C2591c(f16045c);
            } else if (f16048f) {
                dVar2 = new C2589a(f16045c);
            }
        }
        f16049g = dVar2;
        f16050h = m2558e();
        f16051i = m2562d();
        f16052j = m2571b(byte[].class);
        f16053k = m2571b(boolean[].class);
        f16054l = m2566c(boolean[].class);
        f16055m = m2571b(int[].class);
        f16056n = m2566c(int[].class);
        f16057o = m2571b(long[].class);
        f16058p = m2566c(long[].class);
        f16059q = m2571b(float[].class);
        f16060r = m2566c(float[].class);
        f16061s = m2571b(double[].class);
        f16062t = m2566c(double[].class);
        f16063u = m2571b(Object[].class);
        f16064v = m2566c(Object[].class);
        Field f = m2556f();
        f16065w = (f == null || (dVar = f16049g) == null) ? -1L : dVar.f16067a.objectFieldOffset(f);
        f16066x = (int) (f16052j & 7);
        f16043a = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private C2588ep() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static byte m2574a(byte[] bArr, long j) {
        return f16049g.mo2548a(bArr, f16052j + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m2582a(Object obj, long j) {
        return f16049g.m2538e(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m2584a(Class<T> cls) {
        try {
            return (T) f16045c.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    private static Field m2583a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2580a(Object obj, long j, double d) {
        f16049g.mo2546a(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2579a(Object obj, long j, float f) {
        f16049g.mo2545a(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2578a(Object obj, long j, int i) {
        f16049g.m2544a(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2577a(Object obj, long j, long j2) {
        f16049g.m2543a(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2576a(Object obj, long j, Object obj2) {
        f16049g.f16067a.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2575a(Object obj, long j, boolean z) {
        f16049g.mo2542a(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m2573a(byte[] bArr, long j, byte b) {
        f16049g.mo2547a((Object) bArr, f16052j + j, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m2585a() {
        return f16051i;
    }

    /* renamed from: b */
    private static int m2571b(Class<?> cls) {
        if (f16051i) {
            return f16049g.f16067a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static long m2570b(Object obj, long j) {
        return f16049g.m2537f(obj, j);
    }

    /* renamed from: b */
    static /* synthetic */ void m2568b(Object obj, long j, boolean z) {
        m2564c(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m2572b() {
        return f16050h;
    }

    /* renamed from: c */
    private static int m2566c(Class<?> cls) {
        if (f16051i) {
            return f16049g.f16067a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Unsafe m2567c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C2594er());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m2564c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m2582a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m2578a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    static /* synthetic */ void m2563c(Object obj, long j, boolean z) {
        m2559d(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static boolean m2565c(Object obj, long j) {
        return f16049g.mo2541b(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static float m2560d(Object obj, long j) {
        return f16049g.mo2540c(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m2559d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m2582a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m2578a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    private static boolean m2562d() {
        Unsafe unsafe = f16045c;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("arrayBaseOffset", Class.class);
            cls.getMethod("arrayIndexScale", Class.class);
            cls.getMethod("getInt", Object.class, Long.TYPE);
            cls.getMethod("putInt", Object.class, Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            cls.getMethod("putLong", Object.class, Long.TYPE, Long.TYPE);
            cls.getMethod("getObject", Object.class, Long.TYPE);
            cls.getMethod("putObject", Object.class, Long.TYPE, Object.class);
            if (C2509br.m2898a()) {
                return true;
            }
            cls.getMethod("getByte", Object.class, Long.TYPE);
            cls.getMethod("putByte", Object.class, Long.TYPE, Byte.TYPE);
            cls.getMethod("getBoolean", Object.class, Long.TYPE);
            cls.getMethod("putBoolean", Object.class, Long.TYPE, Boolean.TYPE);
            cls.getMethod("getFloat", Object.class, Long.TYPE);
            cls.getMethod("putFloat", Object.class, Long.TYPE, Float.TYPE);
            cls.getMethod("getDouble", Object.class, Long.TYPE);
            cls.getMethod("putDouble", Object.class, Long.TYPE, Double.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f16044b;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: d */
    private static boolean m2561d(Class<?> cls) {
        if (!C2509br.m2898a()) {
            return false;
        }
        try {
            Class<?> cls2 = f16046d;
            cls2.getMethod("peekLong", cls, Boolean.TYPE);
            cls2.getMethod("pokeLong", cls, Long.TYPE, Boolean.TYPE);
            cls2.getMethod("pokeInt", cls, Integer.TYPE, Boolean.TYPE);
            cls2.getMethod("peekInt", cls, Boolean.TYPE);
            cls2.getMethod("pokeByte", cls, Byte.TYPE);
            cls2.getMethod("peekByte", cls);
            cls2.getMethod("pokeByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            cls2.getMethod("peekByteArray", cls, byte[].class, Integer.TYPE, Integer.TYPE);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static double m2557e(Object obj, long j) {
        return f16049g.mo2539d(obj, j);
    }

    /* renamed from: e */
    private static boolean m2558e() {
        Unsafe unsafe = f16045c;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m2556f() == null) {
                return false;
            }
            if (C2509br.m2898a()) {
                return true;
            }
            cls.getMethod("getByte", Long.TYPE);
            cls.getMethod("putByte", Long.TYPE, Byte.TYPE);
            cls.getMethod("getInt", Long.TYPE);
            cls.getMethod("putInt", Long.TYPE, Integer.TYPE);
            cls.getMethod("getLong", Long.TYPE);
            cls.getMethod("putLong", Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Long.TYPE, Long.TYPE, Long.TYPE);
            cls.getMethod("copyMemory", Object.class, Long.TYPE, Object.class, Long.TYPE, Long.TYPE);
            return true;
        } catch (Throwable th) {
            Logger logger = f16044b;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public static Object m2555f(Object obj, long j) {
        return f16049g.f16067a.getObject(obj, j);
    }

    /* renamed from: f */
    private static Field m2556f() {
        Field a;
        if (C2509br.m2898a() && (a = m2583a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m2583a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: i */
    static /* synthetic */ boolean m2552i(Object obj, long j) {
        return m2550k(obj, j) != 0;
    }

    /* renamed from: j */
    static /* synthetic */ boolean m2551j(Object obj, long j) {
        return m2549l(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static byte m2550k(Object obj, long j) {
        return (byte) (m2582a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static byte m2549l(Object obj, long j) {
        return (byte) (m2582a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }
}
