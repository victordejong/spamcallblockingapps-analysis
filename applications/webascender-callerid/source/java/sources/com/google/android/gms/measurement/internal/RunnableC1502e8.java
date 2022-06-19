package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.e8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e8.class */
final class RunnableC1502e8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AbstractC1490d3 f4228f;

    /* renamed from: g */
    final /* synthetic */ i8 f4229g;

    RunnableC1502e8(i8 i8Var, AbstractC1490d3 abstractC1490d3) {
        this.f4229g = i8Var;
        this.f4228f = abstractC1490d3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f4229g) {
            i8.d(this.f4229g, false);
            if (!this.f4229g.c.H()) {
                ((l5) this.f4229g.c).a.c().v().m1570a("Connected to remote service");
                this.f4229g.c.s(this.f4228f);
            }
        }
    }
}
