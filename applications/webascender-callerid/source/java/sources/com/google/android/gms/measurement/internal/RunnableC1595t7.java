package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.AbstractC1402vc;
/* renamed from: com.google.android.gms.measurement.internal.t7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/t7.class */
final class RunnableC1595t7 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ t f4507f;

    /* renamed from: g */
    final /* synthetic */ String f4508g;

    /* renamed from: h */
    final /* synthetic */ AbstractC1402vc f4509h;

    /* renamed from: i */
    final /* synthetic */ j8 f4510i;

    RunnableC1595t7(j8 j8Var, t tVar, String str, AbstractC1402vc abstractC1402vc) {
        this.f4510i = j8Var;
        this.f4507f = tVar;
        this.f4508g = str;
        this.f4509h = abstractC1402vc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        byte[] bArr = null;
        byte[] bArr2 = null;
        try {
            try {
                AbstractC1490d3 A = j8.A(this.f4510i);
                if (A == null) {
                    ((l5) this.f4510i).a.c().o().m1570a("Discarding data. Failed to send event to service to bundle");
                    bArr = ((l5) this.f4510i).a;
                    bArr2 = null;
                } else {
                    byte[] m1680g1 = A.m1680g1(this.f4507f, this.f4508g);
                    j8.B(this.f4510i);
                    bArr = ((l5) this.f4510i).a;
                    bArr2 = m1680g1;
                }
            } catch (RemoteException e) {
                bArr = bArr2;
                ((l5) this.f4510i).a.c().o().m1569b("Failed to send event to the service to bundle", e);
                bArr = ((l5) this.f4510i).a;
            }
            bArr.G().U(this.f4509h, bArr2);
        } catch (Throwable th) {
            ((l5) this.f4510i).a.G().U(this.f4509h, bArr);
            throw th;
        }
    }
}
