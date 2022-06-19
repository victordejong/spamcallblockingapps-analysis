package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.z5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/z5.class */
final class RunnableC1633z5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ long f4614f;

    /* renamed from: g */
    final /* synthetic */ u6 f4615g;

    RunnableC1633z5(u6 u6Var, long j) {
        this.f4615g = u6Var;
        this.f4614f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((l5) this.f4615g).a.A().p.m1483b(this.f4614f);
        ((l5) this.f4615g).a.c().v().m1569b("Session timeout duration set", Long.valueOf(this.f4614f));
    }
}
