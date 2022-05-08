package p081h.p203i.p204a.p224e.p285m.p287b;
/* renamed from: h.i.a.e.m.b.k0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/k0.class */
public final class RunnableC9004k0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ C9052s0 f20460a;

    /* renamed from: b */
    public final /* synthetic */ C9027o f20461b;

    public RunnableC9004k0(C8998j0 j0Var, C9052s0 s0Var, C9027o oVar) {
        this.f20460a = s0Var;
        this.f20461b = oVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f20460a.m16270w() == null) {
            this.f20461b.m16375s().m16338a("Install Referrer Reporter is null");
            return;
        }
        C8980g0 w = this.f20460a.m16270w();
        w.f20398a.m16284i();
        w.m16603a(w.f20398a.getContext().getPackageName());
    }
}
