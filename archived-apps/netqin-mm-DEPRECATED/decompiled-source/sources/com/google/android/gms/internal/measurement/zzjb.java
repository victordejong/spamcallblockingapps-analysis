package com.google.android.gms.internal.measurement;

import java.io.IOException;
import p131c.p161d.p170b.p224d.p252g.p258f.C4478d3;
import p131c.p161d.p170b.p224d.p252g.p258f.C4600u3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzjb.class */
public final class zzjb<K, V> {
    /* renamed from: a */
    public static <K, V> int m9623a(C4600u3<K, V> u3Var, K k, V v) {
        return C4478d3.m25513a(u3Var.f16901a, 1, k) + C4478d3.m25513a(u3Var.f16903c, 2, v);
    }

    /* renamed from: a */
    public static <K, V> void m9622a(zzhi zzhiVar, C4600u3<K, V> u3Var, K k, V v) throws IOException {
        C4478d3.m25516a(zzhiVar, u3Var.f16901a, 1, k);
        C4478d3.m25516a(zzhiVar, u3Var.f16903c, 2, v);
    }
}
