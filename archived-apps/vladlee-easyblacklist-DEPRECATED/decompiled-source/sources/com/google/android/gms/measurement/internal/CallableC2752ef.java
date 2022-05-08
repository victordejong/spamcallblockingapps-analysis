package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ef */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ef.class */
final class CallableC2752ef implements Callable<List<zzv>> {

    /* renamed from: a */
    private final /* synthetic */ zzm f16777a;

    /* renamed from: b */
    private final /* synthetic */ String f16778b;

    /* renamed from: c */
    private final /* synthetic */ String f16779c;

    /* renamed from: d */
    private final /* synthetic */ zzgb f16780d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2752ef(zzgb zzgbVar, zzm zzmVar, String str, String str2) {
        this.f16780d = zzgbVar;
        this.f16777a = zzmVar;
        this.f16778b = str;
        this.f16779c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzv> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16780d.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16780d.f17231a;
        return zzkeVar2.zze().m2182b(this.f16777a.zza, this.f16778b, this.f16779c);
    }
}
