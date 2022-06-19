package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.i9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i9.class */
final class RunnableC1530i9 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ y9 f4333f;

    /* renamed from: g */
    final /* synthetic */ AppMeasurementDynamiteService f4334g;

    RunnableC1530i9(AppMeasurementDynamiteService appMeasurementDynamiteService, y9 y9Var) {
        this.f4334g = appMeasurementDynamiteService;
        this.f4333f = y9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4334g.a.F().v(this.f4333f);
    }
}
