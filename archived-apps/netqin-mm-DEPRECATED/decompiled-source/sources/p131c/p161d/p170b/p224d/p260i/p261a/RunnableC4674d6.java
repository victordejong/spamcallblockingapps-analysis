package p131c.p161d.p170b.p224d.p260i.p261a;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zzw;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.d6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/d6.class */
public final class RunnableC4674d6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzn f17035a;

    /* renamed from: b */
    public final /* synthetic */ zzw f17036b;

    /* renamed from: c */
    public final /* synthetic */ zzir f17037c;

    public RunnableC4674d6(zzir zzirVar, zzn zznVar, zzw zzwVar) {
        this.f17037c = zzirVar;
        this.f17035a = zznVar;
        this.f17036b = zzwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        String str = null;
        str = null;
        try {
            if (!zzml.m9520a() || !this.f17037c.m24897h().m9354a(zzas.f29831H0) || this.f17037c.m24898g().m24911y().m9306e()) {
                zzeiVar = this.f17037c.f30089d;
                if (zzeiVar == null) {
                    this.f17037c.mo8789p().m9152q().m9143a("Failed to get app instance id");
                    this.f17037c.m24899f().m8724a(this.f17036b, (String) null);
                    return;
                }
                str = zzeiVar.mo9018b(this.f17035a);
                if (str != null) {
                    this.f17037c.m24887l().m8979a(str);
                    this.f17037c.m24898g().f17218l.m9125a(str);
                }
                this.f17037c.m8912J();
                return;
            }
            this.f17037c.mo8789p().m9147v().m9143a("Analytics storage consent denied; will not get app instance id");
            this.f17037c.m24887l().m8979a((String) null);
            this.f17037c.m24898g().f17218l.m9125a(null);
            this.f17037c.m24899f().m8724a(this.f17036b, (String) null);
        } catch (RemoteException e) {
            this.f17037c.mo8789p().m9152q().m9142a("Failed to get app instance id", e);
        } finally {
            this.f17037c.m24899f().m8724a(this.f17036b, str);
        }
    }
}
