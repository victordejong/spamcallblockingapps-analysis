package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* renamed from: com.google.android.gms.measurement.internal.fp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fp.class */
final class RunnableC2789fp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzn f16880a;

    /* renamed from: b */
    private final /* synthetic */ AppMeasurementDynamiteService f16881b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2789fp(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar) {
        this.f16881b = appMeasurementDynamiteService;
        this.f16880a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16881b.f16544a.zzw().zza(this.f16880a);
    }
}
