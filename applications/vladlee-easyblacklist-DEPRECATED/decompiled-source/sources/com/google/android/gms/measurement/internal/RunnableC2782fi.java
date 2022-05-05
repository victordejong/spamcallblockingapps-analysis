package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.fi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fi.class */
public final class RunnableC2782fi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f16864a;

    /* renamed from: b */
    private final /* synthetic */ zzhb f16865b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC2782fi(zzhb zzhbVar, AtomicReference atomicReference) {
        this.f16865b = zzhbVar;
        this.f16864a = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f16864a) {
            this.f16864a.set(Integer.valueOf(this.f16865b.zzt().zzb(this.f16865b.zzg().m1882e(), zzap.zzak)));
            this.f16864a.notify();
        }
    }
}
