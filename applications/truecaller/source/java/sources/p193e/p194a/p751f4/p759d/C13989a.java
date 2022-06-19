package p193e.p194a.p751f4.p759d;

import com.amazon.device.ads.DTBMetricsConfiguration;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p751f4.p753b.AbstractC13954b;
import p193e.p194a.p751f4.p753b.C13956d;
import p193e.p194a.p751f4.p753b.p755g.AbstractC13967b;
import s1.z.c.l;
import u3.b0;
/* renamed from: e.a.f4.d.a */
/* loaded from: classes11-dex2jar.jar:e/a/f4/d/a.class */
public final class C13989a implements b0 {

    /* renamed from: a */
    public final AbstractC13967b f40444a;

    /* renamed from: b */
    public final AbstractC19462a f40445b;

    /* renamed from: c */
    public final AbstractC13954b f40446c;

    /* renamed from: d */
    public final C13956d f40447d;

    /* renamed from: e */
    public final boolean f40448e;

    public C13989a(AbstractC13967b abstractC13967b, AbstractC19462a abstractC19462a, AbstractC13954b abstractC13954b, C13956d c13956d, boolean z) {
        l.e(abstractC13967b, "edgeLocationsManager");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13954b, "domainResolver");
        l.e(c13956d, "crossDomainSupport");
        this.f40444a = abstractC13967b;
        this.f40445b = abstractC19462a;
        this.f40446c = abstractC13954b;
        this.f40447d = c13956d;
        this.f40448e = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00d3, code lost:
        if (r17 != null) goto L37;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public u3.k0 m20882a(u3.b0.a r10) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p751f4.p759d.C13989a.m20882a(u3.b0$a):u3.k0");
    }

    /* renamed from: b */
    public final void m20881b(String str, int i) {
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("FetchEdgeLocations");
        c19504b.m13263d("Context", "Interceptor");
        c19504b.m13263d("FinalResult", str);
        c19504b.m13265b("Attempts", i);
        AbstractC19502g m13266a = c19504b.m13266a();
        AbstractC19462a abstractC19462a = this.f40445b;
        l.d(m13266a, "event");
        abstractC19462a.mo13271e(m13266a);
    }
}
