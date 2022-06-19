package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.f6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f6.class */
final class RunnableC1506f6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4243f;

    /* renamed from: g */
    final /* synthetic */ u6 f4244g;

    RunnableC1506f6(u6 u6Var, AtomicReference atomicReference) {
        this.f4244g = u6Var;
        this.f4243f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4243f) {
            this.f4243f.set(Boolean.valueOf(((l5) this.f4244g).a.z().w(((l5) this.f4244g).a.d().p(), C1470a3.f4075K)));
            this.f4243f.notify();
        }
    }
}
