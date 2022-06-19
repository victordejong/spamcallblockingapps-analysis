package p193e.p194a.p717f.p718a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.utils.analytics.events.AnalyticsContext;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p372b0.p406e.AbstractC8426f;
import p193e.p194a.p717f.C13723q;
import p193e.p194a.p717f.p731w.AbstractC13731a;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p731w.C13732b;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p733y.AbstractC13792v;
import p193e.p194a.p717f.p734z.AbstractC13802b;
import p193e.p194a.p717f.p734z.C13811d0;
import p193e.p194a.p717f.p734z.p735m0.AbstractC13831a;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.p1;
import q3.a.x2.i1;
import q3.a.x2.u0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.f.a.n */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/n.class */
public final class C13649n extends AbstractC20574a<AbstractC13648m> implements AbstractC13647l {

    /* renamed from: d */
    public final String f39541d;

    /* renamed from: e */
    public p1 f39542e;

    /* renamed from: f */
    public p1 f39543f;

    /* renamed from: g */
    public long f39544g;

    /* renamed from: h */
    public p1 f39545h;

    /* renamed from: i */
    public volatile boolean f39546i;

    /* renamed from: j */
    public final AbstractC13762c f39547j;

    /* renamed from: k */
    public final AbstractC8426f f39548k;

    /* renamed from: l */
    public final C13723q f39549l;

    /* renamed from: m */
    public final AbstractC13792v f39550m;

    /* renamed from: n */
    public final AbstractC13734c f39551n;

    /* renamed from: o */
    public final AbstractC13731a f39552o;

    /* renamed from: p */
    public final AbstractC13831a f39553p;

    /* renamed from: q */
    public final AbstractC13802b f39554q;

    /* renamed from: r */
    public final AbstractC19222c f39555r;

    /* renamed from: s */
    public final AbstractC17197v0 f39556s;

    /* renamed from: t */
    public final AbstractC16111h f39557t;

    /* renamed from: u */
    public final f f39558u;

    @e(c = "com.truecaller.incallui.callui.InCallUIPresenter", f = "InCallUIPresenter.kt", l = {276}, m = "applyLogoTheme")
    /* renamed from: e.a.f.a.n$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/n$a.class */
    public static final class C13650a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39559d;

        /* renamed from: e */
        public int f39560e;

        /* renamed from: g */
        public Object f39562g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13650a(d dVar) {
            super(dVar);
            C13649n.this = r4;
        }

        /* renamed from: s */
        public final Object m21368s(Object obj) {
            this.f39559d = obj;
            this.f39560e |= Integer.MIN_VALUE;
            return C13649n.this.m21370Kj(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13649n(AbstractC13762c abstractC13762c, AbstractC8426f abstractC8426f, C13723q c13723q, AbstractC13792v abstractC13792v, AbstractC13734c abstractC13734c, AbstractC13731a abstractC13731a, AbstractC13831a abstractC13831a, AbstractC13802b abstractC13802b, AbstractC19222c abstractC19222c, AbstractC17197v0 abstractC17197v0, AbstractC16111h abstractC16111h, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC13762c, "callManager");
        l.e(abstractC8426f, "regionUtils");
        l.e(c13723q, "partnerHelper");
        l.e(abstractC13792v, "ongoingCallHelper");
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(abstractC13731a, "adsRepository");
        l.e(abstractC13831a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13802b, "fullScreenProfilePictureHelper");
        l.e(abstractC19222c, "clock");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(abstractC16111h, "videoCallerId");
        l.e(fVar, "uiContext");
        this.f39547j = abstractC13762c;
        this.f39548k = abstractC8426f;
        this.f39549l = c13723q;
        this.f39550m = abstractC13792v;
        this.f39551n = abstractC13734c;
        this.f39552o = abstractC13731a;
        this.f39553p = abstractC13831a;
        this.f39554q = abstractC13802b;
        this.f39555r = abstractC19222c;
        this.f39556s = abstractC17197v0;
        this.f39557t = abstractC16111h;
        this.f39558u = fVar;
        StringBuilder m8728C = C22128a.m8728C("InCallUIPresenter-");
        m8728C.append(UUID.randomUUID());
        this.f39541d = m8728C.toString();
    }

    /* renamed from: Ij */
    public static final AbstractC13648m m21372Ij(C13649n c13649n, AbstractC15836l abstractC15836l, C13642g c13642g) {
        AbstractC13648m abstractC13648m;
        AbstractC13648m abstractC13648m2 = (AbstractC13648m) c13649n.f57683a;
        if (abstractC13648m2 == null) {
            abstractC13648m = null;
        } else if (abstractC15836l != null) {
            abstractC13648m2.mo21381r1();
            abstractC13648m2.mo21380r2(abstractC15836l, AnalyticsContext.INCALLUI.getValue());
            p1 p1Var = c13649n.f39545h;
            if (p1Var != null) {
                s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            AbstractC13648m abstractC13648m3 = (AbstractC13648m) c13649n.f57683a;
            p1 p1Var2 = null;
            if (abstractC13648m3 != null) {
                i1<AbstractC15868b> mo21384p1 = abstractC13648m3.mo21384p1();
                p1Var2 = null;
                if (mo21384p1 != null) {
                    p1Var2 = s1.a.a.a.v0.f.d.x2(new u0(mo21384p1, new C13656s(c13649n, c13642g, null)), c13649n);
                }
            }
            c13649n.f39545h = p1Var2;
            abstractC13648m = abstractC13648m2;
        } else {
            c13649n.m21369Lj();
            abstractC13648m = abstractC13648m2;
        }
        return abstractC13648m;
    }

    /* renamed from: Jj */
    public final void m21371Jj() {
        AbstractC13648m abstractC13648m = (AbstractC13648m) this.f57683a;
        if (abstractC13648m != null) {
            abstractC13648m.mo21391P0(C4013R.color.incallui_color_white);
        }
        AbstractC13648m abstractC13648m2 = (AbstractC13648m) this.f57683a;
        if (abstractC13648m2 != null) {
            abstractC13648m2.mo21386e(C4013R.color.incallui_color_white);
        }
        AbstractC13648m abstractC13648m3 = (AbstractC13648m) this.f57683a;
        if (abstractC13648m3 != null) {
            abstractC13648m3.mo21375x0(C4013R.color.incallui_divider_partner_color);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x013b  */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21370Kj(p193e.p194a.p717f.p718a.C13642g r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.C13649n.m21370Kj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: Lj */
    public final void m21369Lj() {
        AbstractC13648m abstractC13648m = (AbstractC13648m) this.f57683a;
        if (abstractC13648m != null) {
            abstractC13648m.mo21385k2();
        }
        p1 p1Var = this.f39543f;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.f.a.m, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC13648m abstractC13648m) {
        s sVar;
        AbstractC13648m abstractC13648m2 = abstractC13648m;
        l.e(abstractC13648m2, "presenterView");
        this.f57683a = abstractC13648m2;
        this.f39547j.mo21191p(this.f39541d, this);
        int i = this.f39548k.mo28596b() ? C4013R.C4014drawable.logo_white_uk : C4013R.C4014drawable.ic_truecaller_logo_white;
        AbstractC13648m abstractC13648m3 = (AbstractC13648m) this.f57683a;
        if (abstractC13648m3 != null) {
            abstractC13648m3.mo21376w(i);
        }
        if (!this.f39556s.mo16408H() || this.f39549l.m21248a() != null) {
            AbstractC13648m abstractC13648m4 = (AbstractC13648m) this.f57683a;
            if (abstractC13648m4 != null) {
                abstractC13648m4.mo21377v0();
            }
        } else {
            int i2 = this.f39548k.mo28596b() ? C4013R.C4014drawable.ic_tc_premium_logo_uk : C4013R.C4014drawable.ic_tc_premium_logo;
            AbstractC13648m abstractC13648m5 = (AbstractC13648m) this.f57683a;
            if (abstractC13648m5 != null) {
                abstractC13648m5.mo21394G0();
            }
            AbstractC13648m abstractC13648m6 = (AbstractC13648m) this.f57683a;
            if (abstractC13648m6 != null) {
                abstractC13648m6.mo21388X0(i2);
            }
        }
        Integer m21248a = this.f39549l.m21248a();
        if (m21248a != null) {
            int intValue = m21248a.intValue();
            AbstractC13648m abstractC13648m7 = (AbstractC13648m) this.f57683a;
            if (abstractC13648m7 != null) {
                abstractC13648m7.mo21373y2(intValue);
                sVar = s.a;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                return;
            }
        }
        AbstractC13648m abstractC13648m8 = (AbstractC13648m) this.f57683a;
        if (abstractC13648m8 != null) {
            abstractC13648m8.mo21392O1();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: Z7 */
    public void mo9807Z7(C13811d0 c13811d0) {
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f39547j.mo21205b(this.f39541d, this);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: od */
    public void mo9805od() {
        ((C13732b) this.f39552o).f39775a.clear();
        p1 p1Var = this.f39542e;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        AbstractC13648m abstractC13648m = (AbstractC13648m) this.f57683a;
        if (abstractC13648m != null) {
            abstractC13648m.mo21378t();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: sc */
    public void mo9804sc(String str) {
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: zj */
    public void mo9803zj(AbstractC13754a abstractC13754a) {
    }
}
