package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ek */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ek.class */
final class CallableC2757ek implements Callable<List<C2843hp>> {

    /* renamed from: a */
    private final /* synthetic */ zzm f16792a;

    /* renamed from: b */
    private final /* synthetic */ zzgb f16793b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2757ek(zzgb zzgbVar, zzm zzmVar) {
        this.f16793b = zzgbVar;
        this.f16792a = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C2843hp> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16793b.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16793b.f17231a;
        return zzkeVar2.zze().m2197a(this.f16792a.zza);
    }
}
