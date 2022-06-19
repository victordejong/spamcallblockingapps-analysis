package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.n6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n6.class */
final class RunnableC1554n6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4400f;

    /* renamed from: g */
    final /* synthetic */ u6 f4401g;

    RunnableC1554n6(u6 u6Var, AtomicReference atomicReference) {
        this.f4401g = u6Var;
        this.f4400f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4400f) {
            this.f4400f.set(Double.valueOf(((l5) this.f4401g).a.z().v(((l5) this.f4401g).a.d().p(), C1470a3.f4079O)));
            this.f4400f.notify();
        }
    }
}
