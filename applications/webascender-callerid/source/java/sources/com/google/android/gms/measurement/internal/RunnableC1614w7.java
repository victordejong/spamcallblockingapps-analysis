package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.w7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/w7.class */
final class RunnableC1614w7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4553f;

    /* renamed from: g */
    final /* synthetic */ j8 f4554g;

    RunnableC1614w7(j8 j8Var, aa aaVar) {
        this.f4554g = j8Var;
        this.f4553f = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4554g);
        if (A == null) {
            ((l5) this.f4554g).a.c().o().m1570a("Failed to send consent settings to service");
            return;
        }
        try {
            C0931r.m3308k(this.f4553f);
            A.m1686T(this.f4553f);
            j8.B(this.f4554g);
        } catch (RemoteException e) {
            ((l5) this.f4554g).a.c().o().m1569b("Failed to send consent settings to the service", e);
        }
    }
}
