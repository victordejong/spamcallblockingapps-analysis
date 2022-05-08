package p081h.p203i.p204a.p224e.p285m.p287b;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: h.i.a.e.m.b.x1 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/x1.class */
public final class RunnableC9084x1 implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ AtomicReference f20757a;

    /* renamed from: b */
    public final /* synthetic */ boolean f20758b;

    /* renamed from: c */
    public final /* synthetic */ C9053s1 f20759c;

    public RunnableC9084x1(C9053s1 s1Var, AtomicReference atomicReference, boolean z) {
        this.f20759c = s1Var;
        this.f20757a = atomicReference;
        this.f20758b = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f20759c.m16321q().m16523a(this.f20757a, this.f20758b);
    }
}
