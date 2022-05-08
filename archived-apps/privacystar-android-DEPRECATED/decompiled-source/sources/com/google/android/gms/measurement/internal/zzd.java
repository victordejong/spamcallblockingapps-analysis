package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzd.class */
final class zzd implements Runnable {
    private final /* synthetic */ zza zzafu;
    private final /* synthetic */ long zzafv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zza zzaVar, long j) {
        this.zzafu = zzaVar;
        this.zzafv = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzafu.zzr(this.zzafv);
    }
}
