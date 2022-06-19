package p193e.p194a.p619d.p637c0;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.C11704e;
import s1.z.c.l;
/* renamed from: e.a.d.c0.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/n.class */
public final class C11435n implements AbstractC11432m {

    /* renamed from: a */
    public final C20592g f33592a;

    /* renamed from: b */
    public final AbstractC11706g f33593b;

    /* renamed from: c */
    public final AbstractC11409g1 f33594c;

    /* renamed from: d */
    public final AbstractC19222c f33595d;

    @Inject
    public C11435n(@Named("features_registry") C20592g c20592g, AbstractC11706g abstractC11706g, AbstractC11409g1 abstractC11409g1, AbstractC19222c abstractC19222c) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC11706g, "voipConfig");
        l.e(abstractC11409g1, "voipSettings");
        l.e(abstractC19222c, "clock");
        this.f33592a = c20592g;
        this.f33593b = abstractC11706g;
        this.f33594c = abstractC11409g1;
        this.f33595d = abstractC19222c;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11432m
    /* renamed from: a */
    public boolean mo24696a() {
        if (!((C11704e) this.f33593b).m24197a() || !((C11704e) this.f33593b).m24196b()) {
            return false;
        }
        C20592g c20592g = this.f33592a;
        Long valueOf = Long.valueOf(((AbstractC20597i) c20592g.f58028t1.m10941a(c20592g, C20592g.f57695p6[123])).mo10939d(0L));
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        if (valueOf == null) {
            return false;
        }
        long millis = TimeUnit.HOURS.toMillis(valueOf.longValue());
        long j = this.f33594c.getLong("homeBannerShownTimestamp", 0L);
        return j == 0 || this.f33595d.mo13819c() - j >= millis;
    }

    @Override // p193e.p194a.p619d.p637c0.AbstractC11432m
    /* renamed from: b */
    public void mo24695b() {
        this.f33594c.putLong("homeBannerShownTimestamp", this.f33595d.mo13819c());
    }
}
