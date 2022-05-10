package p131c.p161d.p282e.p340u.p348k;

import com.google.firebase.perf.p494v1.ApplicationProcessState;
import com.google.firebase.perf.p494v1.NetworkRequestMetric;
/* renamed from: c.d.e.u.k.j */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/j.class */
public final /* synthetic */ class RunnableC5990j implements Runnable {

    /* renamed from: a */
    public final C5992l f19448a;

    /* renamed from: b */
    public final NetworkRequestMetric f19449b;

    /* renamed from: c */
    public final ApplicationProcessState f19450c;

    public RunnableC5990j(C5992l lVar, NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        this.f19448a = lVar;
        this.f19449b = networkRequestMetric;
        this.f19450c = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m22403a(C5992l lVar, NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        return new RunnableC5990j(lVar, networkRequestMetric, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5992l.m22394a(this.f19448a, this.f19449b, this.f19450c);
    }
}
