package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ec */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ec.class */
final class CallableC2749ec implements Callable<List<C2843hp>> {

    /* renamed from: a */
    private final /* synthetic */ String f16765a;

    /* renamed from: b */
    private final /* synthetic */ String f16766b;

    /* renamed from: c */
    private final /* synthetic */ String f16767c;

    /* renamed from: d */
    private final /* synthetic */ zzgb f16768d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2749ec(zzgb zzgbVar, String str, String str2, String str3) {
        this.f16768d = zzgbVar;
        this.f16765a = str;
        this.f16766b = str2;
        this.f16767c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<C2843hp> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16768d.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16768d.f17231a;
        return zzkeVar2.zze().m2190a(this.f16765a, this.f16766b, this.f16767c);
    }
}
