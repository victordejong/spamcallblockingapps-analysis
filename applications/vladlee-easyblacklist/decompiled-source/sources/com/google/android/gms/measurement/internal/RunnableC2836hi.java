package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzn;
/* renamed from: com.google.android.gms.measurement.internal.hi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hi.class */
final class RunnableC2836hi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzn f17020a;

    /* renamed from: b */
    private final /* synthetic */ String f17021b;

    /* renamed from: c */
    private final /* synthetic */ String f17022c;

    /* renamed from: d */
    private final /* synthetic */ boolean f17023d;

    /* renamed from: e */
    private final /* synthetic */ AppMeasurementDynamiteService f17024e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2836hi(AppMeasurementDynamiteService appMeasurementDynamiteService, zzn zznVar, String str, String str2, boolean z) {
        this.f17024e = appMeasurementDynamiteService;
        this.f17020a = zznVar;
        this.f17021b = str;
        this.f17022c = str2;
        this.f17023d = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17024e.f16544a.zzw().m1769a(this.f17020a, this.f17021b, this.f17022c, this.f17023d);
    }
}
