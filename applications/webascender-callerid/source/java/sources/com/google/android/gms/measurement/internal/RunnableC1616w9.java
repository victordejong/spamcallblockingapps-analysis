package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.AbstractC1402vc;
/* renamed from: com.google.android.gms.measurement.internal.w9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w9.class */
final class RunnableC1616w9 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1402vc f4559f;

    /* renamed from: g */
    final /* synthetic */ String f4560g;

    /* renamed from: h */
    final /* synthetic */ String f4561h;

    /* renamed from: i */
    final /* synthetic */ AppMeasurementDynamiteService f4562i;

    RunnableC1616w9(AppMeasurementDynamiteService appMeasurementDynamiteService, AbstractC1402vc abstractC1402vc, String str, String str2) {
        this.f4562i = appMeasurementDynamiteService;
        this.f4559f = abstractC1402vc;
        this.f4560g = str;
        this.f4561h = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4562i.a.R().O(this.f4559f, this.f4560g, this.f4561h);
    }
}
