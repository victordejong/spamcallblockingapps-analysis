package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.f5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f5.class */
final class RunnableC1505f5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ p9 f4240f;

    /* renamed from: g */
    final /* synthetic */ aa f4241g;

    /* renamed from: h */
    final /* synthetic */ k5 f4242h;

    RunnableC1505f5(k5 k5Var, p9 p9Var, aa aaVar) {
        this.f4242h = k5Var;
        this.f4240f = p9Var;
        this.f4241g = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k5.I2(this.f4242h).p();
        if (this.f4240f.y1() == null) {
            k5.I2(this.f4242h).t(this.f4240f, this.f4241g);
        } else {
            k5.I2(this.f4242h).s(this.f4240f, this.f4241g);
        }
    }
}
