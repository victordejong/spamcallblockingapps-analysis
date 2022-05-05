package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* renamed from: com.google.android.gms.measurement.internal.es */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/es.class */
final class RunnableC2765es implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzn f16809a;

    /* renamed from: b */
    private final /* synthetic */ zzan f16810b;

    /* renamed from: c */
    private final /* synthetic */ String f16811c;

    /* renamed from: d */
    private final /* synthetic */ AppMeasurementDynamiteService f16812d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2765es(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar, zzan zzanVar, String str) {
        this.f16812d = appMeasurementDynamiteService;
        this.f16809a = zznVar;
        this.f16810b = zzanVar;
        this.f16811c = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16812d.f16544a.zzw().zza(this.f16809a, this.f16810b, this.f16811c);
    }
}
