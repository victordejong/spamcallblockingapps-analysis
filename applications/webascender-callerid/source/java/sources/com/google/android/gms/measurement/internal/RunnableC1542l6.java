package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.l6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l6.class */
final class RunnableC1542l6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4365f;

    /* renamed from: g */
    final /* synthetic */ u6 f4366g;

    RunnableC1542l6(u6 u6Var, AtomicReference atomicReference) {
        this.f4366g = u6Var;
        this.f4365f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4365f) {
            this.f4365f.set(Long.valueOf(((l5) this.f4366g).a.z().s(((l5) this.f4366g).a.d().p(), C1470a3.f4077M)));
            this.f4365f.notify();
        }
    }
}
