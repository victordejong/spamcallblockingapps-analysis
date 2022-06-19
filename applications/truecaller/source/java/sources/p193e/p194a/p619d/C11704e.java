package p193e.p194a.p619d;

import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p678d4.AbstractC12597c;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.d.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/e.class */
public final class C11704e implements AbstractC11706g {

    /* renamed from: a */
    public final g f34355a = C25225a.m3978P1(new a(1, this));

    /* renamed from: b */
    public String f34356b = "release";

    /* renamed from: c */
    public final g f34357c = C25225a.m3978P1(new a(0, this));

    /* renamed from: d */
    public final a<C20592g> f34358d;

    /* renamed from: e */
    public final a<AbstractC8432l> f34359e;

    /* renamed from: f */
    public final a<AbstractC19230g> f34360f;

    /* renamed from: g */
    public final a<AbstractC12597c> f34361g;

    @Inject
    public C11704e(@Named("features_registry") a<C20592g> aVar, a<AbstractC8432l> aVar2, a<AbstractC19230g> aVar3, a<AbstractC12597c> aVar4) {
        l.e(aVar, "featuresRegistry");
        l.e(aVar2, "accountManager");
        l.e(aVar3, "deviceInfoUtil");
        l.e(aVar4, "mobileServicesAvailabilityProvider");
        this.f34358d = aVar;
        this.f34359e = aVar2;
        this.f34360f = aVar3;
        this.f34361g = aVar4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0111, code lost:
        if (((java.lang.Boolean) r6.f34355a.getValue()).booleanValue() != false) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0102  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m24197a() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11704e.m24197a():boolean");
    }

    /* renamed from: b */
    public boolean m24196b() {
        C20592g c20592g = (C20592g) this.f34358d.get();
        return c20592g.f57871Z.m10941a(c20592g, C20592g.f57695p6[49]).isEnabled();
    }
}
