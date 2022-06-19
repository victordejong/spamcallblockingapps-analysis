package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.x7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/x7.class */
final class RunnableC1622x7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4578f;

    /* renamed from: g */
    final /* synthetic */ boolean f4579g;

    /* renamed from: h */
    final /* synthetic */ t f4580h;

    /* renamed from: i */
    final /* synthetic */ j8 f4581i;

    RunnableC1622x7(j8 j8Var, boolean z, aa aaVar, boolean z2, t tVar, String str) {
        this.f4581i = j8Var;
        this.f4578f = aaVar;
        this.f4579g = z2;
        this.f4580h = tVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4581i);
        if (A == null) {
            ((l5) this.f4581i).a.c().o().m1570a("Discarding data. Failed to send event to service");
            return;
        }
        C0931r.m3308k(this.f4578f);
        this.f4581i.K(A, this.f4579g ? null : this.f4580h, this.f4578f);
        j8.B(this.f4581i);
    }
}
