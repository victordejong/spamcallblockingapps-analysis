package p193e.p194a.p619d.p637c0;

import javax.inject.Inject;
import p193e.p194a.p1129p5.p1134u0.AbstractC19322a;
import p193e.p194a.p1129p5.p1134u0.C19326d;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.C11704e;
import s1.z.c.l;
/* renamed from: e.a.d.c0.i1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/i1.class */
public final class C11415i1 implements AbstractC19322a {

    /* renamed from: a */
    public C19326d f33536a;

    /* renamed from: b */
    public final AbstractC11409g1 f33537b;

    /* renamed from: c */
    public final AbstractC11706g f33538c;

    @Inject
    public C11415i1(AbstractC11409g1 abstractC11409g1, AbstractC11706g abstractC11706g) {
        l.e(abstractC11409g1, "voipSettings");
        l.e(abstractC11706g, "voipConfig");
        this.f33537b = abstractC11409g1;
        this.f33538c = abstractC11706g;
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: a */
    public void mo13459a() {
        this.f33537b.putBoolean("showCaseDisplayed", true);
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: b */
    public boolean mo13458b() {
        return ((C11704e) this.f33538c).m24197a() && !this.f33537b.getBoolean("showCaseDisplayed");
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: c */
    public C19326d mo13457c() {
        C19326d c19326d = this.f33536a;
        if (c19326d != null) {
            return c19326d;
        }
        l.l("showcaseConfig");
        throw null;
    }

    @Override // p193e.p194a.p1129p5.p1134u0.AbstractC19322a
    /* renamed from: d */
    public void mo13456d(C19326d c19326d) {
        l.e(c19326d, "<set-?>");
        this.f33536a = c19326d;
    }
}
