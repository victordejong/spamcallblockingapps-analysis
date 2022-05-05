package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.dr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/dr.class */
final class RunnableC2737dr implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzga f16707a;

    /* renamed from: b */
    private final /* synthetic */ zzew f16708b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2737dr(zzga zzgaVar, zzew zzewVar) {
        this.f16707a = zzgaVar;
        this.f16708b = zzewVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f16707a.zzf() == null) {
            this.f16708b.zzf().zza("Install Referrer Reporter is null");
            return;
        }
        zzfl zzf = this.f16707a.zzf();
        zzf.m1843a(zzf.f17171a.zzn().getPackageName());
    }
}
