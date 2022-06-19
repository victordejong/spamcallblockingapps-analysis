package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.i5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i5.class */
final class RunnableC1527i5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4325f;

    /* renamed from: g */
    final /* synthetic */ k5 f4326g;

    RunnableC1527i5(k5 k5Var, aa aaVar) {
        this.f4326g = k5Var;
        this.f4325f = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k5.I2(this.f4326g).p();
        k5.I2(this.f4326g).x(this.f4325f);
    }
}
