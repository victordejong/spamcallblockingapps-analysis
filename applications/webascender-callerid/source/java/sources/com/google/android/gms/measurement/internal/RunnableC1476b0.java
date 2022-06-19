package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/b0.class */
final class RunnableC1476b0 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4164f;

    /* renamed from: g */
    final /* synthetic */ long f4165g;

    /* renamed from: h */
    final /* synthetic */ d2 f4166h;

    RunnableC1476b0(d2 d2Var, String str, long j) {
        this.f4166h = d2Var;
        this.f4164f = str;
        this.f4165g = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        d2.m(this.f4166h, this.f4164f, this.f4165g);
    }
}
