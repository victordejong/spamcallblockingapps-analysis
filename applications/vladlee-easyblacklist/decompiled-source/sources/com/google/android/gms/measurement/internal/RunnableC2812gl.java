package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* renamed from: com.google.android.gms.measurement.internal.gl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gl.class */
final class RunnableC2812gl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzn f16955a;

    /* renamed from: b */
    private final /* synthetic */ String f16956b;

    /* renamed from: c */
    private final /* synthetic */ String f16957c;

    /* renamed from: d */
    private final /* synthetic */ AppMeasurementDynamiteService f16958d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2812gl(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar, String str, String str2) {
        this.f16958d = appMeasurementDynamiteService;
        this.f16955a = zznVar;
        this.f16956b = str;
        this.f16957c = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16958d.f16544a.zzw().m1770a(this.f16955a, this.f16956b, this.f16957c);
    }
}
