package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzao.class */
public final class zzao implements Runnable {
    private final /* synthetic */ zzal zzvs;
    private final /* synthetic */ String zzvu;
    private final /* synthetic */ Runnable zzvv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzao(zzal zzalVar, String str, Runnable runnable) {
        this.zzvs = zzalVar;
        this.zzvu = str;
        this.zzvv = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zzy(this.zzvu);
        if (this.zzvv != null) {
            this.zzvv.run();
        }
    }
}
