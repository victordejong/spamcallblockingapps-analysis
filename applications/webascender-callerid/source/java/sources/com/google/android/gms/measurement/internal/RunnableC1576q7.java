package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
/* renamed from: com.google.android.gms.measurement.internal.q7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q7.class */
final class RunnableC1576q7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ C1480b7 f4461f;

    /* renamed from: g */
    final /* synthetic */ j8 f4462g;

    RunnableC1576q7(j8 j8Var, C1480b7 c1480b7) {
        this.f4462g = j8Var;
        this.f4461f = c1480b7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1490d3 A = j8.A(this.f4462g);
        if (A == null) {
            ((l5) this.f4462g).a.c().o().m1570a("Failed to send current screen to service");
            return;
        }
        try {
            C1480b7 c1480b7 = this.f4461f;
            if (c1480b7 == null) {
                A.m1691E0(0L, null, null, ((l5) this.f4462g).a.b().getPackageName());
            } else {
                A.m1691E0(c1480b7.f4180c, c1480b7.f4178a, c1480b7.f4179b, ((l5) this.f4462g).a.b().getPackageName());
            }
            j8.B(this.f4462g);
        } catch (RemoteException e) {
            ((l5) this.f4462g).a.c().o().m1569b("Failed to send current screen to the service", e);
        }
    }
}
