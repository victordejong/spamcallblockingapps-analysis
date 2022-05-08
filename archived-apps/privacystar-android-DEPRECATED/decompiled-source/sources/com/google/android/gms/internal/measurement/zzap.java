package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzap.class */
public final class zzap implements Runnable {
    private final /* synthetic */ zzal zzvs;
    private final /* synthetic */ zzck zzvw;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzap(zzal zzalVar, zzck zzckVar) {
        this.zzvs = zzalVar;
        this.zzvw = zzckVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zza(this.zzvw);
    }
}
