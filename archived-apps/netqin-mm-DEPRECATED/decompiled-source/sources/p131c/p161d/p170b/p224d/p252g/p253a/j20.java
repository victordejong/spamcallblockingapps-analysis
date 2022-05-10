package p131c.p161d.p170b.p224d.p252g.p253a;
/* renamed from: c.d.b.d.g.a.j20 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/j20.class */
public final class j20 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ Runnable f13579a;

    /* renamed from: b */
    public final /* synthetic */ h20 f13580b;

    public j20(h20 h20Var, Runnable runnable) {
        this.f13580b = h20Var;
        this.f13579a = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f13580b.f13233a = false;
        this.f13579a.run();
    }

    public final String toString() {
        return this.f13579a.toString();
    }
}
