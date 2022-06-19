package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.q6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q6.class */
final class RunnableC1575q6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1510g f4456f;

    /* renamed from: g */
    final /* synthetic */ int f4457g;

    /* renamed from: h */
    final /* synthetic */ long f4458h;

    /* renamed from: i */
    final /* synthetic */ boolean f4459i;

    /* renamed from: j */
    final /* synthetic */ u6 f4460j;

    RunnableC1575q6(u6 u6Var, C1510g c1510g, int i, long j, boolean z) {
        this.f4460j = u6Var;
        this.f4456f = c1510g;
        this.f4457g = i;
        this.f4458h = j;
        this.f4459i = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4460j.W(this.f4456f);
        u6.J(this.f4460j, this.f4456f, this.f4457g, this.f4458h, false, this.f4459i);
    }
}
