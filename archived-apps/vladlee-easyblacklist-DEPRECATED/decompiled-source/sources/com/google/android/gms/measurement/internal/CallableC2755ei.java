package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ei */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ei.class */
final class CallableC2755ei implements Callable<byte[]> {

    /* renamed from: a */
    private final /* synthetic */ zzan f16786a;

    /* renamed from: b */
    private final /* synthetic */ String f16787b;

    /* renamed from: c */
    private final /* synthetic */ zzgb f16788c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2755ei(zzgb zzgbVar, zzan zzanVar, String str) {
        this.f16788c = zzgbVar;
        this.f16786a = zzanVar;
        this.f16787b = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ byte[] call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16788c.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16788c.f17231a;
        return zzkeVar2.zzg().m2045a(this.f16786a, this.f16787b);
    }
}
