package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzex.class */
public final class zzex extends zzv {
    private final /* synthetic */ zzfa zzasv;
    private final /* synthetic */ zzew zzatb;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzex(zzew zzewVar, zzcq zzcqVar, zzfa zzfaVar) {
        super(zzcqVar);
        this.zzatb = zzewVar;
        this.zzasv = zzfaVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzv
    public final void run() {
        this.zzatb.cancel();
        this.zzatb.zzgo().zzjl().zzbx("Starting upload from DelayedRunnable");
        this.zzasv.zzlt();
    }
}
