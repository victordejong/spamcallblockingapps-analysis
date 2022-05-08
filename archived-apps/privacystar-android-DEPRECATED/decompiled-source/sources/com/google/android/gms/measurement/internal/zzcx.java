package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzcx.class */
public final class zzcx implements Runnable {
    private final /* synthetic */ boolean zzaev;
    private final /* synthetic */ AtomicReference zzarb;
    private final /* synthetic */ zzcs zzarc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzcx(zzcs zzcsVar, AtomicReference atomicReference, boolean z) {
        this.zzarc = zzcsVar;
        this.zzarb = atomicReference;
        this.zzaev = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzarc.zzgg().zza(this.zzarb, this.zzaev);
    }
}
