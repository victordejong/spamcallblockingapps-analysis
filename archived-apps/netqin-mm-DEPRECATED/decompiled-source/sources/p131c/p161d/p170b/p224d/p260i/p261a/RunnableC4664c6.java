package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.c6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/c6.class */
public final class RunnableC4664c6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzn f17014a;

    /* renamed from: b */
    public final /* synthetic */ zzir f17015b;

    public RunnableC4664c6(zzir zzirVar, zzn zznVar) {
        this.f17015b = zzirVar;
        this.f17014a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17015b.f30089d;
        if (zzeiVar == null) {
            this.f17015b.mo8789p().m9152q().m9143a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            zzeiVar.mo9016c(this.f17014a);
        } catch (RemoteException e) {
            this.f17015b.mo8789p().m9152q().m9142a("Failed to reset data on the service: remote exception", e);
        }
        this.f17015b.m8912J();
    }
}
