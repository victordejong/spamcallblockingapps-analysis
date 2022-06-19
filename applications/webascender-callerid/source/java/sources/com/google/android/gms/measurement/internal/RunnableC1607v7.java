package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.v7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/v7.class */
final class RunnableC1607v7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4540f;

    /* renamed from: g */
    final /* synthetic */ j8 f4541g;

    RunnableC1607v7(j8 j8Var, aa aaVar) {
        this.f4541g = j8Var;
        this.f4540f = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4541g);
        if (A == null) {
            ((l5) this.f4541g).a.c().o().m1570a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            C0931r.m3308k(this.f4540f);
            A.m1678t1(this.f4540f);
            j8.B(this.f4541g);
        } catch (RemoteException e) {
            ((l5) this.f4541g).a.c().o().m1569b("Failed to send measurementEnabled to the service", e);
        }
    }
}
