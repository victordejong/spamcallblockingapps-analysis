package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: c.d.b.d.i.a.e6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/e6.class */
public final class RunnableC4684e6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f17058a;

    /* renamed from: b */
    public final /* synthetic */ zzn f17059b;

    /* renamed from: c */
    public final /* synthetic */ zzir f17060c;

    public RunnableC4684e6(zzir zzirVar, AtomicReference atomicReference, zzn zznVar) {
        this.f17060c = zzirVar;
        this.f17058a = atomicReference;
        this.f17059b = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        synchronized (this.f17058a) {
            try {
            } catch (RemoteException e) {
                this.f17060c.mo8789p().m9152q().m9142a("Failed to get app instance id", e);
                this.f17058a.notify();
            }
            if (!zzml.m9520a() || !this.f17060c.m24897h().m9354a(zzas.f29831H0) || this.f17060c.m24898g().m24911y().m9306e()) {
                zzeiVar = this.f17060c.f30089d;
                if (zzeiVar == null) {
                    this.f17060c.mo8789p().m9152q().m9143a("Failed to get app instance id");
                    this.f17058a.notify();
                    return;
                }
                this.f17058a.set(zzeiVar.mo9018b(this.f17059b));
                String str = (String) this.f17058a.get();
                if (str != null) {
                    this.f17060c.m24887l().m8979a(str);
                    this.f17060c.m24898g().f17218l.m9125a(str);
                }
                this.f17060c.m8912J();
                this.f17058a.notify();
                return;
            }
            this.f17060c.mo8789p().m9147v().m9143a("Analytics storage consent denied; will not get app instance id");
            this.f17060c.m24887l().m8979a((String) null);
            this.f17060c.m24898g().f17218l.m9125a(null);
            this.f17058a.set(null);
            this.f17058a.notify();
        }
    }
}
