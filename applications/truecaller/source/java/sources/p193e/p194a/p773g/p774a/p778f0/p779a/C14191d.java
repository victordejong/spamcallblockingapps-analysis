package p193e.p194a.p773g.p774a.p778f0.p779a;

import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import p193e.p194a.p1270u2.p1271a.AbstractC20580e;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p678d4.AbstractC12595a;
import p193e.p194a.p773g.p785j.C14316w;
import p193e.p194a.p937j4.p939b.p940a.C15571h;
import s1.z.c.l;
/* renamed from: e.a.g.a.f0.a.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/a/f0/a/d.class */
public final class C14191d extends AbstractC20576b<AbstractC14190c> implements AbstractC20580e {

    /* renamed from: b */
    public String f40941b;

    /* renamed from: c */
    public AbstractC14189b f40942c;

    /* renamed from: d */
    public boolean f40943d;

    /* renamed from: e */
    public final C14316w f40944e;

    /* renamed from: f */
    public final AbstractC12595a f40945f;

    /* renamed from: g */
    public final C20592g f40946g;

    @Inject
    public C14191d(C14316w c14316w, AbstractC12595a abstractC12595a, @Named("features_registry") C20592g c20592g) {
        l.e(c14316w, "rateAppHelper");
        l.e(abstractC12595a, "appMarketUtil");
        l.e(c20592g, "featureRegistry");
        this.f40944e = c14316w;
        this.f40945f = abstractC12595a;
        this.f40946g = c20592g;
    }

    /* renamed from: Hj */
    public final void m20595Hj() {
        AbstractC14190c abstractC14190c;
        Objects.requireNonNull(this.f40944e);
        C15571h.m18654B("FEEDBACK_LAST_DISMISSED");
        Objects.requireNonNull(this.f40944e);
        C15571h.m18628w("FEEDBACK_DISMISSED_COUNT", C15571h.m18639l("FEEDBACK_DISMISSED_COUNT").longValue() + 1);
        Objects.requireNonNull(this.f40944e);
        if (!C15571h.m18633r("FEEDBACK_DISMISSED_COUNT", 2) || (abstractC14190c = (AbstractC14190c) this.f57683a) == null) {
            return;
        }
        abstractC14190c.mo20591c();
    }
}
