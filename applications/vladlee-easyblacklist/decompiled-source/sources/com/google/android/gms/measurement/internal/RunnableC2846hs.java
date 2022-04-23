package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* renamed from: com.google.android.gms.measurement.internal.hs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hs.class */
final class RunnableC2846hs implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzn f17041a;

    /* renamed from: b */
    private final /* synthetic */ AppMeasurementDynamiteService f17042b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2846hs(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar) {
        this.f17042b = appMeasurementDynamiteService;
        this.f17041a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17042b.f16544a.zzi().zza(this.f17041a, this.f17042b.f16544a.zzaa());
    }
}
