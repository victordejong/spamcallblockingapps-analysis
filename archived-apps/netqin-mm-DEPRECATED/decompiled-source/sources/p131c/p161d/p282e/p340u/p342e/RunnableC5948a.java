package p131c.p161d.p282e.p340u.p342e;

import com.google.firebase.perf.util.Timer;
/* renamed from: c.d.e.u.e.a */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/e/a.class */
public final /* synthetic */ class RunnableC5948a implements Runnable {

    /* renamed from: a */
    public final C5950c f19309a;

    /* renamed from: b */
    public final Timer f19310b;

    public RunnableC5948a(C5950c cVar, Timer timer) {
        this.f19309a = cVar;
        this.f19310b = timer;
    }

    /* renamed from: a */
    public static Runnable m22595a(C5950c cVar, Timer timer) {
        return new RunnableC5948a(cVar, timer);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5950c.m22585b(this.f19309a, this.f19310b);
    }
}
