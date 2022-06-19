package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.y7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/y7.class */
final class RunnableC1629y7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4595f;

    /* renamed from: g */
    final /* synthetic */ boolean f4596g;

    /* renamed from: h */
    final /* synthetic */ b f4597h;

    /* renamed from: i */
    final /* synthetic */ j8 f4598i;

    RunnableC1629y7(j8 j8Var, boolean z, aa aaVar, boolean z2, b bVar, b bVar2) {
        this.f4598i = j8Var;
        this.f4595f = aaVar;
        this.f4596g = z2;
        this.f4597h = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4598i);
        if (A == null) {
            ((l5) this.f4598i).a.c().o().m1570a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        C0931r.m3308k(this.f4595f);
        this.f4598i.K(A, this.f4596g ? null : this.f4597h, this.f4595f);
        j8.B(this.f4598i);
    }
}
