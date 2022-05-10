package p131c.p161d.p282e.p340u.p344g;

import com.google.firebase.perf.internal.GaugeManager;
import com.google.firebase.perf.p494v1.ApplicationProcessState;
/* renamed from: c.d.e.u.g.h */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/g/h.class */
public final /* synthetic */ class RunnableC5963h implements Runnable {

    /* renamed from: a */
    public final GaugeManager f19370a;

    /* renamed from: b */
    public final String f19371b;

    /* renamed from: c */
    public final ApplicationProcessState f19372c;

    public RunnableC5963h(GaugeManager gaugeManager, String str, ApplicationProcessState applicationProcessState) {
        this.f19370a = gaugeManager;
        this.f19371b = str;
        this.f19372c = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m22511a(GaugeManager gaugeManager, String str, ApplicationProcessState applicationProcessState) {
        return new RunnableC5963h(gaugeManager, str, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f19370a.syncFlush(this.f19371b, this.f19372c);
    }
}
