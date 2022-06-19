package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC1402vc;
/* renamed from: com.google.android.gms.measurement.internal.h7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h7.class */
final class RunnableC1521h7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1402vc f4306f;

    /* renamed from: g */
    final /* synthetic */ t f4307g;

    /* renamed from: h */
    final /* synthetic */ String f4308h;

    /* renamed from: i */
    final /* synthetic */ AppMeasurementDynamiteService f4309i;

    RunnableC1521h7(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC1402vc abstractC1402vc, t tVar, String str) {
        this.f4309i = appMeasurementDynamiteService;
        this.f4306f = abstractC1402vc;
        this.f4307g = tVar;
        this.f4308h = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4309i.a.R().u(this.f4306f, this.f4307g, this.f4308h);
    }
}
