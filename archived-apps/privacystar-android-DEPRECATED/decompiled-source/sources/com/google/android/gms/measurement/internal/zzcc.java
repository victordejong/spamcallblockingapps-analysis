package com.google.android.gms.measurement.internal;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcc.class */
final class zzcc implements Callable<List<zzfj>> {
    private final /* synthetic */ String zzaeh;
    private final /* synthetic */ String zzaeo;
    private final /* synthetic */ zzbv zzaqo;
    private final /* synthetic */ String zzaqq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcc(zzbv zzbvVar, String str, String str2, String str3) {
        this.zzaqo = zzbvVar;
        this.zzaqq = str;
        this.zzaeh = str2;
        this.zzaeo = str3;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ List<zzfj> call() throws Exception {
        zzfa zzfaVar;
        zzfa zzfaVar2;
        zzfaVar = this.zzaqo.zzamz;
        zzfaVar.zzly();
        zzfaVar2 = this.zzaqo.zzamz;
        return zzfaVar2.zzjq().zzb(this.zzaqq, this.zzaeh, this.zzaeo);
    }
}
