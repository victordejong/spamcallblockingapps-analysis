package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzei;
import com.google.android.gms.measurement.internal.zzir;
import com.google.android.gms.measurement.internal.zzku;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.a6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/a6.class */
public final class RunnableC4644a6 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f16956a;

    /* renamed from: b */
    public final /* synthetic */ zzku f16957b;

    /* renamed from: c */
    public final /* synthetic */ zzn f16958c;

    /* renamed from: d */
    public final /* synthetic */ zzir f16959d;

    public RunnableC4644a6(zzir zzirVar, boolean z, zzku zzkuVar, zzn zznVar) {
        this.f16959d = zzirVar;
        this.f16956a = z;
        this.f16957b = zzkuVar;
        this.f16958c = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzei zzeiVar;
        zzeiVar = this.f16959d.f30089d;
        if (zzeiVar == null) {
            this.f16959d.mo8789p().m9152q().m9143a("Discarding data. Failed to set user property");
            return;
        }
        this.f16959d.m8900a(zzeiVar, this.f16956a ? null : this.f16957b, this.f16958c);
        this.f16959d.m8912J();
    }
}
