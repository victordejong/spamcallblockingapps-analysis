package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.zzw;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzk.class */
final class zzk implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzw f9638f;

    /* renamed from: g */
    private final /* synthetic */ AppMeasurementDynamiteService f9639g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzk(AppMeasurementDynamiteService appMeasurementDynamiteService, zzw zzwVar) {
        this.f9639g = appMeasurementDynamiteService;
        this.f9638f = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9639g.f8821a.m11381G().m10974R(this.f9638f, this.f9639g.f8821a.m11368T());
    }
}
