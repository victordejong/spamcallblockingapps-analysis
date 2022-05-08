package p081h.p203i.p204a.p224e.p293r;
/* renamed from: h.i.a.e.r.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/r/o.class */
public final class RunnableC9155o implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AbstractC9143h f20851a;

    /* renamed from: b */
    public final /* synthetic */ C9153m f20852b;

    public RunnableC9155o(C9153m mVar, AbstractC9143h hVar) {
        this.f20852b = mVar;
        this.f20851a = hVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C9135d0 d0Var;
        C9135d0 d0Var2;
        C9135d0 d0Var3;
        AbstractC9128a aVar;
        C9135d0 d0Var4;
        C9135d0 d0Var5;
        if (this.f20851a.mo16011c()) {
            d0Var5 = this.f20852b.f20847c;
            d0Var5.m16041f();
            return;
        }
        try {
            aVar = this.f20852b.f20846b;
            Object a = aVar.mo14017a(this.f20851a);
            d0Var4 = this.f20852b.f20847c;
            d0Var4.m16044a((C9135d0) a);
        } catch (C9139f e) {
            if (e.getCause() instanceof Exception) {
                d0Var2 = this.f20852b.f20847c;
                d0Var2.m16045a((Exception) e.getCause());
                return;
            }
            d0Var = this.f20852b.f20847c;
            d0Var.m16045a((Exception) e);
        } catch (Exception e2) {
            d0Var3 = this.f20852b.f20847c;
            d0Var3.m16045a(e2);
        }
    }
}
