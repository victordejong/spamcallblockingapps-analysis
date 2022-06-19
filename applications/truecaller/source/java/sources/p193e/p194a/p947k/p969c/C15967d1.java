package p193e.p194a.p947k.p969c;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import s1.z.c.l;
/* renamed from: e.a.k.c.d1 */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/d1.class */
public final class C15967d1 implements AbstractC15963c1 {

    /* renamed from: a */
    public final C20592g f44995a;

    /* renamed from: b */
    public final AbstractC16067r0 f44996b;

    /* renamed from: c */
    public final AbstractC16015i1 f44997c;

    /* renamed from: d */
    public final AbstractC19222c f44998d;

    @Inject
    public C15967d1(C20592g c20592g, AbstractC16067r0 abstractC16067r0, AbstractC16015i1 abstractC16015i1, AbstractC19222c abstractC19222c) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC16067r0, "videoCallerIdAvailability");
        l.e(abstractC16015i1, "videoCallerIdSettings");
        l.e(abstractC19222c, "clock");
        this.f44995a = c20592g;
        this.f44996b = abstractC16067r0;
        this.f44997c = abstractC16015i1;
        this.f44998d = abstractC19222c;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15963c1
    /* renamed from: a */
    public boolean mo18088a() {
        if (!this.f44996b.isAvailable() || this.f44996b.isEnabled()) {
            return false;
        }
        C20592g c20592g = this.f44995a;
        Long valueOf = Long.valueOf(((AbstractC20597i) c20592g.f58035u1.m10941a(c20592g, C20592g.f57695p6[124])).mo10939d(0L));
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        if (valueOf == null) {
            return false;
        }
        long millis = TimeUnit.DAYS.toMillis(valueOf.longValue());
        long j = this.f44997c.getLong("homePromoShownAt", 0L);
        return j == 0 || this.f44998d.mo13819c() - j >= millis;
    }

    @Override // p193e.p194a.p947k.p969c.AbstractC15963c1
    /* renamed from: b */
    public void mo18087b() {
        this.f44997c.putLong("homePromoShownAt", this.f44998d.mo13819c());
    }
}
