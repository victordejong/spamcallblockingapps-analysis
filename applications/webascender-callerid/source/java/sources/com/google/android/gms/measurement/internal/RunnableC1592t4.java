package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.t4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/t4.class */
final class RunnableC1592t4 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ b f4503f;

    /* renamed from: g */
    final /* synthetic */ aa f4504g;

    /* renamed from: h */
    final /* synthetic */ k5 f4505h;

    RunnableC1592t4(k5 k5Var, b bVar, aa aaVar) {
        this.f4505h = k5Var;
        this.f4503f = bVar;
        this.f4504g = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k5.I2(this.f4505h).p();
        if (this.f4503f.h.y1() == null) {
            k5.I2(this.f4505h).B(this.f4503f, this.f4504g);
        } else {
            k5.I2(this.f4505h).z(this.f4503f, this.f4504g);
        }
    }
}
