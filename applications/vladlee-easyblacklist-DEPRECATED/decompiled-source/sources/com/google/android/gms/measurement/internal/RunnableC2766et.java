package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.et */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/et.class */
public final class RunnableC2766et implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16813a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16814b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2766et(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f16814b = zzhbVar;
        this.f16813a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16813a) {
            this.f16813a.set(Boolean.valueOf(this.f16814b.zzt().zzd(this.f16814b.zzg().m1882e(), zzap.zzah)));
            this.f16813a.notify();
        }
    }
}
