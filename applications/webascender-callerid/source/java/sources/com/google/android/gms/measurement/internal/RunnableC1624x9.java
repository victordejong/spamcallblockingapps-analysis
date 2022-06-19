package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC1402vc;
/* renamed from: com.google.android.gms.measurement.internal.x9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x9.class */
final class RunnableC1624x9 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1402vc f4583f;

    /* renamed from: g */
    final /* synthetic */ AppMeasurementDynamiteService f4584g;

    RunnableC1624x9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC1402vc abstractC1402vc) {
        this.f4584g = appMeasurementDynamiteService;
        this.f4583f = abstractC1402vc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4584g.a.G().V(this.f4583f, this.f4584g.a.j());
    }
}
