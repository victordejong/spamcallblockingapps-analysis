package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fd.class */
public final class RunnableC2777fd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16847a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16848b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2777fd(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f16848b = zzhbVar;
        this.f16847a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16847a) {
            this.f16847a.set(this.f16848b.zzt().m1595c(this.f16848b.zzg().m1882e()));
            this.f16847a.notify();
        }
    }
}
