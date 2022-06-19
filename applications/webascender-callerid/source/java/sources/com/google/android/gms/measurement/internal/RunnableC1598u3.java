package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.u3 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u3.class */
final class RunnableC1598u3 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ boolean f4514f;

    /* renamed from: g */
    final /* synthetic */ C1603v3 f4515g;

    public RunnableC1598u3(C1603v3 c1603v3, boolean z) {
        this.f4515g = c1603v3;
        this.f4514f = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m9 m9Var;
        m9Var = this.f4515g.f4531a;
        m9Var.E(this.f4514f);
    }
}
