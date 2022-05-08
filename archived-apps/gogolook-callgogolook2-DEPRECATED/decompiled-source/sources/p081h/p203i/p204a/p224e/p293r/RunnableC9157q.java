package p081h.p203i.p204a.p224e.p293r;
/* renamed from: h.i.a.e.r.q */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/q.class */
public final class RunnableC9157q implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h f20856a;

    /* renamed from: b */
    public final /* synthetic */ C9154n f20857b;

    public RunnableC9157q(C9154n nVar, AbstractC9143h hVar) {
        this.f20857b = nVar;
        this.f20856a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C9135d0 d0Var;
        C9135d0 d0Var2;
        C9135d0 d0Var3;
        AbstractC9128a aVar;
        try {
            aVar = this.f20857b.f20849b;
            AbstractC9143h hVar = (AbstractC9143h) aVar.mo14017a(this.f20856a);
            if (hVar == null) {
                this.f20857b.mo3757a((Exception) new NullPointerException("Continuation returned null"));
                return;
            }
            hVar.mo16016a(C9146j.f20833b, (AbstractC9137e) this.f20857b);
            hVar.mo16017a(C9146j.f20833b, (AbstractC9134d) this.f20857b);
            hVar.mo16019a(C9146j.f20833b, (AbstractC9130b) this.f20857b);
        } catch (C9139f e) {
            if (e.getCause() instanceof Exception) {
                d0Var2 = this.f20857b.f20850c;
                d0Var2.m16045a((Exception) e.getCause());
                return;
            }
            d0Var = this.f20857b.f20850c;
            d0Var.m16045a((Exception) e);
        } catch (Exception e2) {
            d0Var3 = this.f20857b.f20850c;
            d0Var3.m16045a(e2);
        }
    }
}
