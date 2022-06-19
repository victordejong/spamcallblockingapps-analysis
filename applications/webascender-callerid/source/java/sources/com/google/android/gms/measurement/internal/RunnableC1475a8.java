package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C0931r;
import com.google.android.gms.internal.measurement.AbstractC1402vc;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.measurement.internal.a8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a8.class */
final class RunnableC1475a8 implements Runnable {

    /* renamed from: f */
    final /* synthetic */ String f4159f;

    /* renamed from: g */
    final /* synthetic */ String f4160g;

    /* renamed from: h */
    final /* synthetic */ aa f4161h;

    /* renamed from: i */
    final /* synthetic */ AbstractC1402vc f4162i;

    /* renamed from: j */
    final /* synthetic */ j8 f4163j;

    RunnableC1475a8(j8 j8Var, String str, String str2, aa aaVar, AbstractC1402vc abstractC1402vc) {
        this.f4163j = j8Var;
        this.f4159f = str;
        this.f4160g = str2;
        this.f4161h = aaVar;
        this.f4162i = abstractC1402vc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = arrayList;
        ArrayList arrayList3 = arrayList;
        try {
            try {
                AbstractC1490d3 A = j8.A(this.f4163j);
                if (A == null) {
                    ((l5) this.f4163j).a.c().o().m1568c("Failed to get conditional properties; not connected to service", this.f4159f, this.f4160g);
                    arrayList2 = ((l5) this.f4163j).a;
                    arrayList3 = arrayList;
                } else {
                    C0931r.m3308k(this.f4161h);
                    ArrayList Y = t9.Y(A.m1690H(this.f4159f, this.f4160g, this.f4161h));
                    j8.B(this.f4163j);
                    arrayList2 = ((l5) this.f4163j).a;
                    arrayList3 = Y;
                }
            } catch (RemoteException e) {
                arrayList2 = arrayList3;
                ((l5) this.f4163j).a.c().o().m1567d("Failed to get conditional properties; remote exception", this.f4159f, this.f4160g, e);
                arrayList2 = ((l5) this.f4163j).a;
            }
            arrayList2.G().X(this.f4162i, arrayList3);
        } catch (Throwable th) {
            ((l5) this.f4163j).a.G().X(this.f4162i, arrayList2);
            throw th;
        }
    }
}
