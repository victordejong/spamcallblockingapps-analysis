package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.c5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c5.class */
final class RunnableC1485c5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ t f4192f;

    /* renamed from: g */
    final /* synthetic */ aa f4193g;

    /* renamed from: h */
    final /* synthetic */ k5 f4194h;

    RunnableC1485c5(k5 k5Var, t tVar, aa aaVar) {
        this.f4194h = k5Var;
        this.f4192f = tVar;
        this.f4193g = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        t w = this.f4194h.w(this.f4192f, this.f4193g);
        k5.I2(this.f4194h).p();
        k5.I2(this.f4194h).g(w, this.f4193g);
    }
}
