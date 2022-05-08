package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ed */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ed.class */
final class CallableC2750ed implements Callable<List<C2843hp>> {

    /* renamed from: a */
    private final /* synthetic */ zzm f16769a;

    /* renamed from: b */
    private final /* synthetic */ String f16770b;

    /* renamed from: c */
    private final /* synthetic */ String f16771c;

    /* renamed from: d */
    private final /* synthetic */ zzgb f16772d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2750ed(zzgb zzgbVar, zzm zzmVar, String str, String str2) {
        this.f16772d = zzgbVar;
        this.f16769a = zzmVar;
        this.f16770b = str;
        this.f16771c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C2843hp> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16772d.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16772d.f17231a;
        return zzkeVar2.zze().m2190a(this.f16769a.zza, this.f16770b, this.f16771c);
    }
}
