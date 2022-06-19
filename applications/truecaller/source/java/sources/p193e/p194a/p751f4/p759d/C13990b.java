package p193e.p194a.p751f4.p759d;

import androidx.work.ListenableWorker;
import com.amazon.device.ads.DTBMetricsConfiguration;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import p193e.p194a.p751f4.p753b.p757i.AbstractC13983a;
import s1.z.c.l;
/* renamed from: e.a.f4.d.b */
/* loaded from: classes11-dex2jar.jar:e/a/f4/d/b.class */
public final class C13990b extends AbstractC21765k {

    /* renamed from: b */
    public final String f40449b = "EdgeLocationsWorkAction";

    /* renamed from: c */
    public final a<AbstractC13967b> f40450c;

    /* renamed from: d */
    public final a<AbstractC13983a> f40451d;

    /* renamed from: e */
    public final a<AbstractC19462a> f40452e;

    /* renamed from: f */
    public final a<AbstractC8432l> f40453f;

    @Inject
    public C13990b(a<AbstractC13967b> aVar, a<AbstractC13983a> aVar2, a<AbstractC19462a> aVar3, a<AbstractC8432l> aVar4) {
        l.e(aVar, "edgeLocationsManager");
        l.e(aVar2, "networkAdvancedSettings");
        l.e(aVar3, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar4, "accountManager");
        this.f40450c = aVar;
        this.f40451d = aVar2;
        this.f40452e = aVar3;
        this.f40453f = aVar4;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        ListenableWorker.AbstractC0414a.C0415a c0415a;
        long currentTimeMillis = System.currentTimeMillis();
        Long l = ((AbstractC13983a) this.f40451d.get()).getLong("edgeLocationsLastRequestTime", 0L);
        if (!(l.longValue() > 0)) {
            l = null;
        }
        boolean z = false;
        if (l != null) {
            long longValue = l.longValue();
            if (longValue > currentTimeMillis) {
                ((AbstractC13967b) this.f40450c.get()).mo20926e();
                double days = TimeUnit.MILLISECONDS.toDays(longValue - currentTimeMillis);
                AbstractC19462a abstractC19462a = (AbstractC19462a) this.f40452e.get();
                AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("IllegalEdgeLocationTtl", Double.valueOf(days), null, null);
                l.d(c19505a, "AnalyticsEvent.Builder(C…ueToSum(daysDiff).build()");
                abstractC19462a.mo13271e(c19505a);
                z = false;
            } else {
                z = ((AbstractC13983a) this.f40451d.get()).getLong("edgeLocationsExpiration", 0L).longValue() > currentTimeMillis;
            }
        }
        if (z) {
            ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
            l.d(c0417c, "Result.success()");
            return c0417c;
        }
        try {
            c0415a = ((AbstractC13967b) this.f40450c.get()).mo20928c() ? new ListenableWorker.AbstractC0414a.C0417c() : new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "if (edgeLocationsManager…s() else Result.failure()");
        } catch (IOException e) {
            c0415a = new ListenableWorker.AbstractC0414a.C0415a();
            l.d(c0415a, "Result.failure()");
        }
        return c0415a;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f40449b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC8432l) this.f40453f.get()).mo28580d();
    }
}
