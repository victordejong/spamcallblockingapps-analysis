package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.e9 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/e9.class */
final class RunnableC1503e9 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1557n9 f4230f;

    /* renamed from: g */
    final /* synthetic */ m9 f4231g;

    RunnableC1503e9(m9 m9Var, C1557n9 c1557n9) {
        this.f4231g = m9Var;
        this.f4230f = c1557n9;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m9.G(this.f4231g, this.f4230f);
        this.f4231g.V();
    }
}
