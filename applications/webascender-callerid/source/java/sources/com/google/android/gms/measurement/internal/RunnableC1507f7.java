package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.f7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f7.class */
final class RunnableC1507f7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ long f4245f;

    /* renamed from: g */
    final /* synthetic */ j7 f4246g;

    RunnableC1507f7(j7 j7Var, long j) {
        this.f4246g = j7Var;
        this.f4245f = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((l5) this.f4246g).a.g().k(this.f4245f);
        this.f4246g.e = null;
    }
}
