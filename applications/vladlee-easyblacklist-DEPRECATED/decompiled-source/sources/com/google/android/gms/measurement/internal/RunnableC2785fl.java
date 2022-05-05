package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fl.class */
public final class RunnableC2785fl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ long f16870a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16871b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2785fl(zzhb zzhbVar, long j) {
        this.f16871b = zzhbVar;
        this.f16870a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16871b.zzs().f16688l.zza(this.f16870a);
        this.f16871b.zzr().zzw().zza("Session timeout duration set", Long.valueOf(this.f16870a));
    }
}
