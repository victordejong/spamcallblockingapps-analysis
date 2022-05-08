package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzbu.class */
public final class zzbu implements Runnable {
    private final /* synthetic */ zzcr zzaqj;
    private final /* synthetic */ zzbt zzaqk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbu(zzbt zzbtVar, zzcr zzcrVar) {
        this.zzaqk = zzbtVar;
        this.zzaqj = zzcrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaqk.zza(this.zzaqj);
        this.zzaqk.start();
    }
}
