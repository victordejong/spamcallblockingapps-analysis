package com.google.android.gms.internal.measurement;

import java.io.Serializable;
/* renamed from: com.google.android.gms.internal.measurement.m4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/m4.class */
public final class C1350m4 {
    /* renamed from: a */
    public static <T> AbstractC1332i4<T> m2049a(AbstractC1332i4<T> abstractC1332i4) {
        if ((abstractC1332i4 instanceof k4) || (abstractC1332i4 instanceof j4)) {
            return abstractC1332i4;
        }
        return abstractC1332i4 instanceof Serializable ? new j4(abstractC1332i4) : new k4(abstractC1332i4);
    }

    /* renamed from: b */
    public static <T> AbstractC1332i4<T> m2048b(T t) {
        return new l4(t);
    }
}
