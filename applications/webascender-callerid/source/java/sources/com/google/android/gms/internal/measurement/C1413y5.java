package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.y5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/y5.class */
public final class C1413y5 {

    /* renamed from: b */
    private static volatile C1413y5 f3991b;

    /* renamed from: c */
    private static volatile C1413y5 f3992c;

    /* renamed from: d */
    static final C1413y5 f3993d = new C1413y5(true);

    /* renamed from: a */
    private final Map<C1408x5, k6<?, ?>> f3994a;

    C1413y5() {
        this.f3994a = new HashMap();
    }

    C1413y5(boolean z) {
        this.f3994a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C1413y5 m1877a() {
        C1413y5 c1413y5 = f3991b;
        C1413y5 c1413y52 = c1413y5;
        if (c1413y5 == null) {
            synchronized (C1413y5.class) {
                try {
                    C1413y5 c1413y53 = f3991b;
                    c1413y52 = c1413y53;
                    if (c1413y53 == null) {
                        c1413y52 = f3993d;
                        f3991b = c1413y52;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c1413y52;
    }

    /* renamed from: b */
    public static C1413y5 m1876b() {
        C1413y5 c1413y5 = f3992c;
        if (c1413y5 != null) {
            return c1413y5;
        }
        synchronized (C1413y5.class) {
            try {
                C1413y5 c1413y52 = f3992c;
                if (c1413y52 != null) {
                    return c1413y52;
                }
                C1413y5 m2130b = AbstractC1319g6.m2130b(C1413y5.class);
                f3992c = m2130b;
                return m2130b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final <ContainingType extends o7> k6<ContainingType, ?> m1875c(ContainingType containingtype, int i) {
        return (k6<ContainingType, ?>) this.f3994a.get(new C1408x5(containingtype, i));
    }
}
