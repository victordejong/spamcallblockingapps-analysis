package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdl.class */
public final class zzdl implements Runnable {
    private final /* synthetic */ zzcs zzarc;
    private final /* synthetic */ long zzark;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdl(zzcs zzcsVar, long j) {
        this.zzarc = zzcsVar;
        this.zzark = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zzgp().zzanq.set(this.zzark);
        this.zzarc.zzgo().zzjk().zzg("Session timeout duration set", Long.valueOf(this.zzark));
    }
}
