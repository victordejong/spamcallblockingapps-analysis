package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.p6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p6.class */
final class RunnableC1568p6 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1510g f4439f;

    /* renamed from: g */
    final /* synthetic */ long f4440g;

    /* renamed from: h */
    final /* synthetic */ int f4441h;

    /* renamed from: i */
    final /* synthetic */ long f4442i;

    /* renamed from: j */
    final /* synthetic */ boolean f4443j;

    /* renamed from: k */
    final /* synthetic */ u6 f4444k;

    RunnableC1568p6(u6 u6Var, C1510g c1510g, long j, int i, long j2, boolean z) {
        this.f4444k = u6Var;
        this.f4439f = c1510g;
        this.f4440g = j;
        this.f4441h = i;
        this.f4442i = j2;
        this.f4443j = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4444k.W(this.f4439f);
        this.f4444k.t(this.f4440g, false);
        u6.J(this.f4444k, this.f4439f, this.f4441h, this.f4442i, true, this.f4443j);
    }
}
