package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.ea */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ea.class */
final class RunnableC2747ea implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzv f16761a;

    /* renamed from: b */
    private final /* synthetic */ zzgb f16762b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2747ea(zzgb zzgbVar, zzv zzvVar) {
        this.f16762b = zzgbVar;
        this.f16761a = zzvVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzke zzkeVar;
        zzke zzkeVar2;
        zzke zzkeVar3;
        zzkeVar = this.f16762b.f17231a;
        zzkeVar.m1694d();
        if (this.f16761a.zzc.zza() == null) {
            zzkeVar3 = this.f16762b.f17231a;
            zzkeVar3.m1698b(this.f16761a);
            return;
        }
        zzkeVar2 = this.f16762b.f17231a;
        zzkeVar2.m1710a(this.f16761a);
    }
}
