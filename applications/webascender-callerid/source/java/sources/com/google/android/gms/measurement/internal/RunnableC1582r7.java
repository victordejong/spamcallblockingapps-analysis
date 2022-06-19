package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
/* renamed from: com.google.android.gms.measurement.internal.r7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/r7.class */
final class RunnableC1582r7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4478f;

    /* renamed from: g */
    final /* synthetic */ Bundle f4479g;

    /* renamed from: h */
    final /* synthetic */ j8 f4480h;

    RunnableC1582r7(j8 j8Var, aa aaVar, Bundle bundle) {
        this.f4480h = j8Var;
        this.f4478f = aaVar;
        this.f4479g = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4480h);
        if (A == null) {
            ((l5) this.f4480h).a.c().o().m1570a("Failed to send default event parameters to service");
            return;
        }
        try {
            C0931r.m3308k(this.f4478f);
            A.m1684Y0(this.f4479g, this.f4478f);
        } catch (RemoteException e) {
            ((l5) this.f4480h).a.c().o().m1569b("Failed to send default event parameters to service", e);
        }
    }
}
