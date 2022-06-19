package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.n8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n8.class */
public final class RunnableC1556n8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ m9 f4405f;

    /* renamed from: g */
    final /* synthetic */ Runnable f4406g;

    public RunnableC1556n8(C1570p8 c1570p8, m9 m9Var, Runnable runnable) {
        this.f4405f = m9Var;
        this.f4406g = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f4405f.p();
        this.f4405f.o(this.f4406g);
        this.f4405f.k();
    }
}
