package p131c.p161d.p282e.p340u.p342e;

import com.google.firebase.perf.util.Timer;
/* renamed from: c.d.e.u.e.d */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/e/d.class */
public final /* synthetic */ class RunnableC5951d implements Runnable {

    /* renamed from: a */
    public final C5953f f19322a;

    /* renamed from: b */
    public final Timer f19323b;

    public RunnableC5951d(C5953f fVar, Timer timer) {
        this.f19322a = fVar;
        this.f19323b = timer;
    }

    /* renamed from: a */
    public static Runnable m22581a(C5953f fVar, Timer timer) {
        return new RunnableC5951d(fVar, timer);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5953f.m22572b(this.f19322a, this.f19323b);
    }
}
