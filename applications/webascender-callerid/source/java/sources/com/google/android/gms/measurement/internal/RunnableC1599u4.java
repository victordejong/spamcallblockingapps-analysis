package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.u4 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u4.class */
final class RunnableC1599u4 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ b f4516f;

    /* renamed from: g */
    final /* synthetic */ k5 f4517g;

    RunnableC1599u4(k5 k5Var, b bVar) {
        this.f4517g = k5Var;
        this.f4516f = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k5.I2(this.f4517g).p();
        if (this.f4516f.h.y1() == null) {
            k5.I2(this.f4517g).A(this.f4516f);
        } else {
            k5.I2(this.f4517g).y(this.f4516f);
        }
    }
}
