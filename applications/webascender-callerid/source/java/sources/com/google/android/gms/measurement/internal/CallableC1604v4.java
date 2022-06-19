package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.v4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v4.class */
final class CallableC1604v4 implements Callable<List<C1584r9>> {

    /* renamed from: f */
    final /* synthetic */ String f4534f;

    /* renamed from: g */
    final /* synthetic */ String f4535g;

    /* renamed from: h */
    final /* synthetic */ String f4536h;

    /* renamed from: i */
    final /* synthetic */ k5 f4537i;

    CallableC1604v4(k5 k5Var, String str, String str2, String str3) {
        this.f4537i = k5Var;
        this.f4534f = str;
        this.f4535g = str2;
        this.f4536h = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<C1584r9> call() throws Exception {
        k5.I2(this.f4537i).p();
        return k5.I2(this.f4537i).Z().U(this.f4534f, this.f4535g, this.f4536h);
    }
}
