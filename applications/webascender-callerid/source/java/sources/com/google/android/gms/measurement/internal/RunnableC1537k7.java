package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.AbstractC1402vc;
import java.util.List;
/* renamed from: com.google.android.gms.measurement.internal.k7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/k7.class */
final class RunnableC1537k7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4351f;

    /* renamed from: g */
    final /* synthetic */ String f4352g;

    /* renamed from: h */
    final /* synthetic */ aa f4353h;

    /* renamed from: i */
    final /* synthetic */ boolean f4354i;

    /* renamed from: j */
    final /* synthetic */ AbstractC1402vc f4355j;

    /* renamed from: k */
    final /* synthetic */ j8 f4356k;

    RunnableC1537k7(j8 j8Var, String str, String str2, aa aaVar, boolean z, AbstractC1402vc abstractC1402vc) {
        this.f4356k = j8Var;
        this.f4351f = str;
        this.f4352g = str2;
        this.f4353h = aaVar;
        this.f4354i = z;
        this.f4355j = abstractC1402vc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable th;
        RemoteException e;
        Bundle bundle;
        Bundle bundle2 = new Bundle();
        try {
            try {
                AbstractC1490d3 A = j8.A(this.f4356k);
                if (A == null) {
                    ((l5) this.f4356k).a.c().o().m1568c("Failed to get user properties; not connected to service", this.f4351f, this.f4352g);
                    ((l5) this.f4356k).a.G().W(this.f4355j, bundle2);
                    return;
                }
                C0931r.m3308k(this.f4353h);
                List<p9> m1688O0 = A.m1688O0(this.f4351f, this.f4352g, this.f4354i, this.f4353h);
                bundle = new Bundle();
                if (m1688O0 != null) {
                    for (p9 p9Var : m1688O0) {
                        String str = p9Var.j;
                        if (str != null) {
                            bundle.putString(p9Var.g, str);
                        } else {
                            Long l = p9Var.i;
                            if (l != null) {
                                bundle.putLong(p9Var.g, l.longValue());
                            } else {
                                Double d = p9Var.l;
                                if (d != null) {
                                    bundle.putDouble(p9Var.g, d.doubleValue());
                                }
                            }
                        }
                    }
                }
                try {
                    j8.B(this.f4356k);
                    ((l5) this.f4356k).a.G().W(this.f4355j, bundle);
                } catch (RemoteException e2) {
                    e = e2;
                    ((l5) this.f4356k).a.c().o().m1568c("Failed to get user properties; remote exception", this.f4351f, e);
                    ((l5) this.f4356k).a.G().W(this.f4355j, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                ((l5) this.f4356k).a.G().W(this.f4355j, bundle2);
                throw th;
            }
        } catch (RemoteException e3) {
            e = e3;
            bundle = bundle2;
        } catch (Throwable th3) {
            th = th3;
            ((l5) this.f4356k).a.G().W(this.f4355j, bundle2);
            throw th;
        }
    }
}
