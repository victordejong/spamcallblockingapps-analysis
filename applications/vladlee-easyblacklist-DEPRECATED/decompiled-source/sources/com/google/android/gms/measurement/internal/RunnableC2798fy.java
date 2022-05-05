package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fy.class */
public final class RunnableC2798fy implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzm f16904a;

    /* renamed from: b */
    private final /* synthetic */ zzij f16905b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2798fy(zzij zzijVar, zzm zzmVar) {
        this.f16905b = zzijVar;
        this.f16904a = zzmVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzeo zzeoVar;
        zzeoVar = this.f16905b.f17257b;
        if (zzeoVar == null) {
            this.f16905b.zzr().zzf().zza("Failed to reset data on the service; null service");
            return;
        }
        try {
            zzeoVar.zzd(this.f16904a);
        } catch (RemoteException e) {
            this.f16905b.zzr().zzf().zza("Failed to reset data on the service", e);
        }
        this.f16905b.m1745j();
    }
}
