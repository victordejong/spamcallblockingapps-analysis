package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.AbstractC1402vc;
import com.google.android.gms.internal.measurement.v9;
/* renamed from: com.google.android.gms.measurement.internal.o7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/o7.class */
final class RunnableC1562o7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ aa f4420f;

    /* renamed from: g */
    final /* synthetic */ AbstractC1402vc f4421g;

    /* renamed from: h */
    final /* synthetic */ j8 f4422h;

    RunnableC1562o7(j8 j8Var, aa aaVar, AbstractC1402vc abstractC1402vc) {
        this.f4422h = j8Var;
        this.f4420f = aaVar;
        this.f4421g = abstractC1402vc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        r4 r4Var;
        String str = null;
        try {
            try {
                v9.a();
                if (!((l5) this.f4422h).a.z().w((String) null, C1470a3.f4136w0) || ((l5) this.f4422h).a.A().t().m1663h()) {
                    AbstractC1490d3 A = j8.A(this.f4422h);
                    if (A == null) {
                        ((l5) this.f4422h).a.c().o().m1570a("Failed to get app instance id");
                        r4Var = ((l5) this.f4422h).a;
                        str = null;
                    } else {
                        C0931r.m3308k(this.f4420f);
                        String m1682d0 = A.m1682d0(this.f4420f);
                        if (m1682d0 != null) {
                            ((l5) this.f4422h).a.F().r(m1682d0);
                            ((l5) this.f4422h).a.A().l.m1700b(m1682d0);
                        }
                        j8.B(this.f4422h);
                        r4Var = ((l5) this.f4422h).a;
                        str = m1682d0;
                    }
                } else {
                    ((l5) this.f4422h).a.c().t().m1570a("Analytics storage consent denied; will not get app instance id");
                    ((l5) this.f4422h).a.F().r((String) null);
                    ((l5) this.f4422h).a.A().l.m1700b(null);
                    r4Var = ((l5) this.f4422h).a;
                    str = null;
                }
            } catch (RemoteException e) {
                ((l5) this.f4422h).a.c().o().m1569b("Failed to get app instance id", e);
                r4Var = ((l5) this.f4422h).a;
            }
            r4Var.G().R(this.f4421g, str);
        } catch (Throwable th) {
            ((l5) this.f4422h).a.G().R(this.f4421g, (String) null);
            throw th;
        }
    }
}
