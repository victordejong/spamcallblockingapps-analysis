package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ep */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ep.class */
final class RunnableC2762ep implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzv f16805a;

    /* renamed from: b */
    private final /* synthetic */ zzm f16806b;

    /* renamed from: c */
    private final /* synthetic */ zzgb f16807c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2762ep(zzgb zzgbVar, zzv zzvVar, zzm zzmVar) {
        this.f16807c = zzgbVar;
        this.f16805a = zzvVar;
        this.f16806b = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzke zzkeVar3;
        zzkeVar = this.f16807c.f17231a;
        zzkeVar.m1694d();
        if (this.f16805a.zzc.zza() == null) {
            zzkeVar3 = this.f16807c.f17231a;
            zzkeVar3.m1697b(this.f16805a, this.f16806b);
            return;
        }
        zzkeVar2 = this.f16807c.f17231a;
        zzkeVar2.m1709a(this.f16805a, this.f16806b);
    }
}
