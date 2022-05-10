package p131c.p161d.p170b.p173b.p176i.p184y.p185j;

import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
/* renamed from: c.d.b.b.i.y.j.g */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/j/g.class */
public final /* synthetic */ class RunnableC2622g implements Runnable {

    /* renamed from: a */
    public final C2627l f9708a;

    /* renamed from: b */
    public final AbstractC2571m f9709b;

    /* renamed from: c */
    public final int f9710c;

    /* renamed from: d */
    public final Runnable f9711d;

    public RunnableC2622g(C2627l lVar, AbstractC2571m mVar, int i, Runnable runnable) {
        this.f9708a = lVar;
        this.f9709b = mVar;
        this.f9710c = i;
        this.f9711d = runnable;
    }

    /* renamed from: a */
    public static Runnable m29424a(C2627l lVar, AbstractC2571m mVar, int i, Runnable runnable) {
        return new RunnableC2622g(lVar, mVar, i, runnable);
    }

    @Override // java.lang.Runnable
    public void run() {
        C2627l.m29414a(this.f9708a, this.f9709b, this.f9710c, this.f9711d);
    }
}
