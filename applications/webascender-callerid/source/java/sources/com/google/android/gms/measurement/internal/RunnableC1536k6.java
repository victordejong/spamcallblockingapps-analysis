package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.k6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k6.class */
final class RunnableC1536k6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4349f;

    /* renamed from: g */
    final /* synthetic */ u6 f4350g;

    RunnableC1536k6(u6 u6Var, AtomicReference atomicReference) {
        this.f4350g = u6Var;
        this.f4349f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4349f) {
            this.f4349f.set(((l5) this.f4350g).a.z().r(((l5) this.f4350g).a.d().p(), C1470a3.f4076L));
            this.f4349f.notify();
        }
    }
}
