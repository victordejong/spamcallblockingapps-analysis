package p131c.p161d.p282e.p340u.p348k;

import com.google.firebase.perf.p494v1.ApplicationProcessState;
import p131c.p161d.p282e.p340u.p350m.C6021k;
/* renamed from: c.d.e.u.k.k */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/k/k.class */
public final /* synthetic */ class RunnableC5991k implements Runnable {

    /* renamed from: a */
    public final C5992l f19451a;

    /* renamed from: b */
    public final C6021k f19452b;

    /* renamed from: c */
    public final ApplicationProcessState f19453c;

    public RunnableC5991k(C5992l lVar, C6021k kVar, ApplicationProcessState applicationProcessState) {
        this.f19451a = lVar;
        this.f19452b = kVar;
        this.f19453c = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m22402a(C5992l lVar, C6021k kVar, ApplicationProcessState applicationProcessState) {
        return new RunnableC5991k(lVar, kVar, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        C5992l.m22396a(this.f19451a, this.f19452b, this.f19453c);
    }
}
