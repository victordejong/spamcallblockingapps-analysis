package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaz.class */
final class zzaz implements Runnable {
    private final /* synthetic */ boolean zzana;
    private final /* synthetic */ zzay zzanb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaz(zzay zzayVar, boolean z) {
        this.zzanb = zzayVar;
        this.zzana = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfa zzfaVar;
        zzfaVar = this.zzanb.zzamz;
        zzfaVar.zzo(this.zzana);
    }
}
