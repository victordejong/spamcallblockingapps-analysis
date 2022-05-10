package p131c.p161d.p170b.p224d.p260i.p261a;

import com.google.android.gms.measurement.internal.zzw;
/* renamed from: c.d.b.d.i.a.g */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/g.class */
public final class RunnableC4697g implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC4765n4 f17089a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC4687f f17090b;

    public RunnableC4697g(AbstractC4687f fVar, AbstractC4765n4 n4Var) {
        this.f17090b = fVar;
        this.f17089a = n4Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f17089a.mo8844a();
        if (zzw.m8665a()) {
            this.f17089a.mo8795j().m9093a(this);
            return;
        }
        boolean b = this.f17090b.m25023b();
        this.f17090b.f17067c = 0L;
        if (b) {
            this.f17090b.mo24871a();
        }
    }
}
