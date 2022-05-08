package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ff */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ff.class */
public final class RunnableC2779ff implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16854a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16855b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2779ff(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f16855b = zzhbVar;
        this.f16854a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16854a) {
            this.f16854a.set(Long.valueOf(this.f16855b.zzt().zza(this.f16855b.zzg().m1882e(), zzap.zzaj)));
            this.f16854a.notify();
        }
    }
}
