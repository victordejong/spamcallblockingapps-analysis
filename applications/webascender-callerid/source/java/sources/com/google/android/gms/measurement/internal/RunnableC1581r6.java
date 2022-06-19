package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.r6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r6.class */
final class RunnableC1581r6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1510g f4473f;

    /* renamed from: g */
    final /* synthetic */ int f4474g;

    /* renamed from: h */
    final /* synthetic */ long f4475h;

    /* renamed from: i */
    final /* synthetic */ boolean f4476i;

    /* renamed from: j */
    final /* synthetic */ u6 f4477j;

    RunnableC1581r6(u6 u6Var, C1510g c1510g, int i, long j, boolean z) {
        this.f4477j = u6Var;
        this.f4473f = c1510g;
        this.f4474g = i;
        this.f4475h = j;
        this.f4476i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4477j.W(this.f4473f);
        u6.J(this.f4477j, this.f4473f, this.f4474g, this.f4475h, false, this.f4476i);
    }
}
