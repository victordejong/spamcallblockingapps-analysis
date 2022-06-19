package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.h5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h5.class */
final class CallableC1519h5 implements Callable<List<C1584r9>> {

    /* renamed from: f */
    final /* synthetic */ String f4300f;

    /* renamed from: g */
    final /* synthetic */ k5 f4301g;

    CallableC1519h5(k5 k5Var, String str) {
        this.f4301g = k5Var;
        this.f4300f = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C1584r9> call() throws Exception {
        k5.I2(this.f4301g).p();
        return k5.I2(this.f4301g).Z().T(this.f4300f);
    }
}
