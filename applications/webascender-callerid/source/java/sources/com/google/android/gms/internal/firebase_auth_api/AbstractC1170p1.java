package com.google.android.gms.internal.firebase_auth_api;

import java.lang.reflect.Field;
import sun.misc.Unsafe;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.p1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/p1.class */
public abstract class AbstractC1170p1 {

    /* renamed from: a */
    final Unsafe f3767a;

    AbstractC1170p1(Unsafe unsafe) {
        this.f3767a = unsafe;
    }

    /* renamed from: a */
    public abstract byte m2649a(Object obj, long j);

    /* renamed from: b */
    public abstract void m2648b(Object obj, long j, byte b);

    /* renamed from: c */
    public abstract boolean m2647c(Object obj, long j);

    /* renamed from: d */
    public abstract void m2646d(Object obj, long j, boolean z);

    /* renamed from: e */
    public abstract float m2645e(Object obj, long j);

    /* renamed from: f */
    public abstract void m2644f(Object obj, long j, float f);

    /* renamed from: g */
    public abstract double m2643g(Object obj, long j);

    /* renamed from: h */
    public abstract void m2642h(Object obj, long j, double d);

    /* renamed from: i */
    public boolean m2641i() {
        Unsafe unsafe = this.f3767a;
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
                C1181q1.m2561D(th);
                return false;
            }
        }
        return false;
    }

    /* renamed from: j */
    public boolean m2640j() {
        Field m2548f;
        Unsafe unsafe = this.f3767a;
        if (unsafe != null) {
            try {
                Class<?> cls = unsafe.getClass();
                cls.getMethod("objectFieldOffset", Field.class);
                cls.getMethod("getLong", Object.class, Long.TYPE);
                m2548f = C1181q1.m2548f();
                return m2548f != null;
            } catch (Throwable th) {
                C1181q1.m2561D(th);
                return false;
            }
        }
        return false;
    }

    /* renamed from: k */
    public final long m2639k(Field field) {
        return this.f3767a.objectFieldOffset(field);
    }

    /* renamed from: l */
    public final int m2638l(Class<?> cls) {
        return this.f3767a.arrayBaseOffset(cls);
    }

    /* renamed from: m */
    public final int m2637m(Class<?> cls) {
        return this.f3767a.arrayIndexScale(cls);
    }

    /* renamed from: n */
    public final int m2636n(Object obj, long j) {
        return this.f3767a.getInt(obj, j);
    }

    /* renamed from: o */
    public final void m2635o(Object obj, long j, int i) {
        this.f3767a.putInt(obj, j, i);
    }

    /* renamed from: p */
    public final long m2634p(Object obj, long j) {
        return this.f3767a.getLong(obj, j);
    }

    /* renamed from: q */
    public final void m2633q(Object obj, long j, long j2) {
        this.f3767a.putLong(obj, j, j2);
    }

    /* renamed from: r */
    public final Object m2632r(Object obj, long j) {
        return this.f3767a.getObject(obj, j);
    }

    /* renamed from: s */
    public final void m2631s(Object obj, long j, Object obj2) {
        this.f3767a.putObject(obj, j, obj2);
    }
}
