package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.c6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c6.class */
final class RunnableC1486c6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ long f4195f;

    /* renamed from: g */
    final /* synthetic */ u6 f4196g;

    RunnableC1486c6(u6 u6Var, long j) {
        this.f4196g = u6Var;
        this.f4195f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4196g.t(this.f4195f, true);
        ((l5) this.f4196g).a.R().T(new AtomicReference());
    }
}
