package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.y4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y4.class */
final class CallableC1627y4 implements Callable<List<b>> {

    /* renamed from: f */
    final /* synthetic */ String f4590f;

    /* renamed from: g */
    final /* synthetic */ String f4591g;

    /* renamed from: h */
    final /* synthetic */ String f4592h;

    /* renamed from: i */
    final /* synthetic */ k5 f4593i;

    CallableC1627y4(k5 k5Var, String str, String str2, String str3) {
        this.f4593i = k5Var;
        this.f4590f = str;
        this.f4591g = str2;
        this.f4592h = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ List<b> call() throws Exception {
        k5.I2(this.f4593i).p();
        return k5.I2(this.f4593i).Z().Y(this.f4590f, this.f4591g, this.f4592h);
    }
}
