package p131c.p132a.p133a.p134a;

import p131c.p132a.p133a.p134a.C1994g;
/* renamed from: c.a.a.a.l0 */
/* loaded from: classes-dex2jar.jar:c/a/a/a/l0.class */
public final class RunnableC2008l0 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ int f7863a;

    /* renamed from: b */
    public final /* synthetic */ String f7864b;

    /* renamed from: c */
    public final /* synthetic */ CallableC2010m0 f7865c;

    public RunnableC2008l0(CallableC2010m0 m0Var, int i, String str) {
        this.f7865c = m0Var;
        this.f7863a = i;
        this.f7864b = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC1982b bVar = this.f7865c.f7867b;
        C1994g.C1995a c = C1994g.m31290c();
        c.m31288a(this.f7863a);
        c.m31287a(this.f7864b);
        bVar.mo19796a(c.m31289a());
    }
}
