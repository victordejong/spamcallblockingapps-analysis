package p131c.p161d.p367h;

import java.lang.reflect.Field;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedExceptionAction;
import java.util.logging.Level;
import java.util.logging.Logger;
import sun.misc.Unsafe;
/* renamed from: c.d.h.m1 */
/* loaded from: classes2-dex2jar.jar:c/d/h/m1.class */
public final class C6347m1 {

    /* renamed from: a */
    public static final Logger f19989a = Logger.getLogger(C6347m1.class.getName());

    /* renamed from: b */
    public static final Unsafe f19990b = m21225c();

    /* renamed from: c */
    public static final Class<?> f19991c = C6288d.m21671a();

    /* renamed from: d */
    public static final boolean f19992d = m21219d(Long.TYPE);

    /* renamed from: e */
    public static final boolean f19993e = m21219d(Integer.TYPE);

    /* renamed from: f */
    public static final AbstractC6352e f19994f = m21232b();

    /* renamed from: g */
    public static final boolean f19995g = m21210g();

    /* renamed from: h */
    public static final boolean f19996h = m21212f();

    /* renamed from: i */
    public static final long f19997i = m21230b(byte[].class);

    /* renamed from: j */
    public static final long f19998j = m21236a(m21249a());

    /* renamed from: k */
    public static final boolean f19999k;

    /* renamed from: c.d.h.m1$a */
    /* loaded from: classes2-dex2jar.jar:c/d/h/m1$a.class */
    public static final class C6348a implements PrivilegedExceptionAction<Unsafe> {
        @Override // java.security.PrivilegedExceptionAction
        public Unsafe run() throws Exception {
            Field[] declaredFields;
            for (Field field : Unsafe.class.getDeclaredFields()) {
                field.setAccessible(true);
                Object obj = field.get(null);
                if (Unsafe.class.isInstance(obj)) {
                    return (Unsafe) Unsafe.class.cast(obj);
                }
            }
            return null;
        }
    }

    /* renamed from: c.d.h.m1$b */
    /* loaded from: classes2-dex2jar.jar:c/d/h/m1$b.class */
    public static final class C6349b extends AbstractC6352e {
        public C6349b(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public byte mo21201a(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21200a(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21197a(Object obj, long j, byte b) {
            if (C6347m1.f19999k) {
                C6347m1.m21222c(obj, j, b);
            } else {
                C6347m1.m21217d(obj, j, b);
            }
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21196a(Object obj, long j, double d) {
            m21193a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21195a(Object obj, long j, float f) {
            m21194a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21191a(Object obj, long j, boolean z) {
            if (C6347m1.f19999k) {
                C6347m1.m21216d(obj, j, z);
            } else {
                C6347m1.m21213e(obj, j, z);
            }
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public boolean mo21198a(Object obj, long j) {
            return C6347m1.f19999k ? C6347m1.m21211f(obj, j) : C6347m1.m21209g(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: b */
        public byte mo21187b(Object obj, long j) {
            return C6347m1.f19999k ? C6347m1.m21208h(obj, j) : C6347m1.m21207i(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: b */
        public long mo21189b(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: c */
        public double mo21186c(Object obj, long j) {
            return Double.longBitsToDouble(m21183f(obj, j));
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: d */
        public float mo21185d(Object obj, long j) {
            return Float.intBitsToFloat(m21184e(obj, j));
        }
    }

    /* renamed from: c.d.h.m1$c */
    /* loaded from: classes2-dex2jar.jar:c/d/h/m1$c.class */
    public static final class C6350c extends AbstractC6352e {
        public C6350c(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public byte mo21201a(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21200a(long j, byte[] bArr, long j2, long j3) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21197a(Object obj, long j, byte b) {
            if (C6347m1.f19999k) {
                C6347m1.m21222c(obj, j, b);
            } else {
                C6347m1.m21217d(obj, j, b);
            }
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21196a(Object obj, long j, double d) {
            m21193a(obj, j, Double.doubleToLongBits(d));
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21195a(Object obj, long j, float f) {
            m21194a(obj, j, Float.floatToIntBits(f));
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21191a(Object obj, long j, boolean z) {
            if (C6347m1.f19999k) {
                C6347m1.m21216d(obj, j, z);
            } else {
                C6347m1.m21213e(obj, j, z);
            }
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public boolean mo21198a(Object obj, long j) {
            return C6347m1.f19999k ? C6347m1.m21211f(obj, j) : C6347m1.m21209g(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: b */
        public byte mo21187b(Object obj, long j) {
            return C6347m1.f19999k ? C6347m1.m21208h(obj, j) : C6347m1.m21207i(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: b */
        public long mo21189b(long j) {
            throw new UnsupportedOperationException();
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: c */
        public double mo21186c(Object obj, long j) {
            return Double.longBitsToDouble(m21183f(obj, j));
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: d */
        public float mo21185d(Object obj, long j) {
            return Float.intBitsToFloat(m21184e(obj, j));
        }
    }

    /* renamed from: c.d.h.m1$d */
    /* loaded from: classes2-dex2jar.jar:c/d/h/m1$d.class */
    public static final class C6351d extends AbstractC6352e {
        public C6351d(Unsafe unsafe) {
            super(unsafe);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public byte mo21201a(long j) {
            return this.f20000a.getByte(j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21200a(long j, byte[] bArr, long j2, long j3) {
            this.f20000a.copyMemory((Object) null, j, bArr, C6347m1.f19997i + j2, j3);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21197a(Object obj, long j, byte b) {
            this.f20000a.putByte(obj, j, b);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21196a(Object obj, long j, double d) {
            this.f20000a.putDouble(obj, j, d);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21195a(Object obj, long j, float f) {
            this.f20000a.putFloat(obj, j, f);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public void mo21191a(Object obj, long j, boolean z) {
            this.f20000a.putBoolean(obj, j, z);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: a */
        public boolean mo21198a(Object obj, long j) {
            return this.f20000a.getBoolean(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: b */
        public byte mo21187b(Object obj, long j) {
            return this.f20000a.getByte(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: b */
        public long mo21189b(long j) {
            return this.f20000a.getLong(j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: c */
        public double mo21186c(Object obj, long j) {
            return this.f20000a.getDouble(obj, j);
        }

        @Override // p131c.p161d.p367h.C6347m1.AbstractC6352e
        /* renamed from: d */
        public float mo21185d(Object obj, long j) {
            return this.f20000a.getFloat(obj, j);
        }
    }

    /* renamed from: c.d.h.m1$e */
    /* loaded from: classes2-dex2jar.jar:c/d/h/m1$e.class */
    public static abstract class AbstractC6352e {

        /* renamed from: a */
        public Unsafe f20000a;

        public AbstractC6352e(Unsafe unsafe) {
            this.f20000a = unsafe;
        }

        /* renamed from: a */
        public abstract byte mo21201a(long j);

        /* renamed from: a */
        public final int m21199a(Class<?> cls) {
            return this.f20000a.arrayBaseOffset(cls);
        }

        /* renamed from: a */
        public final long m21190a(Field field) {
            return this.f20000a.objectFieldOffset(field);
        }

        /* renamed from: a */
        public abstract void mo21200a(long j, byte[] bArr, long j2, long j3);

        /* renamed from: a */
        public abstract void mo21197a(Object obj, long j, byte b);

        /* renamed from: a */
        public abstract void mo21196a(Object obj, long j, double d);

        /* renamed from: a */
        public abstract void mo21195a(Object obj, long j, float f);

        /* renamed from: a */
        public final void m21194a(Object obj, long j, int i) {
            this.f20000a.putInt(obj, j, i);
        }

        /* renamed from: a */
        public final void m21193a(Object obj, long j, long j2) {
            this.f20000a.putLong(obj, j, j2);
        }

        /* renamed from: a */
        public final void m21192a(Object obj, long j, Object obj2) {
            this.f20000a.putObject(obj, j, obj2);
        }

        /* renamed from: a */
        public abstract void mo21191a(Object obj, long j, boolean z);

        /* renamed from: a */
        public abstract boolean mo21198a(Object obj, long j);

        /* renamed from: b */
        public abstract byte mo21187b(Object obj, long j);

        /* renamed from: b */
        public final int m21188b(Class<?> cls) {
            return this.f20000a.arrayIndexScale(cls);
        }

        /* renamed from: b */
        public abstract long mo21189b(long j);

        /* renamed from: c */
        public abstract double mo21186c(Object obj, long j);

        /* renamed from: d */
        public abstract float mo21185d(Object obj, long j);

        /* renamed from: e */
        public final int m21184e(Object obj, long j) {
            return this.f20000a.getInt(obj, j);
        }

        /* renamed from: f */
        public final long m21183f(Object obj, long j) {
            return this.f20000a.getLong(obj, j);
        }

        /* renamed from: g */
        public final Object m21182g(Object obj, long j) {
            return this.f20000a.getObject(obj, j);
        }
    }

    static {
        m21230b(boolean[].class);
        m21224c(boolean[].class);
        m21230b(int[].class);
        m21224c(int[].class);
        m21230b(long[].class);
        m21224c(long[].class);
        m21230b(float[].class);
        m21224c(float[].class);
        m21230b(double[].class);
        m21224c(double[].class);
        m21230b(Object[].class);
        m21224c(Object[].class);
        f19999k = ByteOrder.nativeOrder() == ByteOrder.BIG_ENDIAN;
    }

    /* renamed from: a */
    public static byte m21248a(long j) {
        return f19994f.mo21201a(j);
    }

    /* renamed from: a */
    public static byte m21234a(byte[] bArr, long j) {
        return f19994f.mo21187b(bArr, f19997i + j);
    }

    /* renamed from: a */
    public static long m21236a(Field field) {
        AbstractC6352e eVar;
        return (field == null || (eVar = f19994f) == null) ? -1L : eVar.m21190a(field);
    }

    /* renamed from: a */
    public static long m21235a(ByteBuffer byteBuffer) {
        return f19994f.m21183f(byteBuffer, f19998j);
    }

    /* renamed from: a */
    public static <T> T m21246a(Class<T> cls) {
        try {
            return (T) f19990b.allocateInstance(cls);
        } catch (InstantiationException e) {
            throw new IllegalStateException(e);
        }
    }

    /* renamed from: a */
    public static Field m21249a() {
        Field a;
        if (C6288d.m21669b() && (a = m21245a(Buffer.class, "effectiveDirectAddress")) != null) {
            return a;
        }
        Field a2 = m21245a(Buffer.class, "address");
        if (a2 == null || a2.getType() != Long.TYPE) {
            a2 = null;
        }
        return a2;
    }

    /* renamed from: a */
    public static Field m21245a(Class<?> cls, String str) {
        Field field;
        try {
            field = cls.getDeclaredField(str);
        } catch (Throwable th) {
            field = null;
        }
        return field;
    }

    /* renamed from: a */
    public static void m21247a(long j, byte[] bArr, long j2, long j3) {
        f19994f.mo21200a(j, bArr, j2, j3);
    }

    /* renamed from: a */
    public static void m21242a(Object obj, long j, double d) {
        f19994f.mo21196a(obj, j, d);
    }

    /* renamed from: a */
    public static void m21241a(Object obj, long j, float f) {
        f19994f.mo21195a(obj, j, f);
    }

    /* renamed from: a */
    public static void m21240a(Object obj, long j, int i) {
        f19994f.m21194a(obj, j, i);
    }

    /* renamed from: a */
    public static void m21239a(Object obj, long j, long j2) {
        f19994f.m21193a(obj, j, j2);
    }

    /* renamed from: a */
    public static void m21238a(Object obj, long j, Object obj2) {
        f19994f.m21192a(obj, j, obj2);
    }

    /* renamed from: a */
    public static void m21233a(byte[] bArr, long j, byte b) {
        f19994f.mo21197a((Object) bArr, f19997i + j, b);
    }

    /* renamed from: b */
    public static int m21230b(Class<?> cls) {
        return f19996h ? f19994f.m21199a(cls) : -1;
    }

    /* renamed from: b */
    public static long m21231b(long j) {
        return f19994f.mo21189b(j);
    }

    /* renamed from: b */
    public static long m21226b(Field field) {
        return f19994f.m21190a(field);
    }

    /* renamed from: b */
    public static AbstractC6352e m21232b() {
        if (f19990b == null) {
            return null;
        }
        if (!C6288d.m21669b()) {
            return new C6351d(f19990b);
        }
        if (f19992d) {
            return new C6350c(f19990b);
        }
        if (f19993e) {
            return new C6349b(f19990b);
        }
        return null;
    }

    /* renamed from: c */
    public static int m21224c(Class<?> cls) {
        return f19996h ? f19994f.m21188b(cls) : -1;
    }

    /* renamed from: c */
    public static Unsafe m21225c() {
        Unsafe unsafe;
        try {
            unsafe = (Unsafe) AccessController.doPrivileged(new C6348a());
        } catch (Throwable th) {
            unsafe = null;
        }
        return unsafe;
    }

    /* renamed from: c */
    public static void m21222c(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int l = m21204l(obj, j2);
        int i = ((((int) j) ^ (-1)) & 3) << 3;
        m21240a(obj, j2, ((255 & b) << i) | (l & ((255 << i) ^ (-1))));
    }

    /* renamed from: c */
    public static void m21221c(Object obj, long j, boolean z) {
        f19994f.mo21191a(obj, j, z);
    }

    /* renamed from: d */
    public static void m21217d(Object obj, long j, byte b) {
        long j2 = (-4) & j;
        int l = m21204l(obj, j2);
        int i = (((int) j) & 3) << 3;
        m21240a(obj, j2, ((255 & b) << i) | (l & ((255 << i) ^ (-1))));
    }

    /* renamed from: d */
    public static void m21216d(Object obj, long j, boolean z) {
        m21222c(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: d */
    public static boolean m21220d() {
        return f19996h;
    }

    /* renamed from: d */
    public static boolean m21219d(Class<?> cls) {
        if (!C6288d.m21669b()) {
            return false;
        }
        try {
            Class<?> cls2 = f19991c;
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

    /* renamed from: e */
    public static void m21213e(Object obj, long j, boolean z) {
        m21217d(obj, j, z ? (byte) 1 : (byte) 0);
    }

    /* renamed from: e */
    public static boolean m21215e() {
        return f19995g;
    }

    /* renamed from: e */
    public static boolean m21214e(Object obj, long j) {
        return f19994f.mo21198a(obj, j);
    }

    /* renamed from: f */
    public static boolean m21212f() {
        Unsafe unsafe = f19990b;
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
            if (C6288d.m21669b()) {
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
            Logger logger = f19989a;
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: f */
    public static boolean m21211f(Object obj, long j) {
        return m21208h(obj, j) != 0;
    }

    /* renamed from: g */
    public static boolean m21210g() {
        Unsafe unsafe = f19990b;
        if (unsafe == null) {
            return false;
        }
        try {
            Class<?> cls = unsafe.getClass();
            cls.getMethod("objectFieldOffset", Field.class);
            cls.getMethod("getLong", Object.class, Long.TYPE);
            if (m21249a() == null) {
                return false;
            }
            if (C6288d.m21669b()) {
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
            Logger logger = f19989a;
            Level level = Level.WARNING;
            logger.log(level, "platform method missing - proto runtime falling back to safer methods: " + th);
            return false;
        }
    }

    /* renamed from: g */
    public static boolean m21209g(Object obj, long j) {
        return m21207i(obj, j) != 0;
    }

    /* renamed from: h */
    public static byte m21208h(Object obj, long j) {
        return (byte) ((m21204l(obj, (-4) & j) >>> ((int) (((j ^ (-1)) & 3) << 3))) & 255);
    }

    /* renamed from: i */
    public static byte m21207i(Object obj, long j) {
        return (byte) ((m21204l(obj, (-4) & j) >>> ((int) ((j & 3) << 3))) & 255);
    }

    /* renamed from: j */
    public static double m21206j(Object obj, long j) {
        return f19994f.mo21186c(obj, j);
    }

    /* renamed from: k */
    public static float m21205k(Object obj, long j) {
        return f19994f.mo21185d(obj, j);
    }

    /* renamed from: l */
    public static int m21204l(Object obj, long j) {
        return f19994f.m21184e(obj, j);
    }

    /* renamed from: m */
    public static long m21203m(Object obj, long j) {
        return f19994f.m21183f(obj, j);
    }

    /* renamed from: n */
    public static Object m21202n(Object obj, long j) {
        return f19994f.m21182g(obj, j);
    }
}
