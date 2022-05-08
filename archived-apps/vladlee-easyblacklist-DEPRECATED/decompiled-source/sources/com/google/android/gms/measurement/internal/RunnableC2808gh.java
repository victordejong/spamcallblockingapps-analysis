package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.gh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gh.class */
public final class RunnableC2808gh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzm f16934a;

    /* renamed from: b */
    private final /* synthetic */ zzij f16935b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2808gh(zzij zzijVar, zzm zzmVar) {
        this.f16935b = zzijVar;
        this.f16934a = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.f16935b.f17257b;
        if (zzeoVar == null) {
            this.f16935b.zzr().zzf().zza("Failed to send measurementEnabled to service");
            return;
        }
        try {
            zzeoVar.zzb(this.f16934a);
            this.f16935b.m1745j();
        } catch (RemoteException e) {
            this.f16935b.zzr().zzf().zza("Failed to send measurementEnabled to the service", e);
        }
    }
}
