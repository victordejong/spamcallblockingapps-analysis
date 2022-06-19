package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.w5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w5.class */
final /* synthetic */ class RunnableC1612w5 implements Runnable {

    /* renamed from: f */
    private final u6 f4547f;

    RunnableC1612w5(u6 u6Var) {
        this.f4547f = u6Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        u6 u6Var = this.f4547f;
        u6Var.h();
        if (((l5) u6Var).a.A().w.m1495a()) {
            ((l5) u6Var).a.c().v().m1570a("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long m1484a = ((l5) u6Var).a.A().x.m1484a();
        ((l5) u6Var).a.A().x.m1483b(1 + m1484a);
        ((l5) u6Var).a.z();
        if (m1484a < 5) {
            ((l5) u6Var).a.r();
            return;
        }
        ((l5) u6Var).a.c().r().m1570a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
        ((l5) u6Var).a.A().w.m1494b(true);
    }
}
