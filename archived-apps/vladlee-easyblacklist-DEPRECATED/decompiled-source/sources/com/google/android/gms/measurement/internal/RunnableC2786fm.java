package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fm.class */
public final class RunnableC2786fm implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ long f16872a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16873b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2786fm(zzhb zzhbVar, long j) {
        this.f16873b = zzhbVar;
        this.f16872a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f16873b.zzs().f16687k.zza(this.f16872a);
        this.f16873b.zzr().zzw().zza("Minimum session duration set", Long.valueOf(this.f16872a));
    }
}
