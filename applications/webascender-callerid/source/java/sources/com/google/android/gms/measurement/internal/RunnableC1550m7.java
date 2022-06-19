package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.m7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/m7.class */
final class RunnableC1550m7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4391f;

    /* renamed from: g */
    final /* synthetic */ j8 f4392g;

    RunnableC1550m7(j8 j8Var, aa aaVar) {
        this.f4392g = j8Var;
        this.f4391f = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4392g);
        if (A == null) {
            ((l5) this.f4392g).a.c().o().m1570a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            C0931r.m3308k(this.f4391f);
            A.m1685U0(this.f4391f);
        } catch (RemoteException e) {
            ((l5) this.f4392g).a.c().o().m1569b("Failed to reset data on the service: remote exception", e);
        }
        j8.B(this.f4392g);
    }
}
