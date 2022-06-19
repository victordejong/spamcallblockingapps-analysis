package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.g7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/g7.class */
final class RunnableC1515g7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1480b7 f4291f;

    /* renamed from: g */
    final /* synthetic */ long f4292g;

    /* renamed from: h */
    final /* synthetic */ j7 f4293h;

    RunnableC1515g7(j7 j7Var, C1480b7 c1480b7, long j) {
        this.f4293h = j7Var;
        this.f4291f = c1480b7;
        this.f4292g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        j7.H(this.f4293h, this.f4291f, false, this.f4292g);
        j7 j7Var = this.f4293h;
        j7Var.e = null;
        ((l5) j7Var).a.R().W((C1480b7) null);
    }
}
