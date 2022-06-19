package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.e5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e5.class */
final class CallableC1499e5 implements Callable<byte[]> {

    /* renamed from: f */
    final /* synthetic */ t f4222f;

    /* renamed from: g */
    final /* synthetic */ String f4223g;

    /* renamed from: h */
    final /* synthetic */ k5 f4224h;

    CallableC1499e5(k5 k5Var, t tVar, String str) {
        this.f4224h = k5Var;
        this.f4222f = tVar;
        this.f4223g = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ byte[] call() throws Exception {
        k5.I2(this.f4224h).p();
        z6 d0 = k5.I2(this.f4224h).d0();
        d0.h();
        r4 r4Var = ((l5) d0).a;
        r4.u();
        throw null;
    }
}
