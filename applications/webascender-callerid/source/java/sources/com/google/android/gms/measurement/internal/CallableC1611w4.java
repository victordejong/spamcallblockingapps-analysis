package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.w4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w4.class */
final class CallableC1611w4 implements Callable<List<C1584r9>> {

    /* renamed from: f */
    final /* synthetic */ String f4543f;

    /* renamed from: g */
    final /* synthetic */ String f4544g;

    /* renamed from: h */
    final /* synthetic */ String f4545h;

    /* renamed from: i */
    final /* synthetic */ k5 f4546i;

    CallableC1611w4(k5 k5Var, String str, String str2, String str3) {
        this.f4546i = k5Var;
        this.f4543f = str;
        this.f4544g = str2;
        this.f4545h = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C1584r9> call() throws Exception {
        k5.I2(this.f4546i).p();
        return k5.I2(this.f4546i).Z().U(this.f4543f, this.f4544g, this.f4545h);
    }
}
