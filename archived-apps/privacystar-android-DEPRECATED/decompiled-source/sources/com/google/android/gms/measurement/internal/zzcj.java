package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcj.class */
final class zzcj implements Runnable {
    private final /* synthetic */ zzh zzaqn;
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ zzfh zzaqs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcj(zzbv zzbvVar, zzfh zzfhVar, zzh zzhVar) {
        this.zzaqo = zzbvVar;
        this.zzaqs = zzfhVar;
        this.zzaqn = zzhVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        zzfaVar2.zzc(this.zzaqs, this.zzaqn);
    }
}
