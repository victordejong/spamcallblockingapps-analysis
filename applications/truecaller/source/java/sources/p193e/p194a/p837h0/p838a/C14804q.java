package p193e.p194a.p837h0.p838a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.filters.sync.FilterSettingsUploadWorker;
import javax.inject.Inject;
import p1727n3.p1834m0.AbstractC26857y;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p837h0.AbstractC14840m;
import p193e.p194a.p837h0.C14845p;
import s1.z.c.l;
/* renamed from: e.a.h0.a.q */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/q.class */
public final class C14804q extends AbstractC20576b<View$OnClickListenerC14802o> implements AbstractC14803p {

    /* renamed from: b */
    public final AbstractC14840m f42326b;

    /* renamed from: c */
    public final C14845p f42327c;

    /* renamed from: d */
    public final AbstractC19462a f42328d;

    /* renamed from: e */
    public final AbstractC26857y f42329e;

    @Inject
    public C14804q(AbstractC14840m abstractC14840m, C14845p c14845p, AbstractC19462a abstractC19462a, AbstractC26857y abstractC26857y) {
        l.e(abstractC14840m, "filterSettings");
        l.e(c14845p, "adjuster");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC26857y, "workManager");
        this.f42326b = abstractC14840m;
        this.f42327c = c14845p;
        this.f42328d = abstractC19462a;
        this.f42329e = abstractC26857y;
    }

    @Override // p193e.p194a.p837h0.p838a.AbstractC14803p
    /* renamed from: Bc */
    public void mo19657Bc(int i) {
        this.f42326b.mo19542z(this.f42327c.m19535b(i));
        this.f42326b.mo19565c(true);
        AbstractC26857y abstractC26857y = this.f42329e;
        l.e(abstractC26857y, "workManager");
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C26842r.C26843a c26843a = new C26842r.C26843a(FilterSettingsUploadWorker.class);
        C26825d.C26826a c26826a = new C26825d.C26826a();
        c26826a.f75068c = EnumC26841q.CONNECTED;
        c26843a.f75127c.f74911j = new C26825d(c26826a);
        abstractC26857y.m1279i("FilterSettingsUploadWorker", enumC26832h, c26843a.m1272b());
        AbstractC19502g.C19504b c19504b = new AbstractC19502g.C19504b("BLOCKSETTINGS_BlockNeighbourSpoofing");
        c19504b.m13265b("NbMatchingDigits", i);
        AbstractC19462a abstractC19462a = this.f42328d;
        AbstractC19502g m13266a = c19504b.m13266a();
        l.d(m13266a, "event.build()");
        abstractC19462a.mo13271e(m13266a);
    }
}
