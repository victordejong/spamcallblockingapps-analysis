package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fh.class */
public final class RunnableC2781fh implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16862a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16863b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2781fh(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f16863b = zzhbVar;
        this.f16862a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16862a) {
            this.f16862a.set(Double.valueOf(this.f16863b.zzt().zzc(this.f16863b.zzg().m1882e(), zzap.zzal)));
            this.f16862a.notify();
        }
    }
}
