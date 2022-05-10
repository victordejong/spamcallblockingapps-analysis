package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzhb;
/* renamed from: c.d.b.d.i.a.t4 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/t4.class */
public final class RunnableC4819t4 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ boolean f17392a;

    /* renamed from: b */
    public final /* synthetic */ zzhb f17393b;

    public RunnableC4819t4(zzhb zzhbVar, boolean z) {
        this.f17393b = zzhbVar;
        this.f17392a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean c = this.f17393b.f17262a.m9058c();
        boolean H = this.f17393b.f17262a.m9072H();
        this.f17393b.f17262a.m9063a(this.f17392a);
        if (H == this.f17392a) {
            this.f17393b.f17262a.mo8789p().m9144y().m9142a("Default data collection state already set to", Boolean.valueOf(this.f17392a));
        }
        if (this.f17393b.f17262a.m9058c() == c || this.f17393b.f17262a.m9058c() != this.f17393b.f17262a.m9072H()) {
            this.f17393b.f17262a.mo8789p().m9147v().m9141a("Default data collection is different than actual status", Boolean.valueOf(this.f17392a), Boolean.valueOf(c));
        }
        this.f17393b.m8995L();
    }
}
