package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhq.class */
public final class zzhq implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ AtomicReference f9444f;

    /* renamed from: g */
    private final /* synthetic */ zzgy f9445g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzhq(zzgy zzgyVar, AtomicReference atomicReference) {
        this.f9445g = zzgyVar;
        this.f9444f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f9444f) {
            this.f9444f.set(Long.valueOf(this.f9445g.m11311l().m10883o(this.f9445g.m11599p().m11590B(), zzat.f8911M)));
            this.f9444f.notify();
        }
    }
}
