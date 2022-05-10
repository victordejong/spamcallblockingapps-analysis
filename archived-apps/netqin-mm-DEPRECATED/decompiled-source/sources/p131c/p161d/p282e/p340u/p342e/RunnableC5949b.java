package p131c.p161d.p282e.p340u.p342e;

import com.google.firebase.perf.util.Timer;
/* renamed from: c.d.e.u.e.b */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/e/b.class */
public final /* synthetic */ class RunnableC5949b implements Runnable {

    /* renamed from: a */
    public final C5950c f19311a;

    /* renamed from: b */
    public final Timer f19312b;

    public RunnableC5949b(C5950c cVar, Timer timer) {
        this.f19311a = cVar;
        this.f19312b = timer;
    }

    /* renamed from: a */
    public static Runnable m22594a(C5950c cVar, Timer timer) {
        return new RunnableC5949b(cVar, timer);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5950c.m22590a(this.f19311a, this.f19312b);
    }
}
