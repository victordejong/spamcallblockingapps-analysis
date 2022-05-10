package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.j6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/j6.class */
public final class RunnableC4731j6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Bundle f17197a;

    /* renamed from: b */
    public final /* synthetic */ zzn f17198b;

    /* renamed from: c */
    public final /* synthetic */ zzir f17199c;

    public RunnableC4731j6(zzir zzirVar, Bundle bundle, zzn zznVar) {
        this.f17199c = zzirVar;
        this.f17197a = bundle;
        this.f17198b = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f17199c.f30089d;
        if (zzeiVar == null) {
            this.f17199c.mo8789p().m9152q().m9143a("Failed to send default event parameters to service");
            return;
        }
        try {
            zzeiVar.mo9036a(this.f17197a, this.f17198b);
        } catch (RemoteException e) {
            this.f17199c.mo8789p().m9152q().m9142a("Failed to send default event parameters to service", e);
        }
    }
}
