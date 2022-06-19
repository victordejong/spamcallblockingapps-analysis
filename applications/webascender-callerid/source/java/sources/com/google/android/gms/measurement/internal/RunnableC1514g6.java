package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC1402vc;
/* renamed from: com.google.android.gms.measurement.internal.g6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g6.class */
final class RunnableC1514g6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1402vc f4289f;

    /* renamed from: g */
    final /* synthetic */ AppMeasurementDynamiteService f4290g;

    RunnableC1514g6(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC1402vc abstractC1402vc) {
        this.f4290g = appMeasurementDynamiteService;
        this.f4289f = abstractC1402vc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4290g.a.R().U(this.f4289f);
    }
}
