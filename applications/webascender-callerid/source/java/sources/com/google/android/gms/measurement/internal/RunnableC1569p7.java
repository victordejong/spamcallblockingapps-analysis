package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.common.internal.safeparcel.a;
/* renamed from: com.google.android.gms.measurement.internal.p7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/p7.class */
final class RunnableC1569p7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4445f;

    /* renamed from: g */
    final /* synthetic */ j8 f4446g;

    RunnableC1569p7(j8 j8Var, aa aaVar) {
        this.f4446g = j8Var;
        this.f4445f = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4446g);
        if (A == null) {
            ((l5) this.f4446g).a.c().o().m1570a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            C0931r.m3308k(this.f4445f);
            A.m1679l2(this.f4445f);
            ((l5) this.f4446g).a.I().u();
            this.f4446g.K(A, (a) null, this.f4445f);
            j8.B(this.f4446g);
        } catch (RemoteException e) {
            ((l5) this.f4446g).a.c().o().m1569b("Failed to send app launch to the service", e);
        }
    }
}
