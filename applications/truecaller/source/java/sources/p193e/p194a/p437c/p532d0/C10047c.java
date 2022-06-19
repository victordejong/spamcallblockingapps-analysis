package p193e.p194a.p437c.p532d0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import s1.z.c.l;
/* renamed from: e.a.c.d0.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/d0/c.class */
public final class C10047c extends AbstractC21765k {

    /* renamed from: b */
    public final String f29891b = "InsightsEventClearWorkAction";

    /* renamed from: c */
    public final AbstractC9691j f29892c;

    /* renamed from: d */
    public final AbstractC10060c f29893d;

    @Inject
    public C10047c(AbstractC9691j abstractC9691j, AbstractC10060c abstractC10060c) {
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10060c, "insightsAnalyticsManager");
        this.f29892c = abstractC9691j;
        this.f29893d = abstractC10060c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        this.f29893d.mo26754d();
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29891b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f29892c.mo27271X();
    }
}
