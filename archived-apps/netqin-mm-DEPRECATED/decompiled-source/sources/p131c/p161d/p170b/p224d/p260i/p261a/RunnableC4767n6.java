package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.n6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/n6.class */
public final class RunnableC4767n6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzn f17287a;

    /* renamed from: b */
    public final /* synthetic */ zzir f17288b;

    public RunnableC4767n6(zzir zzirVar, zzn zznVar) {
        this.f17288b = zzirVar;
        this.f17287a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17288b.f30089d;
        if (zzeiVar == null) {
            this.f17288b.mo8789p().m9152q().m9143a("Failed to send consent settings to service");
            return;
        }
        try {
            zzeiVar.mo9030a(this.f17287a);
            this.f17288b.m8912J();
        } catch (RemoteException e) {
            this.f17288b.mo8789p().m9152q().m9142a("Failed to send consent settings to the service", e);
        }
    }
}
