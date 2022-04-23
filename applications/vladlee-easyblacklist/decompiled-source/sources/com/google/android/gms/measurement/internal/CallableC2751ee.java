package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.ee */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ee.class */
final class CallableC2751ee implements Callable<List<zzv>> {

    /* renamed from: a */
    private final /* synthetic */ String f16773a;

    /* renamed from: b */
    private final /* synthetic */ String f16774b;

    /* renamed from: c */
    private final /* synthetic */ String f16775c;

    /* renamed from: d */
    private final /* synthetic */ zzgb f16776d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallableC2751ee(zzgb zzgbVar, String str, String str2, String str3) {
        this.f16776d = zzgbVar;
        this.f16773a = str;
        this.f16774b = str2;
        this.f16775c = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzv> call() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16776d.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16776d.f17231a;
        return zzkeVar2.zze().m2182b(this.f16773a, this.f16774b, this.f16775c);
    }
}
