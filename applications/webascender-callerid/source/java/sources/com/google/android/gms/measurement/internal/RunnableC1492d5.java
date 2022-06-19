package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.d5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d5.class */
final class RunnableC1492d5 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ t f4208f;

    /* renamed from: g */
    final /* synthetic */ String f4209g;

    /* renamed from: h */
    final /* synthetic */ k5 f4210h;

    RunnableC1492d5(k5 k5Var, t tVar, String str) {
        this.f4210h = k5Var;
        this.f4208f = tVar;
        this.f4209g = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k5.I2(this.f4210h).p();
        k5.I2(this.f4210h).n0(this.f4208f, this.f4209g);
    }
}
