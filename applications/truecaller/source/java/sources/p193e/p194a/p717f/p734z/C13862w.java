package p193e.p194a.p717f.p734z;

import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p717f.AbstractC13719m;
import s1.z.c.l;
/* renamed from: e.a.f.z.w */
/* loaded from: classes10-dex2jar.jar:e/a/f/z/w.class */
public final class C13862w implements AbstractC13861v {

    /* renamed from: a */
    public final C20592g f40217a;

    /* renamed from: b */
    public final AbstractC13719m f40218b;

    /* renamed from: c */
    public final AbstractC13864y f40219c;

    /* renamed from: d */
    public final AbstractC19222c f40220d;

    @Inject
    public C13862w(@Named("features_registry") C20592g c20592g, AbstractC13719m abstractC13719m, AbstractC13864y abstractC13864y, AbstractC19222c abstractC19222c) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC13719m, "inCallUIConfig");
        l.e(abstractC13864y, "inCallUISettings");
        l.e(abstractC19222c, "clock");
        this.f40217a = c20592g;
        this.f40218b = abstractC13719m;
        this.f40219c = abstractC13864y;
        this.f40220d = abstractC19222c;
    }

    @Override // p193e.p194a.p717f.p734z.AbstractC13861v
    /* renamed from: a */
    public boolean mo20985a() {
        if (!this.f40218b.mo21273c() || this.f40218b.mo21275a()) {
            return false;
        }
        C20592g c20592g = this.f40217a;
        Long valueOf = Long.valueOf(((AbstractC20597i) c20592g.f58014r1.m10941a(c20592g, C20592g.f57695p6[121])).mo10939d(0L));
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        if (valueOf == null) {
            return false;
        }
        long millis = TimeUnit.HOURS.toMillis(valueOf.longValue());
        long j = this.f40219c.getLong("homeBannerShownTimestamp", 0L);
        return j == 0 || this.f40220d.mo13819c() - j >= millis;
    }

    @Override // p193e.p194a.p717f.p734z.AbstractC13861v
    /* renamed from: b */
    public void mo20984b() {
        this.f40219c.putLong("homeBannerShownTimestamp", this.f40220d.mo13819c());
    }

    @Override // p193e.p194a.p717f.p734z.AbstractC13861v
    /* renamed from: c */
    public boolean mo20983c() {
        return !this.f40219c.getBoolean("infoShown") && !this.f40219c.contains("incalluiEnabled") && this.f40218b.mo21275a();
    }
}
