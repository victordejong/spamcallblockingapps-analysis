package com.google.android.gms.internal.measurement;

import java.util.concurrent.Callable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzas.class */
public final class zzas implements Callable<Void> {
    private final /* synthetic */ zzal zzvs;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzas(zzal zzalVar) {
        this.zzvs = zzalVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Void call() throws Exception {
        zzbi zzbiVar;
        zzbiVar = this.zzvs.zzvq;
        zzbiVar.zzdl();
        return null;
    }
}
