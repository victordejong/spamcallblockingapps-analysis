package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.v9;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.n7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/n7.class */
final class RunnableC1555n7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ AtomicReference f4402f;

    /* renamed from: g */
    final /* synthetic */ aa f4403g;

    /* renamed from: h */
    final /* synthetic */ j8 f4404h;

    RunnableC1555n7(j8 j8Var, AtomicReference atomicReference, aa aaVar) {
        this.f4404h = j8Var;
        this.f4402f = atomicReference;
        this.f4403g = aaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f4402f) {
            try {
                v9.a();
            } catch (RemoteException e) {
                ((l5) this.f4404h).a.c().o().m1569b("Failed to get app instance id", e);
                atomicReference = this.f4402f;
            }
            if (((l5) this.f4404h).a.z().w((String) null, C1470a3.f4136w0) && !((l5) this.f4404h).a.A().t().m1663h()) {
                ((l5) this.f4404h).a.c().t().m1570a("Analytics storage consent denied; will not get app instance id");
                ((l5) this.f4404h).a.F().r((String) null);
                ((l5) this.f4404h).a.A().l.m1700b(null);
                this.f4402f.set(null);
                this.f4402f.notify();
                return;
            }
            AbstractC1490d3 A = j8.A(this.f4404h);
            if (A == null) {
                ((l5) this.f4404h).a.c().o().m1570a("Failed to get app instance id");
                this.f4402f.notify();
                return;
            }
            C0931r.m3308k(this.f4403g);
            this.f4402f.set(A.m1682d0(this.f4403g));
            String str = (String) this.f4402f.get();
            if (str != null) {
                ((l5) this.f4404h).a.F().r(str);
                ((l5) this.f4404h).a.A().l.m1700b(str);
            }
            j8.B(this.f4404h);
            atomicReference = this.f4402f;
            atomicReference.notify();
        }
    }
}
