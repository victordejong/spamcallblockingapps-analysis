package p193e.p194a.p717f;

import com.truecaller.incallui.service.InCallUIService;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p717f.p734z.AbstractC13864y;
import s1.z.c.l;
/* renamed from: e.a.f.n */
/* loaded from: classes10-dex2jar.jar:e/a/f/n.class */
public final class C13720n implements AbstractC13719m {

    /* renamed from: a */
    public final C20592g f39741a;

    /* renamed from: b */
    public final AbstractC8432l f39742b;

    /* renamed from: c */
    public final AbstractC19230g f39743c;

    /* renamed from: d */
    public final AbstractC13864y f39744d;

    @Inject
    public C13720n(@Named("features_registry") C20592g c20592g, AbstractC8432l abstractC8432l, AbstractC19230g abstractC19230g, AbstractC13864y abstractC13864y) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13864y, "inCallUISettings");
        this.f39741a = c20592g;
        this.f39742b = abstractC8432l;
        this.f39743c = abstractC19230g;
        this.f39744d = abstractC13864y;
    }

    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: a */
    public boolean mo21275a() {
        return mo21273c() && this.f39743c.mo13791f() && this.f39743c.mo13801C(InCallUIService.class);
    }

    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: b */
    public boolean mo21274b() {
        return mo21273c() && this.f39743c.mo13791f() && mo21271g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x01cf, code lost:
        if (r6.f39743c.mo13777t() != false) goto L65;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01aa  */
    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean mo21273c() {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.C13720n.mo21273c():boolean");
    }

    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: e */
    public void mo21272e(boolean z) {
        this.f39744d.putBoolean("incalluiEnabled", z);
    }

    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: g */
    public boolean mo21271g() {
        AbstractC13864y abstractC13864y = this.f39744d;
        C20592g c20592g = this.f39741a;
        return abstractC13864y.getBoolean("incalluiEnabled", c20592g.f58049w1.m10941a(c20592g, C20592g.f57695p6[126]).isEnabled());
    }

    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: h */
    public boolean mo21270h() {
        C20592g c20592g = this.f39741a;
        return c20592g.f58049w1.m10941a(c20592g, C20592g.f57695p6[126]).isEnabled();
    }

    @Override // p193e.p194a.p717f.AbstractC13719m
    /* renamed from: j */
    public boolean mo21269j() {
        return !this.f39744d.contains("incalluiEnabled") && mo21275a();
    }
}
