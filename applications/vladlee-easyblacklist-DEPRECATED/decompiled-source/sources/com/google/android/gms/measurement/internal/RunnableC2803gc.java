package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gc.class */
public final class RunnableC2803gc implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzif f16918a;

    /* renamed from: b */
    private final /* synthetic */ zzij f16919b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2803gc(zzij zzijVar, zzif zzifVar) {
        this.f16919b = zzijVar;
        this.f16918a = zzifVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        long j;
        String str;
        String str2;
        String packageName;
        zzeoVar = this.f16919b.f17257b;
        if (zzeoVar == null) {
            this.f16919b.zzr().zzf().zza("Failed to send current screen to service");
            return;
        }
        try {
            if (this.f16918a == null) {
                j = 0;
                str = null;
                str2 = null;
                packageName = this.f16919b.zzn().getPackageName();
            } else {
                j = this.f16918a.zzc;
                str = this.f16918a.zza;
                str2 = this.f16918a.zzb;
                packageName = this.f16919b.zzn().getPackageName();
            }
            zzeoVar.zza(j, str, str2, packageName);
            this.f16919b.m1745j();
        } catch (RemoteException e) {
            this.f16919b.zzr().zzf().zza("Failed to send current screen to the service", e);
        }
    }
}
