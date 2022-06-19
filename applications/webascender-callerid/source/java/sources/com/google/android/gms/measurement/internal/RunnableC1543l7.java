package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.l7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/l7.class */
final class RunnableC1543l7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4367f;

    /* renamed from: g */
    final /* synthetic */ boolean f4368g;

    /* renamed from: h */
    final /* synthetic */ p9 f4369h;

    /* renamed from: i */
    final /* synthetic */ j8 f4370i;

    RunnableC1543l7(j8 j8Var, aa aaVar, boolean z, p9 p9Var) {
        this.f4370i = j8Var;
        this.f4367f = aaVar;
        this.f4368g = z;
        this.f4369h = p9Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4370i);
        if (A == null) {
            ((l5) this.f4370i).a.c().o().m1570a("Discarding data. Failed to set user property");
            return;
        }
        C0931r.m3308k(this.f4367f);
        this.f4370i.K(A, this.f4368g ? null : this.f4369h, this.f4367f);
        j8.B(this.f4370i);
    }
}
