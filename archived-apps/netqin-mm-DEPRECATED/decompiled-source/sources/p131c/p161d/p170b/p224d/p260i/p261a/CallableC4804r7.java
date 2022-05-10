package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.measurement.internal.zzac;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkl;
import com.google.android.gms.measurement.internal.zzn;
import java.util.concurrent.Callable;
/* renamed from: c.d.b.d.i.a.r7 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/r7.class */
public final class CallableC4804r7 implements Callable<String> {

    /* renamed from: a */
    public final /* synthetic */ zzn f17371a;

    /* renamed from: b */
    public final /* synthetic */ zzkl f17372b;

    public CallableC4804r7(zzkl zzklVar, zzn zznVar) {
        this.f17372b = zzklVar;
        this.f17371a = zznVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        if (!zzml.m9520a() || !this.f17372b.m8798g().m9354a(zzas.f29835J0) || (this.f17372b.m8822a(this.f17371a.f30154a).m9306e() && zzac.m9315a(this.f17371a.f30176w).m9306e())) {
            C4710h3 c = this.f17372b.m8804c(this.f17371a);
            if (c != null) {
                return c.m24966m();
            }
            this.f17372b.mo8789p().m9149t().m9143a("App info was null when attempting to get app instance id");
            return null;
        }
        this.f17372b.mo8789p().m9144y().m9143a("Analytics storage consent denied. Returning null app instance id");
        return null;
    }
}
