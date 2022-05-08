package p081h.p203i.p204a.p224e.p259j.p269j;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.util.logging.Level;
import java.util.logging.Logger;
import libcore.io.Memory;
import sun.misc.Unsafe;
/* renamed from: h.i.a.e.j.j.j4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j4.class */
public final class C7838j4 {

    /* renamed from: a */
    public static final Logger f18364a = Logger.getLogger(C7838j4.class.getName());

    /* renamed from: b */
    public static final Unsafe f18365b = m19309d();

    /* renamed from: c */
    public static final Class<?> f18366c = C7767b0.m19518b();

    /* renamed from: d */
    public static final boolean f18367d = m19313c(Long.TYPE);

    /* renamed from: e */
    public static final boolean f18368e = m19313c(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC7842d f18369f;

    /* renamed from: g */
    public static final boolean f18370g;

    /* renamed from: h */
    public static final boolean f18371h;

    /* renamed from: i */
    public static final long f18372i;

    /* renamed from: j */
    public static final long f18373j;

    /* renamed from: k */
    public static final boolean f18374k;

    /* renamed from: h.i.a.e.j.j.j4$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j4$a.class */
    public static final class C7839a extends AbstractC7842d {
        public C7839a(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19290a(long j, byte b) {
            Memory.pokeByte((int) (j & (-1)), b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19288a(Object obj, long j, byte b) {
            if (C7838j4.f18374k) {
                C7838j4.m19330a(obj, j, b);
            } else {
                C7838j4.m19316b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19287a(Object obj, long j, double d) {
            m19284a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19286a(Object obj, long j, float f) {
            m19285a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19283a(Object obj, long j, boolean z) {
            if (C7838j4.f18374k) {
                C7838j4.m19315b(obj, j, z);
            } else {
                C7838j4.m19310c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19282a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray((int) (j2 & (-1)), bArr, (int) j, (int) j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: c */
        public final boolean mo19280c(Object obj, long j) {
            return C7838j4.f18374k ? C7838j4.m19296i(obj, j) : C7838j4.m19295j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: d */
        public final float mo19279d(Object obj, long j) {
            return Float.intBitsToFloat(m19289a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: e */
        public final double mo19278e(Object obj, long j) {
            return Double.longBitsToDouble(m19281b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: f */
        public final byte mo19277f(Object obj, long j) {
            return C7838j4.f18374k ? C7838j4.m19299g(obj, j) : C7838j4.m19297h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.j.j4$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j4$b.class */
    public static final class C7840b extends AbstractC7842d {
        public C7840b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19290a(long j, byte b) {
            Memory.pokeByte(j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19288a(Object obj, long j, byte b) {
            if (C7838j4.f18374k) {
                C7838j4.m19330a(obj, j, b);
            } else {
                C7838j4.m19316b(obj, j, b);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19287a(Object obj, long j, double d) {
            m19284a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19286a(Object obj, long j, float f) {
            m19285a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19283a(Object obj, long j, boolean z) {
            if (C7838j4.f18374k) {
                C7838j4.m19315b(obj, j, z);
            } else {
                C7838j4.m19310c(obj, j, z);
            }
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19282a(byte[] bArr, long j, long j2, long j3) {
            Memory.pokeByteArray(j2, bArr, (int) j, (int) j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: c */
        public final boolean mo19280c(Object obj, long j) {
            return C7838j4.f18374k ? C7838j4.m19296i(obj, j) : C7838j4.m19295j(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: d */
        public final float mo19279d(Object obj, long j) {
            return Float.intBitsToFloat(m19289a(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: e */
        public final double mo19278e(Object obj, long j) {
            return Double.longBitsToDouble(m19281b(obj, j));
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: f */
        public final byte mo19277f(Object obj, long j) {
            return C7838j4.f18374k ? C7838j4.m19299g(obj, j) : C7838j4.m19297h(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.j.j4$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j4$c.class */
    public static final class C7841c extends AbstractC7842d {
        public C7841c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19290a(long j, byte b) {
            this.f18375a.putByte(j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19288a(Object obj, long j, byte b) {
            this.f18375a.putByte(obj, j, b);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19287a(Object obj, long j, double d) {
            this.f18375a.putDouble(obj, j, d);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19286a(Object obj, long j, float f) {
            this.f18375a.putFloat(obj, j, f);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19283a(Object obj, long j, boolean z) {
            this.f18375a.putBoolean(obj, j, z);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: a */
        public final void mo19282a(byte[] bArr, long j, long j2, long j3) {
            this.f18375a.copyMemory(bArr, C7838j4.f18372i + j, (Object) null, j2, j3);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: c */
        public final boolean mo19280c(Object obj, long j) {
            return this.f18375a.getBoolean(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: d */
        public final float mo19279d(Object obj, long j) {
            return this.f18375a.getFloat(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: e */
        public final double mo19278e(Object obj, long j) {
            return this.f18375a.getDouble(obj, j);
        }

        @Override // p081h.p203i.p204a.p224e.p259j.p269j.C7838j4.AbstractC7842d
        /* renamed from: f */
        public final byte mo19277f(Object obj, long j) {
            return this.f18375a.getByte(obj, j);
        }
    }

    /* renamed from: h.i.a.e.j.j.j4$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/j/j/j4$d.class */
    public static abstract class AbstractC7842d {

        /* renamed from: a */
        public Unsafe f18375a;

        public AbstractC7842d(Unsafe unsafe) {
            this.f18375a = unsafe;
        }

        /* renamed from: a */
        public final int m19289a(Object obj, long j) {
            return this.f18375a.getInt(obj, j);
        }

        /* renamed from: a */
        public abstract void mo19290a(long j, byte b);

        /* renamed from: a */
        public abstract void mo19288a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo19287a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo19286a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m19285a(Object obj, long j, int i) {
            this.f18375a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m19284a(Object obj, long j, long j2) {
            this.f18375a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public abstract void mo19283a(Object obj, long j, boolean z);

        /* renamed from: a */
        public abstract void mo19282a(byte[] bArr, long j, long j2, long j3);

        /* renamed from: b */
        public final long m19281b(Object obj, long j) {
            return this.f18375a.getLong(obj, j);
        }

        /* renamed from: c */
        public abstract boolean mo19280c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo19279d(Object obj, long j);

        /* renamed from: e */
        public abstract double mo19278e(Object obj, long j);

        /* renamed from: f */
        public abstract byte mo19277f(Object obj, long j);
    }

    static {
        AbstractC7842d dVar;
        AbstractC7842d dVar2 = null;
        if (f18365b != null) {
            if (!C7767b0.m19520a()) {
                dVar2 = new C7841c(f18365b);
            } else if (f18367d) {
                dVar2 = new C7840b(f18365b);
            } else if (f18368e) {
                dVar2 = new C7839a(f18365b);
            }
        }
        f18369f = dVar2;
        f18370g = m19302f();
        f18371h = m19305e();
        f18372i = m19333a(byte[].class);
        m19333a(boolean[].class);
        m19318b(boolean[].class);
        m19333a(int[].class);
        m19318b(int[].class);
        m19333a(long[].class);
        m19318b(long[].class);
        m19333a(float[].class);
        m19318b(float[].class);
        m19333a(double[].class);
        m19318b(double[].class);
        m19333a(Object[].class);
        m19318b(Object[].class);
        Field g = m19300g();
        f18373j = (g == null || (dVar = f18369f) == null) ? -1L : dVar.f18375a.objectFieldOffset(g);
        f18374k = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m19322a(byte[] bArr, long j) {
        return f18369f.mo19277f(bArr, f18372i + j);
    }

    /* renamed from: a */
    public static int m19333a(Class<?> cls) {
        if (f18371h) {
            return f18369f.f18375a.arrayBaseOffset(cls);
        }
        return -1;
    }

    /* renamed from: a */
    public static int m19331a(Object obj, long j) {
        return f18369f.m19289a(obj, j);
    }

    /* renamed from: a */
    public static long m19323a(ByteBuffer byteBuffer) {
        return f18369f.m19281b(byteBuffer, f18373j);
    }

    /* renamed from: a */
    public static Field m19332a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
            field.setAccessible(true);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m19334a(long j, byte b) {
        f18369f.mo19290a(j, b);
    }

    /* renamed from: a */
    public static void m19330a(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m19331a(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m19327a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: a */
    public static void m19329a(Object obj, long j, double d) {
        f18369f.mo19287a(obj, j, d);
    }

    /* renamed from: a */
    public static void m19328a(Object obj, long j, float f) {
        f18369f.mo19286a(obj, j, f);
    }

    /* renamed from: a */
    public static void m19327a(Object obj, long j, int i) {
        f18369f.m19285a(obj, j, i);
    }

    /* renamed from: a */
    public static void m19326a(Object obj, long j, long j2) {
        f18369f.m19284a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m19325a(Object obj, long j, Object obj2) {
        f18369f.f18375a.putObject(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m19324a(Object obj, long j, boolean z) {
        f18369f.mo19283a(obj, j, z);
    }

    /* renamed from: a */
    public static void m19321a(byte[] bArr, long j, byte b) {
        f18369f.mo19288a((Object) bArr, f18372i + j, b);
    }

    /* renamed from: a */
    public static void m19320a(byte[] bArr, long j, long j2, long j3) {
        f18369f.mo19282a(bArr, j, j2, j3);
    }

    /* renamed from: b */
    public static int m19318b(Class<?> cls) {
        if (f18371h) {
            return f18369f.f18375a.arrayIndexScale(cls);
        }
        return -1;
    }

    /* renamed from: b */
    public static long m19317b(Object obj, long j) {
        return f18369f.m19281b(obj, j);
    }

    /* renamed from: b */
    public static void m19316b(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int a = m19331a(obj, j2);
        int i = (((int) j) & 3) << 3;
        m19327a(obj, j2, ((255 & b) << i) | (a & ((255 << i) ^ (-1))));
    }

    /* renamed from: b */
    public static void m19315b(Object obj, long j, boolean z) {
        m19330a(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: b */
    public static boolean m19319b() {
        return f18371h;
    }

    /* renamed from: c */
    public static void m19310c(Object obj, long j, boolean z) {
        m19316b(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: c */
    public static boolean m19314c() {
        return f18370g;
    }

    /* renamed from: c */
    public static boolean m19313c(Class<?> cls) {
        if (!C7767b0.m19520a()) {
            return false;
        }
        try {
            Class<?> cls2 = f18366c;
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

    /* renamed from: c */
    public static boolean m19312c(Object obj, long j) {
        return f18369f.mo19280c(obj, j);
    }

    /* renamed from: d */
    public static float m19308d(Object obj, long j) {
        return f18369f.mo19279d(obj, j);
    }

    /* renamed from: d */
    public static Unsafe m19309d() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C7850k4());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: e */
    public static double m19304e(Object obj, long j) {
        return f18369f.mo19278e(obj, j);
    }

    /* renamed from: e */
    public static boolean m19305e() {
        Unsafe unsafe = f18365b;
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
            if (C7767b0.m19520a()) {
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
            Logger logger = f18364a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeArrayOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: f */
    public static Object m19301f(Object obj, long j) {
        return f18369f.f18375a.getObject(obj, j);
    }

    /* renamed from: f */
    public static boolean m19302f() {
        Unsafe unsafe = f18365b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m19300g() == null) {
                return false;
            }
            if (C7767b0.m19520a()) {
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
            Logger logger = f18364a;
            Level level = Level.WARNING;
            String valueOf = String.valueOf(th);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 71);
            sb.append("platform method missing - proto runtime falling back to safer methods: ");
            sb.append(valueOf);
            logger.logp(level, "com.google.protobuf.UnsafeUtil", "supportsUnsafeByteBufferOperations", sb.toString());
            return false;
        }
    }

    /* renamed from: g */
    public static byte m19299g(Object obj, long j) {
        return (byte) (m19331a(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3)));
    }

    /* renamed from: g */
    public static Field m19300g() {
        Field a;
        if (C7767b0.m19520a() && (a = m19332a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m19332a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            return null;
        }
        return a2;
    }

    /* renamed from: h */
    public static byte m19297h(Object obj, long j) {
        return (byte) (m19331a(obj, (-4) & j) >>> ((int) ((j & 3) << 3)));
    }

    /* renamed from: i */
    public static boolean m19296i(Object obj, long j) {
        return m19299g(obj, j) != 0;
    }

    /* renamed from: j */
    public static boolean m19295j(Object obj, long j) {
        return m19297h(obj, j) != 0;
    }
}
