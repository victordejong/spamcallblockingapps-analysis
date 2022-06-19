package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.m6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m6.class */
final class RunnableC1549m6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4389f;

    /* renamed from: g */
    final /* synthetic */ u6 f4390g;

    RunnableC1549m6(u6 u6Var, AtomicReference atomicReference) {
        this.f4390g = u6Var;
        this.f4389f = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4389f) {
            this.f4389f.set(Integer.valueOf(((l5) this.f4390g).a.z().t(((l5) this.f4390g).a.d().p(), C1470a3.f4078N)));
            this.f4389f.notify();
        }
    }
}
