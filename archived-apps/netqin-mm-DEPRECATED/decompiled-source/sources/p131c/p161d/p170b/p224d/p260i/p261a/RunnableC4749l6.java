package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzw;
import com.google.android.gms.measurement.internal.zzaq;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
/* renamed from: c.d.b.d.i.a.l6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/l6.class */
public final class RunnableC4749l6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzaq f17253a;

    /* renamed from: b */
    public final /* synthetic */ String f17254b;

    /* renamed from: c */
    public final /* synthetic */ zzw f17255c;

    /* renamed from: d */
    public final /* synthetic */ zzir f17256d;

    public RunnableC4749l6(zzir zzirVar, zzaq zzaqVar, String str, zzw zzwVar) {
        this.f17256d = zzirVar;
        this.f17253a = zzaqVar;
        this.f17254b = str;
        this.f17255c = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        byte[] bArr = null;
        bArr = null;
        try {
            zzeiVar = this.f17256d.f30089d;
            if (zzeiVar == null) {
                this.f17256d.mo8789p().m9152q().m9143a("Discarding data. Failed to send event to service to bundle");
                this.f17256d.m24899f().m8721a(this.f17255c, (byte[]) null);
                return;
            }
            bArr = zzeiVar.mo9034a(this.f17253a, this.f17254b);
            this.f17256d.m8912J();
        } catch (RemoteException e) {
            this.f17256d.mo8789p().m9152q().m9142a("Failed to send event to the service to bundle", e);
        } finally {
            this.f17256d.m24899f().m8721a(this.f17255c, bArr);
        }
    }
}
