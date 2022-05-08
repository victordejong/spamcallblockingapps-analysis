package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzdh.class */
public final class zzdh implements Runnable {
    private final /* synthetic */ AtomicReference zzarb;
    private final /* synthetic */ zzcs zzarc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzdh(zzcs zzcsVar, AtomicReference atomicReference) {
        this.zzarc = zzcsVar;
        this.zzarb = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzarb) {
            this.zzarb.set(Double.valueOf(this.zzarc.zzgq().zzc(this.zzarc.zzgf().zzal(), zzaf.zzako)));
            this.zzarb.notify();
        }
    }
}
