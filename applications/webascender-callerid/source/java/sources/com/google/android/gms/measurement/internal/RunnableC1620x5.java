package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.x5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x5.class */
final class RunnableC1620x5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ boolean f4572f;

    /* renamed from: g */
    final /* synthetic */ u6 f4573g;

    RunnableC1620x5(u6 u6Var, boolean z) {
        this.f4573g = u6Var;
        this.f4572f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean k = ((l5) this.f4573g).a.k();
        boolean j = ((l5) this.f4573g).a.j();
        ((l5) this.f4573g).a.i(this.f4572f);
        if (j == this.f4572f) {
            ((l5) this.f4573g).a.c().w().m1569b("Default data collection state already set to", Boolean.valueOf(this.f4572f));
        }
        if (((l5) this.f4573g).a.k() == k || ((l5) this.f4573g).a.k() != ((l5) this.f4573g).a.j()) {
            ((l5) this.f4573g).a.c().t().m1568c("Default data collection is different than actual status", Boolean.valueOf(this.f4572f), Boolean.valueOf(k));
        }
        u6.K(this.f4573g);
    }
}
