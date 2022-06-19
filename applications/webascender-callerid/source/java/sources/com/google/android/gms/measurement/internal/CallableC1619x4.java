package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.x4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x4.class */
final class CallableC1619x4 implements Callable<List<b>> {

    /* renamed from: f */
    final /* synthetic */ String f4568f;

    /* renamed from: g */
    final /* synthetic */ String f4569g;

    /* renamed from: h */
    final /* synthetic */ String f4570h;

    /* renamed from: i */
    final /* synthetic */ k5 f4571i;

    CallableC1619x4(k5 k5Var, String str, String str2, String str3) {
        this.f4571i = k5Var;
        this.f4568f = str;
        this.f4569g = str2;
        this.f4570h = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<b> call() throws Exception {
        k5.I2(this.f4571i).p();
        return k5.I2(this.f4571i).Z().Y(this.f4568f, this.f4569g, this.f4570h);
    }
}
