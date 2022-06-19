package com.google.android.gms.internal.measurement;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.measurement.y8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/y8.class */
public abstract class AbstractC1415y8 {

    /* renamed from: a */
    final Unsafe f3995a;

    AbstractC1415y8(Unsafe unsafe) {
        this.f3995a = unsafe;
    }

    /* renamed from: a */
    public abstract byte m1870a(Object obj, long j);

    /* renamed from: b */
    public abstract void m1869b(Object obj, long j, byte b);

    /* renamed from: c */
    public abstract boolean m1868c(Object obj, long j);

    /* renamed from: d */
    public abstract void m1867d(Object obj, long j, boolean z);

    /* renamed from: e */
    public abstract float m1866e(Object obj, long j);

    /* renamed from: f */
    public abstract void m1865f(Object obj, long j, float f);

    /* renamed from: g */
    public abstract double m1864g(Object obj, long j);

    /* renamed from: h */
    public abstract void m1863h(Object obj, long j, double d);

    /* renamed from: i */
    public boolean m1862i() {
        Unsafe unsafe = this.f3995a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("arrayBaseOffset", Class.class);
                cls.getMethod("arrayIndexScale", Class.class);
                Class<?> cls2 = Long.TYPE;
                cls.getMethod("getInt", Object.class, cls2);
                cls.getMethod("putInt", Object.class, cls2, Integer.TYPE);
                cls.getMethod("getLong", Object.class, cls2);
                cls.getMethod("putLong", Object.class, cls2, cls2);
                cls.getMethod("getObject", Object.class, cls2);
                cls.getMethod("putObject", Object.class, cls2, Object.class);
                return true;
            } catch (Throwable th) {
                C1422z8.m1841D(th);
                return false;
            }
        }
        return false;
    }

    /* renamed from: j */
    public boolean m1861j() {
        Field m1828f;
        Unsafe unsafe = this.f3995a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                m1828f = C1422z8.m1828f();
                return m1828f != null;
            } catch (Throwable th) {
                C1422z8.m1841D(th);
                return false;
            }
        }
        return false;
    }

    /* renamed from: k */
    public final long m1860k(Field field) {
        return this.f3995a.objectFieldOffset(field);
    }

    /* renamed from: l */
    public final int m1859l(Class<?> cls) {
        return this.f3995a.arrayBaseOffset(cls);
    }

    /* renamed from: m */
    public final int m1858m(Class<?> cls) {
        return this.f3995a.arrayIndexScale(cls);
    }

    /* renamed from: n */
    public final int m1857n(Object obj, long j) {
        return this.f3995a.getInt(obj, j);
    }

    /* renamed from: o */
    public final void m1856o(Object obj, long j, int i) {
        this.f3995a.putInt(obj, j, i);
    }

    /* renamed from: p */
    public final long m1855p(Object obj, long j) {
        return this.f3995a.getLong(obj, j);
    }

    /* renamed from: q */
    public final void m1854q(Object obj, long j, long j2) {
        this.f3995a.putLong(obj, j, j2);
    }

    /* renamed from: r */
    public final Object m1853r(Object obj, long j) {
        return this.f3995a.getObject(obj, j);
    }

    /* renamed from: s */
    public final void m1852s(Object obj, long j, Object obj2) {
        this.f3995a.putObject(obj, j, obj2);
    }
}
