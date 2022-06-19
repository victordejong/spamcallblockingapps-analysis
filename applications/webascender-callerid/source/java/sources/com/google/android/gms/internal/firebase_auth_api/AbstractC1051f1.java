package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.q0;
import java.io.IOException;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.f1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/f1.class */
abstract class AbstractC1051f1<T, B> {
    AbstractC1051f1() {
    }

    /* renamed from: a */
    abstract boolean m2937a(q0 q0Var);

    /* renamed from: b */
    public abstract void m2936b(B b, int i, long j);

    /* renamed from: c */
    abstract void m2935c(B b, int i, int i2);

    /* renamed from: d */
    abstract void m2934d(B b, int i, long j);

    /* renamed from: e */
    abstract void m2933e(B b, int i, AbstractC1151mp abstractC1151mp);

    /* renamed from: f */
    abstract void m2932f(B b, int i, T t);

    /* renamed from: g */
    public abstract B m2931g();

    /* renamed from: h */
    abstract T m2930h(B b);

    /* renamed from: i */
    public abstract void m2929i(Object obj, T t);

    /* renamed from: j */
    public abstract T m2928j(Object obj);

    /* renamed from: k */
    abstract B m2927k(Object obj);

    /* renamed from: l */
    abstract void m2926l(Object obj, B b);

    /* renamed from: m */
    abstract void m2925m(Object obj);

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: n */
    final boolean m2924n(B b, AbstractC1180q0 abstractC1180q0) throws IOException {
        int m2585b = abstractC1180q0.m2585b();
        int i = m2585b >>> 3;
        int i2 = m2585b & 7;
        if (i2 == 0) {
            m2936b(b, i, abstractC1180q0.m2581f());
            return true;
        } else if (i2 == 1) {
            m2934d(b, i, abstractC1180q0.m2579h());
            return true;
        } else if (i2 == 2) {
            m2933e(b, i, abstractC1180q0.m2578i());
            return true;
        } else if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzaal.m2267g();
            }
            m2935c(b, i, abstractC1180q0.m2574n());
            return true;
        } else {
            Object m2931g = m2931g();
            while (abstractC1180q0.m2586a() != Integer.MAX_VALUE && m2924n(m2931g, abstractC1180q0)) {
            }
            if ((4 | (i << 3)) != abstractC1180q0.m2585b()) {
                throw zzaal.m2268f();
            }
            m2930h(m2931g);
            m2932f(b, i, m2931g);
            return true;
        }
    }

    /* renamed from: o */
    public abstract T m2923o(T t, T t2);

    /* renamed from: p */
    abstract int m2922p(T t);

    /* renamed from: q */
    abstract int m2921q(T t);

    /* renamed from: r */
    abstract void m2920r(T t, C1244wp c1244wp) throws IOException;
}
