package com.google.android.gms.internal.measurement;

import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.android.gms.internal.measurement.x7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/x7.class */
final class C1409x7 {

    /* renamed from: c */
    private static final C1409x7 f3977c = new C1409x7();

    /* renamed from: b */
    private final ConcurrentMap<Class<?>, AbstractC1287a8<?>> f3979b = new ConcurrentHashMap();

    /* renamed from: a */
    private final AbstractC1293b8 f3978a = new g7();

    private C1409x7() {
    }

    /* renamed from: a */
    public static C1409x7 m1886a() {
        return f3977c;
    }

    /* renamed from: b */
    public final <T> AbstractC1287a8<T> m1885b(Class<T> cls) {
        C1396u6.m1907b(cls, "messageType");
        AbstractC1287a8<?> abstractC1287a8 = this.f3979b.get(cls);
        AbstractC1287a8<?> abstractC1287a82 = abstractC1287a8;
        if (abstractC1287a8 == null) {
            abstractC1287a82 = this.f3978a.m2222e(cls);
            C1396u6.m1907b(cls, "messageType");
            C1396u6.m1907b(abstractC1287a82, "schema");
            AbstractC1287a8<T> abstractC1287a83 = (AbstractC1287a8<T>) this.f3979b.putIfAbsent(cls, abstractC1287a82);
            if (abstractC1287a83 != null) {
                return abstractC1287a83;
            }
        }
        return (AbstractC1287a8<T>) abstractC1287a82;
    }
}
