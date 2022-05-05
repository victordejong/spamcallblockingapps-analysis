package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.Preconditions;
/* renamed from: com.google.android.gms.measurement.internal.eb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/eb.class */
final class RunnableC2748eb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzm f16763a;

    /* renamed from: b */
    private final /* synthetic */ zzgb f16764b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2748eb(zzgb zzgbVar, zzm zzmVar) {
        this.f16764b = zzgbVar;
        this.f16763a = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzkeVar = this.f16764b.f17231a;
        zzkeVar.m1694d();
        zzkeVar2 = this.f16764b.f17231a;
        zzm zzmVar = this.f16763a;
        zzkeVar2.zzq().zzd();
        zzkeVar2.m1704b();
        Preconditions.checkNotEmpty(zzmVar.zza);
        zzkeVar2.m1695c(zzmVar);
    }
}
