package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzfz;
import com.google.android.gms.measurement.internal.zzkl;
import com.google.android.gms.measurement.internal.zzn;
/* renamed from: c.d.b.d.i.a.e4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/e4.class */
public final class RunnableC4682e4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ zzn f17051a;

    /* renamed from: b */
    public final /* synthetic */ zzfz f17052b;

    public RunnableC4682e4(zzfz zzfzVar, zzn zznVar) {
        this.f17052b = zzfzVar;
        this.f17051a = zznVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzkl zzklVar;
        zzkl zzklVar2;
        zzklVar = this.f17052b.f30034a;
        zzklVar.m8785t();
        zzklVar2 = this.f17052b.f30034a;
        zzn zznVar = this.f17051a;
        if (zzml.m9520a() && zzklVar2.m8798g().m9354a(zzas.f29835J0)) {
            zzklVar2.mo8795j().mo9085c();
            zzklVar2.m8787r();
            Preconditions.m17281b(zznVar.f30154a);
            zzac a = zzac.m9315a(zznVar.f30176w);
            zzac a2 = zzklVar2.m8822a(zznVar.f30154a);
            zzklVar2.mo8789p().m9144y().m9141a("Setting consent, package, consent", zznVar.f30154a, a);
            zzklVar2.m8819a(zznVar.f30154a, a);
            if (a.m9318a(a2)) {
                zzklVar2.m8827a(zznVar);
            }
        }
    }
}
