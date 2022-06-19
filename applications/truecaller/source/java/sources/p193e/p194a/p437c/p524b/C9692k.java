package p193e.p194a.p437c.p524b;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8604n;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import s1.z.c.l;
/* renamed from: e.a.c.b.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/b/k.class */
public final class C9692k implements AbstractC9691j {

    /* renamed from: a */
    public final boolean f29279a;

    /* renamed from: b */
    public final C20592g f29280b;

    /* renamed from: c */
    public final AbstractC19230g f29281c;

    /* renamed from: d */
    public final AbstractC8432l f29282d;

    /* renamed from: e */
    public final AbstractC10028o f29283e;

    /* renamed from: f */
    public final AbstractC9686e f29284f;

    /* renamed from: g */
    public final AbstractC8541a f29285g;

    @Inject
    public C9692k(@Named("features_registry") C20592g c20592g, AbstractC19230g abstractC19230g, AbstractC8432l abstractC8432l, AbstractC10028o abstractC10028o, AbstractC9686e abstractC9686e, AbstractC8541a abstractC8541a) {
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19230g, "deviceInfoUtils");
        l.e(abstractC8432l, "accountManager");
        l.e(abstractC10028o, "settings");
        l.e(abstractC9686e, "environmentHelper");
        l.e(abstractC8541a, "tcCoreSettings");
        this.f29280b = c20592g;
        this.f29281c = abstractC19230g;
        this.f29282d = abstractC8432l;
        this.f29283e = abstractC10028o;
        this.f29284f = abstractC9686e;
        this.f29285g = abstractC8541a;
        this.f29279a = abstractC9686e.mo27310c();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: A */
    public boolean mo27294A() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57756I3.m10941a(c20592g, C20592g.f57695p6[244]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: B */
    public boolean mo27293B() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57816R0.m10941a(c20592g, C20592g.f57695p6[95]).isEnabled() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: C */
    public boolean mo27292C() {
        boolean z;
        if (l.a(this.f29284f.mo27306g(), "SE") || l.a(this.f29284f.mo27306g(), "EG")) {
            C20592g c20592g = this.f29280b;
            if (c20592g.f57768K1.m10941a(c20592g, C20592g.f57695p6[140]).isEnabled() || this.f29283e.mo26835k("featureMessageTranslationForSwedish")) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: D */
    public boolean mo27291D() {
        C20592g c20592g = this.f29280b;
        return (c20592g.f57760J0.m10941a(c20592g, C20592g.f57695p6[86]).isEnabled() || this.f29283e.mo26835k("featureInsightsUpdates")) && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: E */
    public boolean mo27290E() {
        return m27251i0() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: F */
    public boolean mo27289F() {
        boolean z;
        if (!this.f29279a) {
            C20592g c20592g = this.f29280b;
            if (c20592g.f57882a3.m10941a(c20592g, C20592g.f57695p6[208]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: G */
    public boolean mo27288G() {
        return m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: H */
    public boolean mo27287H() {
        boolean z;
        if (m27251i0()) {
            C20592g c20592g = this.f29280b;
            if ((c20592g.f58069z0.m10941a(c20592g, C20592g.f57695p6[76]).isEnabled() || this.f29283e.mo26835k("featureInsightsSmartCards")) && !this.f29279a) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: I */
    public boolean mo27286I() {
        boolean z;
        if (m27251i0()) {
            C20592g c20592g = this.f29280b;
            if ((c20592g.f57754I1.m10941a(c20592g, C20592g.f57695p6[138]).isEnabled() || this.f29283e.mo26835k("featureInsightsBusinessTab")) && !this.f29279a) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: J */
    public boolean mo27285J() {
        return this.f29283e.mo26854a0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: K */
    public boolean mo27284K() {
        return m27251i0() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: L */
    public boolean mo27283L() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57725E0.m10941a(c20592g, C20592g.f57695p6[81]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: M */
    public boolean mo27282M() {
        boolean z = true;
        if (!m27251i0()) {
            boolean z2 = this.f29285g.getBoolean("featureOTPNotificationEnabled");
            C20592g c20592g = this.f29280b;
            boolean z3 = c20592g.f58048w0.m10941a(c20592g, C20592g.f57695p6[73]).isEnabled() && !this.f29279a;
            if (!z2 || !z3) {
                z = false;
            }
        } else {
            z = mo27287H();
        }
        return z;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: N */
    public boolean mo27281N() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57809Q0.m10941a(c20592g, C20592g.f57695p6[94]).isEnabled() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: O */
    public boolean mo27280O() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57795O0.m10941a(c20592g, C20592g.f57695p6[92]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: P */
    public void mo27279P(boolean z) {
        this.f29283e.mo26817t(z);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: Q */
    public boolean mo27278Q() {
        return m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: R */
    public boolean mo27277R() {
        return this.f29283e.mo26809x();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: S */
    public boolean mo27276S() {
        return mo27264c();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: T */
    public boolean mo27275T() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57718D0.m10941a(c20592g, C20592g.f57695p6[80]).isEnabled() || this.f29283e.mo26835k("featureInsightsSemiCard");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: U */
    public boolean mo27274U() {
        C20592g c20592g = this.f29280b;
        return (c20592g.f57767K0.m10941a(c20592g, C20592g.f57695p6[87]).isEnabled() || this.f29283e.mo26835k("featureInsightsUpdatesImportantTab")) && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: V */
    public boolean mo27273V() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57704B0.m10941a(c20592g, C20592g.f57695p6[78]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: W */
    public boolean mo27272W() {
        return m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: X */
    public boolean mo27271X() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57753I0.m10941a(c20592g, C20592g.f57695p6[85]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: Y */
    public boolean mo27270Y() {
        C20592g c20592g = this.f29280b;
        return c20592g.f58020s0.m10941a(c20592g, C20592g.f57695p6[69]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: Z */
    public boolean mo27269Z() {
        return m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: a */
    public boolean mo27268a() {
        return this.f29283e.mo26855a() && mo27287H();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: a0 */
    public boolean mo27267a0() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57829T.m10941a(c20592g, C20592g.f57695p6[43]).isEnabled() || this.f29283e.mo26835k("featureInsightsWomenHelpline");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: b */
    public boolean mo27266b() {
        return m27251i0() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: b0 */
    public boolean mo27265b0() {
        C20592g c20592g = this.f29280b;
        return (c20592g.f57815R.m10941a(c20592g, C20592g.f57695p6[40]).isEnabled() || this.f29283e.mo26835k("featureInsightsCustomSmartNotifications")) && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: c */
    public boolean mo27264c() {
        return (mo27286I() || mo27262d()) && this.f29283e.mo26884B0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: c0 */
    public boolean mo27263c0() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57837U0.m10941a(c20592g, C20592g.f57695p6[98]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: d */
    public boolean mo27262d() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57898c3.m10941a(c20592g, C20592g.f57695p6[210]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: d0 */
    public boolean mo27261d0() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57808Q.m10941a(c20592g, C20592g.f57695p6[39]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: e */
    public boolean mo27260e() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57711C0.m10941a(c20592g, C20592g.f57695p6[79]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: e0 */
    public boolean mo27259e0() {
        C20592g c20592g = this.f29280b;
        return c20592g.f58027t0.m10941a(c20592g, C20592g.f57695p6[70]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: f */
    public void mo27258f() {
        this.f29283e.mo26841h();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: f0 */
    public boolean mo27257f0() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57753I0.m10941a(c20592g, C20592g.f57695p6[85]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: g */
    public boolean mo27256g() {
        return m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: g0 */
    public boolean mo27255g0() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57774L0.m10941a(c20592g, C20592g.f57695p6[88]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: h */
    public boolean mo27254h() {
        C20592g c20592g = this.f29280b;
        return c20592g.f58055x0.m10941a(c20592g, C20592g.f57695p6[74]).isEnabled() && m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: h0 */
    public boolean mo27253h0(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        return C8604n.m28240e(context);
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: i */
    public boolean mo27252i() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57781M0.m10941a(c20592g, C20592g.f57695p6[89]).isEnabled();
    }

    /* renamed from: i0 */
    public final boolean m27251i0() {
        C20592g c20592g = this.f29280b;
        return (c20592g.f57746H0.m10941a(c20592g, C20592g.f57695p6[84]).isEnabled() || this.f29283e.mo26835k("featureInsights")) && this.f29282d.mo28580d();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: j */
    public boolean mo27250j() {
        return m27251i0();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: k */
    public boolean mo27249k() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57802P0.m10941a(c20592g, C20592g.f57695p6[93]).isEnabled() || this.f29283e.mo26835k("featureInsightsUpdatesClassifier");
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: l */
    public boolean mo27248l() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57697A0.m10941a(c20592g, C20592g.f57695p6[77]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: m */
    public boolean mo27247m() {
        boolean z;
        if (mo27286I()) {
            C20592g c20592g = this.f29280b;
            if (c20592g.f57797O2.m10941a(c20592g, C20592g.f57695p6[196]).isEnabled()) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: n */
    public boolean mo27246n() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57830T0.m10941a(c20592g, C20592g.f57695p6[97]).isEnabled() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: o */
    public boolean mo27245o() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57890b3.m10941a(c20592g, C20592g.f57695p6[209]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: p */
    public boolean mo27244p() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57788N0.m10941a(c20592g, C20592g.f57695p6[90]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: q */
    public boolean mo27243q() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57739G0.m10941a(c20592g, C20592g.f57695p6[83]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: r */
    public boolean mo27242r() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57844V0.m10941a(c20592g, C20592g.f57695p6[99]).isEnabled() && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: s */
    public boolean mo27241s() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57732F0.m10941a(c20592g, C20592g.f57695p6[82]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: t */
    public boolean mo27240t() {
        return this.f29280b.m10981X().isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: u */
    public boolean mo27239u() {
        C20592g c20592g = this.f29280b;
        return c20592g.f58062y0.m10941a(c20592g, C20592g.f57695p6[75]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: v */
    public boolean mo27238v() {
        return (l.a(this.f29281c.mo13787j(), "oppo") && l.a(C8604n.m28243b(), "CPH1609") && this.f29281c.mo13780q() == 23) || this.f29283e.mo26885B();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: w */
    public boolean mo27237w() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57906d3.m10941a(c20592g, C20592g.f57695p6[211]).isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: x */
    public boolean mo27236x() {
        return this.f29280b.m10963h0().isEnabled();
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: y */
    public boolean mo27235y() {
        C20592g c20592g = this.f29280b;
        return (c20592g.f58041v0.m10941a(c20592g, C20592g.f57695p6[72]).isEnabled() || this.f29283e.mo26835k("featureInsightsFinancePage")) && !this.f29279a;
    }

    @Override // p193e.p194a.p437c.p524b.AbstractC9691j
    /* renamed from: z */
    public boolean mo27234z() {
        C20592g c20592g = this.f29280b;
        return c20592g.f57823S0.m10941a(c20592g, C20592g.f57695p6[96]).isEnabled() && !this.f29279a;
    }
}
