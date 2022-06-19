package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC1402vc;
/* renamed from: com.google.android.gms.measurement.internal.h8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/h8.class */
final class RunnableC1522h8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1402vc f4310f;

    /* renamed from: g */
    final /* synthetic */ String f4311g;

    /* renamed from: h */
    final /* synthetic */ String f4312h;

    /* renamed from: i */
    final /* synthetic */ boolean f4313i;

    /* renamed from: j */
    final /* synthetic */ AppMeasurementDynamiteService f4314j;

    RunnableC1522h8(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC1402vc abstractC1402vc, String str, String str2, boolean z) {
        this.f4314j = appMeasurementDynamiteService;
        this.f4310f = abstractC1402vc;
        this.f4311g = str;
        this.f4312h = str2;
        this.f4313i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4314j.a.R().Q(this.f4310f, this.f4311g, this.f4312h, this.f4313i);
    }
}
