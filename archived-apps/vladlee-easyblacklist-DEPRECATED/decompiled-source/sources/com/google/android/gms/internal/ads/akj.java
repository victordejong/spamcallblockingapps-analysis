package com.google.android.gms.internal.ads;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akj.class */
final class akj {

    /* renamed from: a */
    static final long f7524a;

    /* renamed from: b */
    static final boolean f7525b;

    /* renamed from: c */
    private static final Logger f7526c = Logger.getLogger(akj.class.getName());

    /* renamed from: d */
    private static final Unsafe f7527d = m5050c();

    /* renamed from: e */
    private static final Class<?> f7528e = aha.m5425b();

    /* renamed from: f */
    private static final boolean f7529f = m5044d(Long.TYPE);

    /* renamed from: g */
    private static final boolean f7530g = m5044d(Integer.TYPE);

    /* renamed from: h */
    private static final AbstractC1735c f7531h;

    /* renamed from: i */
    private static final boolean f7532i;

    /* renamed from: j */
    private static final boolean f7533j;

    /* renamed from: k */
    private static final long f7534k;

    /* renamed from: l */
    private static final long f7535l;

    /* renamed from: m */
    private static final long f7536m;

    /* renamed from: n */
    private static final long f7537n;

    /* renamed from: o */
    private static final long f7538o;

    /* renamed from: p */
    private static final long f7539p;

    /* renamed from: q */
    private static final long f7540q;

    /* renamed from: r */
    private static final long f7541r;

    /* renamed from: s */
    private static final long f7542s;

    /* renamed from: t */
    private static final long f7543t;

    /* renamed from: u */
    private static final long f7544u;

    /* renamed from: v */
    private static final long f7545v;

    /* renamed from: w */
    private static final long f7546w;

    /* renamed from: x */
    private static final int f7547x;

    /* renamed from: com.google.android.gms.internal.ads.akj$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akj$a.class */
    static final class C1733a extends AbstractC1735c {
        C1733a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final byte mo5026a(Object obj, long j) {
            return akj.f7525b ? akj.m5033k(obj, j) : akj.m5032l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5027a(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5025a(Object obj, long j, byte b) {
            if (akj.f7525b) {
                akj.m5047c(obj, j, b);
            } else {
                akj.m5042d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5024a(Object obj, long j, double d) {
            m5030a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5023a(Object obj, long j, float f) {
            m5031a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5022a(Object obj, long j, boolean z) {
            if (akj.f7525b) {
                akj.m5051b(obj, j, z);
            } else {
                akj.m5046c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5021a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: b */
        public final boolean mo5020b(Object obj, long j) {
            return akj.f7525b ? akj.m5035i(obj, j) : akj.m5034j(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: c */
        public final float mo5019c(Object obj, long j) {
            return Float.intBitsToFloat(m5029e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: d */
        public final double mo5018d(Object obj, long j) {
            return Double.longBitsToDouble(m5028f(obj, j));
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.akj$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akj$b.class */
    static final class C1734b extends AbstractC1735c {
        C1734b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final byte mo5026a(Object obj, long j) {
            return akj.f7525b ? akj.m5033k(obj, j) : akj.m5032l(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5027a(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5025a(Object obj, long j, byte b) {
            if (akj.f7525b) {
                akj.m5047c(obj, j, b);
            } else {
                akj.m5042d(obj, j, b);
            }
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5024a(Object obj, long j, double d) {
            m5030a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5023a(Object obj, long j, float f) {
            m5031a(obj, j, Float.floatToIntBits(f));
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5022a(Object obj, long j, boolean z) {
            if (akj.f7525b) {
                akj.m5051b(obj, j, z);
            } else {
                akj.m5046c(obj, j, z);
            }
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5021a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: b */
        public final boolean mo5020b(Object obj, long j) {
            return akj.f7525b ? akj.m5035i(obj, j) : akj.m5034j(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: c */
        public final float mo5019c(Object obj, long j) {
            return Float.intBitsToFloat(m5029e(obj, j));
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: d */
        public final double mo5018d(Object obj, long j) {
            return Double.longBitsToDouble(m5028f(obj, j));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.gms.internal.ads.akj$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akj$c.class */
    public static abstract class AbstractC1735c {

        /* renamed from: a */
        Unsafe f7548a;

        AbstractC1735c(Unsafe unsafe) {
            this.f7548a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo5026a(Object obj, long j);

        /* renamed from: a */
        public abstract void mo5027a(long j, byte b);

        /* renamed from: a */
        public abstract void mo5025a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo5024a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo5023a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m5031a(Object obj, long j, int i) {
            this.f7548a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m5030a(Object obj, long j, long j2) {
            this.f7548a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo5022a(Object obj, long j, boolean z);

        /* renamed from: a */
        public abstract void mo5021a(byte[] bArr, long j, long j2, long j3);

        /* renamed from: b */
        public abstract boolean mo5020b(Object obj, long j);

        /* renamed from: c */
        public abstract float mo5019c(Object obj, long j);

        /* renamed from: d */
        public abstract double mo5018d(Object obj, long j);

        /* renamed from: e */
        public final int m5029e(Object obj, long j) {
            return this.f7548a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m5028f(Object obj, long j) {
            return this.f7548a.getLong(obj, j);
        }
    }

    /* renamed from: com.google.android.gms.internal.ads.akj$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akj$d.class */
    static final class C1736d extends AbstractC1735c {
        C1736d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final byte mo5026a(Object obj, long j) {
            return this.f7548a.getByte(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5027a(long j, byte b) {
            this.f7548a.putByte(j, b);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5025a(Object obj, long j, byte b) {
            this.f7548a.putByte(obj, j, b);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5024a(Object obj, long j, double d) {
            this.f7548a.putDouble(obj, j, d);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5023a(Object obj, long j, float f) {
            this.f7548a.putFloat(obj, j, f);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5022a(Object obj, long j, boolean z) {
            this.f7548a.putBoolean(obj, j, z);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: a */
        public final void mo5021a(byte[] bArr, long j, long j2, long j3) {
            this.f7548a.copyMemory(bArr, akj.f7524a + j, (Object) null, j2, j3);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: b */
        public final boolean mo5020b(Object obj, long j) {
            return this.f7548a.getBoolean(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: c */
        public final float mo5019c(Object obj, long j) {
            return this.f7548a.getFloat(obj, j);
        }

        @Override // com.google.android.gms.internal.ads.akj.AbstractC1735c
        /* renamed from: d */
        public final double mo5018d(Object obj, long j) {
            return this.f7548a.getDouble(obj, j);
        }
    }

    static {
        AbstractC1735c cVar;
        AbstractC1735c cVar2 = null;
        if (f7527d != null) {
            if (!aha.m5427a()) {
                cVar2 = new C1736d(f7527d);
            } else if (f7529f) {
                cVar2 = new C1733a(f7527d);
            } else if (f7530g) {
                cVar2 = new C1734b(f7527d);
            }
        }
        f7531h = cVar2;
        f7532i = m5041e();
        f7533j = m5045d();
        f7524a = m5054b(byte[].class);
        f7534k = m5054b(boolean[].class);
        f7535l = m5049c(boolean[].class);
        f7536m = m5054b(int[].class);
        f7537n = m5049c(int[].class);
        f7538o = m5054b(long[].class);
        f7539p = m5049c(long[].class);
        f7540q = m5054b(float[].class);
        f7541r = m5049c(float[].class);
        f7542s = m5054b(double[].class);
        f7543t = m5049c(double[].class);
        f7544u = m5054b(Object[].class);
        f7545v = m5049c(Object[].class);
        Field f = m5039f();
        f7546w = (f == null || (cVar = f7531h) == null) ? -1L : cVar.f7548a.objectFieldOffset(f);
        f7547x = (int) (f7524a & 7);
        f7525b = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    private akj() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static byte m5058a(byte[] bArr, long j) {
        return f7531h.mo5026a(bArr, f7524a + j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m5067a(Object obj, long j) {
        return f7531h.m5029e(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static long m5059a(ByteBuffer byteBuffer) {
        return f7531h.m5028f(byteBuffer, f7546w);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> T m5069a(Class<T> cls) {
        try {
            return (T) f7527d.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    private static Field m5068a(Class<?> cls, String str) {
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
    public static void m5070a(long j, byte b) {
        f7531h.mo5027a(j, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5065a(Object obj, long j, double d) {
        f7531h.mo5024a(obj, j, d);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5064a(Object obj, long j, float f) {
        f7531h.mo5023a(obj, j, f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5063a(Object obj, long j, int i) {
        f7531h.m5031a(obj, j, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5062a(Object obj, long j, long j2) {
        f7531h.m5030a(obj, j, j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5061a(Object obj, long j, Object obj2) {
        f7531h.f7548a.putObject(obj, j, obj2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5060a(Object obj, long j, boolean z) {
        f7531h.mo5022a(obj, j, z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5057a(byte[] bArr, long j, byte b) {
        f7531h.mo5025a((Object) bArr, f7524a + j, b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m5056a(byte[] bArr, long j, long j2, long j3) {
        f7531h.mo5021a(bArr, j, j2, j3);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static boolean m5071a() {
        return f7533j;
    }

    /* renamed from: b */
    private static int m5054b(Class<?> cls) {
        if (f7533j) {
            return f7531h.f7548a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static long m5053b(Object obj, long j) {
        return f7531h.m5028f(obj, j);
    }

    /* renamed from: b */
    static /* synthetic */ void m5051b(Object obj, long j, boolean z) {
        m5047c(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m5055b() {
        return f7532i;
    }

    /* renamed from: c */
    private static int m5049c(Class<?> cls) {
        if (f7533j) {
            return f7531h.f7548a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Unsafe m5050c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new aki());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public static void m5047c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m5067a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m5063a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    static /* synthetic */ void m5046c(Object obj, long j, boolean z) {
        m5042d(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static boolean m5048c(Object obj, long j) {
        return f7531h.mo5020b(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static float m5043d(Object obj, long j) {
        return f7531h.mo5019c(obj, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public static void m5042d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m5067a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m5063a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    private static boolean m5045d() {
        Unsafe unsafe = f7527d;
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
            if (aha.m5427a()) {
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
            Logger logger = f7526c;
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
    private static boolean m5044d(Class<?> cls) {
        if (!aha.m5427a()) {
            return false;
        }
        try {
            Class<?> cls2 = f7528e;
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
    public static double m5040e(Object obj, long j) {
        return f7531h.mo5018d(obj, j);
    }

    /* renamed from: e */
    private static boolean m5041e() {
        Unsafe unsafe = f7527d;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m5039f() == null) {
                return false;
            }
            if (aha.m5427a()) {
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
            Logger logger = f7526c;
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
    public static Object m5038f(Object obj, long j) {
        return f7531h.f7548a.getObject(obj, j);
    }

    /* renamed from: f */
    private static Field m5039f() {
        Field a;
        if (aha.m5427a() && (a = m5068a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m5068a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: i */
    static /* synthetic */ boolean m5035i(Object obj, long j) {
        return m5033k(obj, j) != 0;
    }

    /* renamed from: j */
    static /* synthetic */ boolean m5034j(Object obj, long j) {
        return m5032l(obj, j) != 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: k */
    public static byte m5033k(Object obj, long j) {
        return (byte) (m5067a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: l */
    public static byte m5032l(Object obj, long j) {
        return (byte) (m5067a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }
}
