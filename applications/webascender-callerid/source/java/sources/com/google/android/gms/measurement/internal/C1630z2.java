package com.google.android.gms.measurement.internal;

import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.z2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z2.class */
public final class C1630z2<V> {

    /* renamed from: h */
    private static final Object f4599h = new Object();

    /* renamed from: a */
    private final String f4600a;

    /* renamed from: b */
    private final AbstractC1617x2<V> f4601b;

    /* renamed from: c */
    private final V f4602c;

    /* renamed from: d */
    private final V f4603d;

    /* renamed from: e */
    private final Object f4604e = new Object();

    /* renamed from: f */
    private volatile V f4605f = null;

    /* renamed from: g */
    private volatile V f4606g = null;

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ C1630z2(String str, Object obj, Object obj2, AbstractC1617x2 abstractC1617x2, C1609w2 c1609w2) {
        this.f4600a = str;
        this.f4602c = obj;
        this.f4603d = obj2;
        this.f4601b = abstractC1617x2;
    }

    /* renamed from: a */
    public final String m1486a() {
        return this.f4600a;
    }

    /* renamed from: b */
    public final V m1485b(V v) {
        List<C1630z2> list;
        V v2;
        synchronized (this.f4604e) {
        }
        if (v != null) {
            return v;
        }
        if (C1625y2.f4585a == null) {
            return this.f4602c;
        }
        synchronized (f4599h) {
            if (C1538ka.m1571a()) {
                return this.f4606g == null ? this.f4602c : this.f4606g;
            }
            try {
                list = C1470a3.f4091a;
                for (C1630z2 c1630z2 : list) {
                    if (C1538ka.m1571a()) {
                        throw new IllegalStateException("Refreshing flag cache must be done on a worker thread.");
                    }
                    try {
                        AbstractC1617x2<V> abstractC1617x2 = c1630z2.f4601b;
                        v2 = null;
                        if (abstractC1617x2 != null) {
                            v2 = abstractC1617x2.zza();
                        }
                    } catch (IllegalStateException e) {
                        v2 = null;
                    }
                    synchronized (f4599h) {
                        c1630z2.f4606g = v2;
                    }
                }
            } catch (SecurityException e2) {
            }
            AbstractC1617x2<V> abstractC1617x22 = this.f4601b;
            if (abstractC1617x22 == null) {
                return this.f4602c;
            }
            try {
                return abstractC1617x22.zza();
            } catch (IllegalStateException e3) {
                return this.f4602c;
            } catch (SecurityException e4) {
                return this.f4602c;
            }
        }
    }
}
