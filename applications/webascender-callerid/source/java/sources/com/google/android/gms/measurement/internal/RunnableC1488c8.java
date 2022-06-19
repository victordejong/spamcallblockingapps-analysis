package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.c8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/c8.class */
final class RunnableC1488c8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1490d3 f4202f;

    /* renamed from: g */
    final /* synthetic */ i8 f4203g;

    RunnableC1488c8(i8 i8Var, AbstractC1490d3 abstractC1490d3) {
        this.f4203g = i8Var;
        this.f4202f = abstractC1490d3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4203g) {
            i8.d(this.f4203g, false);
            if (!this.f4203g.c.H()) {
                ((l5) this.f4203g.c).a.c().w().m1570a("Connected to service");
                this.f4203g.c.s(this.f4202f);
            }
        }
    }
}
