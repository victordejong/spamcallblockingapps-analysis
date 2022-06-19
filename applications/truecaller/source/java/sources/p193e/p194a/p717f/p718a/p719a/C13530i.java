package p193e.p194a.p717f.p718a.p719a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.incoming.IncomingCallUIEvent;
import com.truecaller.themes.C4621R;
import java.util.Objects;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1010k5.AbstractC16550a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p426p.C8551c;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.C13727t;
import p193e.p194a.p717f.p718a.AbstractC13639f;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p734z.AbstractC13801a0;
import p193e.p194a.p717f.p734z.AbstractC13802b;
import p193e.p194a.p717f.p734z.AbstractC13830m;
import p193e.p194a.p717f.p734z.C13811d0;
import p193e.p194a.p717f.p734z.C13827k0;
import p193e.p194a.p717f.p734z.p735m0.AbstractC13831a;
import p193e.p194a.p947k.AbstractC16111h;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.h;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f.a.a.i */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i.class */
public final class C13530i extends AbstractC13639f<AbstractC13528g> implements AbstractC13527f {

    /* renamed from: i */
    public p1 f39221i;

    /* renamed from: j */
    public final String f39222j;

    /* renamed from: k */
    public h<IncomingCallUIEvent> f39223k;

    /* renamed from: l */
    public boolean f39224l;

    /* renamed from: m */
    public boolean f39225m;

    /* renamed from: n */
    public volatile boolean f39226n;

    /* renamed from: o */
    public volatile boolean f39227o;

    /* renamed from: p */
    public final AbstractC13762c f39228p;

    /* renamed from: q */
    public final AbstractC13734c f39229q;

    /* renamed from: r */
    public final AbstractC13831a f39230r;

    /* renamed from: s */
    public final AbstractC13802b f39231s;

    /* renamed from: t */
    public final AbstractC16111h f39232t;

    /* renamed from: u */
    public final f f39233u;

    /* renamed from: v */
    public final C13727t f39234v;

    /* renamed from: w */
    public final AbstractC13801a0 f39235w;

    /* renamed from: x */
    public final C20592g f39236x;

    /* renamed from: y */
    public final AbstractC18765c f39237y;

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter", f = "IncomingCallPresenter.kt", l = {454, 463}, m = "applyTheme")
    /* renamed from: e.a.f.a.a.i$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$a.class */
    public static final class C13531a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39238d;

        /* renamed from: e */
        public int f39239e;

        /* renamed from: g */
        public Object f39241g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13531a(d dVar) {
            super(dVar);
            C13530i.this = r4;
        }

        /* renamed from: s */
        public final Object m21662s(Object obj) {
            this.f39238d = obj;
            this.f39239e |= Integer.MIN_VALUE;
            return C13530i.this.m21677Qj(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter", f = "IncomingCallPresenter.kt", l = {174}, m = "maybeSetPlaceholderImageProfile")
    /* renamed from: e.a.f.a.a.i$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$b.class */
    public static final class C13532b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39242d;

        /* renamed from: e */
        public int f39243e;

        /* renamed from: g */
        public Object f39245g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13532b(d dVar) {
            super(dVar);
            C13530i.this = r4;
        }

        /* renamed from: s */
        public final Object m21661s(Object obj) {
            this.f39242d = obj;
            this.f39243e |= Integer.MIN_VALUE;
            return C13530i.this.m21675Sj(this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter", f = "IncomingCallPresenter.kt", l = {276}, m = "maybeShowBusinessLandscapeVideoCallerID")
    /* renamed from: e.a.f.a.a.i$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$c.class */
    public static final class C13533c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39246d;

        /* renamed from: e */
        public int f39247e;

        /* renamed from: g */
        public Object f39249g;

        /* renamed from: h */
        public Object f39250h;

        /* renamed from: i */
        public Object f39251i;

        /* renamed from: j */
        public Object f39252j;

        /* renamed from: k */
        public Object f39253k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13533c(d dVar) {
            super(dVar);
            C13530i.this = r4;
        }

        /* renamed from: s */
        public final Object m21660s(Object obj) {
            this.f39246d = obj;
            this.f39247e |= Integer.MIN_VALUE;
            return C13530i.this.m21674Tj(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$maybeShowTimezone$1", f = "IncomingCallPresenter.kt", l = {552}, m = "invokeSuspend")
    /* renamed from: e.a.f.a.a.i$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$d.class */
    public static final class C13534d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f39254e;

        /* renamed from: g */
        public final /* synthetic */ Contact f39256g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13534d(Contact contact, d dVar) {
            super(2, dVar);
            C13530i.this = r5;
            this.f39256g = contact;
        }

        /* renamed from: i */
        public final d<s> m21659i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13534d(this.f39256g, dVar);
        }

        /* renamed from: k */
        public final Object m21658k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13534d(this.f39256g, dVar).m21657s(s.a);
        }

        /* renamed from: s */
        public final Object m21657s(Object obj) {
            AbstractC13528g abstractC13528g;
            a aVar = a.a;
            int i = this.f39254e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13727t c13727t = C13530i.this.f39234v;
                Contact contact = this.f39256g;
                this.f39254e = 1;
                Object mo17257a = ((AbstractC16550a) c13727t.f39768a.get()).mo17257a(contact, this);
                obj = mo17257a;
                if (mo17257a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            if (((Boolean) obj).booleanValue()) {
                C13727t c13727t2 = C13530i.this.f39234v;
                Contact contact2 = this.f39256g;
                Objects.requireNonNull(c13727t2);
                l.e(contact2, AnalyticsConstants.CONTACT);
                String mo17256b = ((AbstractC16550a) c13727t2.f39768a.get()).mo17256b(contact2);
                if (mo17256b != null && (abstractC13528g = (AbstractC13528g) C13530i.this.f57683a) != null) {
                    abstractC13528g.setTimezone(mo17256b);
                }
            } else {
                AbstractC13528g abstractC13528g2 = (AbstractC13528g) C13530i.this.f57683a;
                if (abstractC13528g2 != null) {
                    abstractC13528g2.mo21407z();
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter", f = "IncomingCallPresenter.kt", l = {389}, m = "maybeShowUserBadge")
    /* renamed from: e.a.f.a.a.i$e */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$e.class */
    public static final class C13535e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39257d;

        /* renamed from: e */
        public int f39258e;

        /* renamed from: g */
        public Object f39260g;

        /* renamed from: h */
        public Object f39261h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13535e(d dVar) {
            super(dVar);
            C13530i.this = r4;
        }

        /* renamed from: s */
        public final Object m21656s(Object obj) {
            this.f39257d = obj;
            this.f39258e |= Integer.MIN_VALUE;
            return C13530i.this.m21669Yj(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter", f = "IncomingCallPresenter.kt", l = {295}, m = "maybeSubscribeVideoIdPlayingState")
    /* renamed from: e.a.f.a.a.i$f */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$f.class */
    public static final class C13536f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39262d;

        /* renamed from: e */
        public int f39263e;

        /* renamed from: g */
        public Object f39265g;

        /* renamed from: h */
        public Object f39266h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13536f(d dVar) {
            super(dVar);
            C13530i.this = r4;
        }

        /* renamed from: s */
        public final Object m21655s(Object obj) {
            this.f39262d = obj;
            this.f39263e |= Integer.MIN_VALUE;
            return C13530i.this.m21668Zj(null, false, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$onNewCall$1", f = "IncomingCallPresenter.kt", l = {106}, m = "invokeSuspend")
    /* renamed from: e.a.f.a.a.i$g */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$g.class */
    public static final class C13537g extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f39267e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13537g(d dVar) {
            super(2, dVar);
            C13530i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21654i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13537g(dVar);
        }

        /* renamed from: k */
        public final Object m21653k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13537g(dVar).m21652s(s.a);
        }

        /* renamed from: s */
        public final Object m21652s(Object obj) {
            a aVar = a.a;
            int i = this.f39267e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13530i.this.m21400Nj();
                C13530i c13530i = C13530i.this;
                String mo21200g = c13530i.f39228p.mo21200g();
                if (mo21200g == null) {
                    AbstractC13528g abstractC13528g = (AbstractC13528g) c13530i.f57683a;
                    if (abstractC13528g != null) {
                        abstractC13528g.mo21414q3(C4013R.string.incallui_unknown_caller);
                    }
                    AbstractC13528g abstractC13528g2 = (AbstractC13528g) c13530i.f57683a;
                    if (abstractC13528g2 != null) {
                        abstractC13528g2.mo21419i3(C4013R.string.incallui_hidden_number);
                    }
                    c13530i.m21676Rj();
                } else {
                    AbstractC13738f.C13740b m21665ck = c13530i.m21665ck();
                    if (!(m21665ck instanceof AbstractC13738f.C13740b)) {
                        AbstractC13528g abstractC13528g3 = (AbstractC13528g) c13530i.f57683a;
                        if (abstractC13528g3 != null) {
                            abstractC13528g3.setPhoneNumber(mo21200g);
                        }
                        AbstractC13528g abstractC13528g4 = (AbstractC13528g) c13530i.f57683a;
                        if (abstractC13528g4 != null) {
                            abstractC13528g4.mo21422Z();
                        }
                    } else if (m21665ck.f39794a.f39526p) {
                        AbstractC13528g abstractC13528g5 = (AbstractC13528g) c13530i.f57683a;
                        if (abstractC13528g5 != null) {
                            abstractC13528g5.mo21433Ns(mo21200g);
                        }
                        AbstractC13528g abstractC13528g6 = (AbstractC13528g) c13530i.f57683a;
                        if (abstractC13528g6 != null) {
                            abstractC13528g6.mo21440J();
                        }
                    } else {
                        AbstractC13528g abstractC13528g7 = (AbstractC13528g) c13530i.f57683a;
                        if (abstractC13528g7 != null) {
                            abstractC13528g7.setPhoneNumber(mo21200g);
                        }
                        AbstractC13528g abstractC13528g8 = (AbstractC13528g) c13530i.f57683a;
                        if (abstractC13528g8 != null) {
                            abstractC13528g8.mo21422Z();
                        }
                    }
                }
                C13530i c13530i2 = C13530i.this;
                this.f39267e = 1;
                if (c13530i2.m21675Sj(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C13530i c13530i3 = C13530i.this;
            C19291g.m13599P0(c13530i3, c13530i3.f39229q.mo21236a(), new C13539j(c13530i3, null));
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter", f = "IncomingCallPresenter.kt", l = {229, 236, 238, 242, 245, 246, 248}, m = "showCallerInfo")
    /* renamed from: e.a.f.a.a.i$h */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/a/i$h.class */
    public static final class C13538h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39269d;

        /* renamed from: e */
        public int f39270e;

        /* renamed from: g */
        public Object f39272g;

        /* renamed from: h */
        public Object f39273h;

        /* renamed from: i */
        public Object f39274i;

        /* renamed from: j */
        public boolean f39275j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13538h(d dVar) {
            super(dVar);
            C13530i.this = r4;
        }

        /* renamed from: s */
        public final Object m21651s(Object obj) {
            this.f39269d = obj;
            this.f39270e |= Integer.MIN_VALUE;
            return C13530i.this.m21663ek(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13530i(AbstractC13762c abstractC13762c, AbstractC13497p abstractC13497p, AbstractC13734c abstractC13734c, AbstractC13831a abstractC13831a, AbstractC13802b abstractC13802b, AbstractC16111h abstractC16111h, @Named("UI") f fVar, C13727t c13727t, AbstractC13801a0 abstractC13801a0, C20592g c20592g, AbstractC13830m abstractC13830m, AbstractC18765c abstractC18765c) {
        super(fVar, abstractC13497p, abstractC13830m, abstractC13801a0);
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(abstractC13831a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13802b, "fullScreenProfilePictureHelper");
        l.e(abstractC16111h, "videoCallerId");
        l.e(fVar, "uiContext");
        l.e(c13727t, "timezoneHelper");
        l.e(abstractC13801a0, "trueContextPresenterProvider");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC13830m, "callerLabelFactory");
        l.e(abstractC18765c, "contextCall");
        this.f39228p = abstractC13762c;
        this.f39229q = abstractC13734c;
        this.f39230r = abstractC13831a;
        this.f39231s = abstractC13802b;
        this.f39232t = abstractC16111h;
        this.f39233u = fVar;
        this.f39234v = c13727t;
        this.f39235w = abstractC13801a0;
        this.f39236x = c20592g;
        this.f39237y = abstractC18765c;
        StringBuilder m8728C = C22128a.m8728C("IncomingCallPresenter-");
        m8728C.append(UUID.randomUUID());
        this.f39222j = m8728C.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0028, code lost:
        if (s1.f0.r.p(r4) != false) goto L13;
     */
    /* renamed from: Vj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m21672Vj(p193e.p194a.p717f.p718a.p719a.C13530i r3, java.lang.String r4, boolean r5, boolean r6, int r7) {
        /*
            r0 = 0
            r8 = r0
            r0 = r7
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto Lc
            r0 = 0
            r6 = r0
        Lc:
            r0 = r3
            java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
            r0 = r5
            if (r0 != 0) goto L49
            r0 = r6
            if (r0 == 0) goto L1c
            goto L49
        L1c:
            r0 = r4
            if (r0 == 0) goto L2b
            r0 = r8
            r7 = r0
            r0 = r4
            boolean r0 = s1.f0.r.p(r0)
            if (r0 == 0) goto L2e
        L2b:
            r0 = 1
            r7 = r0
        L2e:
            r0 = r7
            if (r0 != 0) goto L5b
            r0 = r3
            PV r0 = r0.f57683a
            e.a.f.a.a.g r0 = (p193e.p194a.p717f.p718a.p719a.AbstractC13528g) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L5b
            r0 = r3
            r1 = r4
            r0.mo21686qd(r1)
            goto L5b
        L49:
            r0 = r3
            PV r0 = r0.f57683a
            e.a.f.a.a.g r0 = (p193e.p194a.p717f.p718a.p719a.AbstractC13528g) r0
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L5b
            r0 = r3
            r0.mo21694b9()
        L5b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21672Vj(e.a.f.a.a.i, java.lang.String, boolean, boolean, int):void");
    }

    /* renamed from: Pj */
    public final void m21678Pj(boolean z) {
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21424Y3();
        }
        AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g2 != null) {
            abstractC13528g2.mo21410v5();
        }
        AbstractC13528g abstractC13528g3 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g3 != null) {
            abstractC13528g3.mo21436M4();
        }
        AbstractC13528g abstractC13528g4 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g4 != null) {
            abstractC13528g4.mo21693f5();
        }
        AbstractC13528g abstractC13528g5 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g5 != null) {
            abstractC13528g5.mo21705J6();
        }
        AbstractC13528g abstractC13528g6 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g6 != null) {
            abstractC13528g6.mo21696Zq(C4013R.color.incallui_gold_gradient_start_color, C4013R.C4014drawable.background_incallui_tag_gold);
        }
        AbstractC13528g abstractC13528g7 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g7 != null) {
            abstractC13528g7.mo21706Cp(C4013R.color.incallui_gold_gradient_start_color, C4013R.C4014drawable.background_incallui_tag_gold);
        }
        if (z || this.f39227o) {
            AbstractC13528g abstractC13528g8 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g8 != null) {
                abstractC13528g8.mo21683yu();
            }
            AbstractC13528g abstractC13528g9 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g9 != null) {
                abstractC13528g9.mo21434Nl();
            }
            AbstractC13528g abstractC13528g10 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g10 != null) {
                abstractC13528g10.mo21426Ur();
            }
            AbstractC13528g abstractC13528g11 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g11 == null) {
                return;
            }
            abstractC13528g11.mo21411sz();
            return;
        }
        int i = C4621R.color.tcx_goldTextPrimary;
        AbstractC13528g abstractC13528g12 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g12 != null) {
            abstractC13528g12.mo21697Y6(i);
        }
        AbstractC13528g abstractC13528g13 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g13 != null) {
            abstractC13528g13.mo21418i4(i);
        }
        AbstractC13528g abstractC13528g14 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g14 != null) {
            abstractC13528g14.mo21420i1(i);
        }
        AbstractC13528g abstractC13528g15 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g15 == null) {
            return;
        }
        abstractC13528g15.mo21441Hy(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
    /* renamed from: Qj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21677Qj(p193e.p194a.p717f.p718a.C13642g r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21677Qj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: Rj */
    public final void m21676Rj() {
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21415p0(C4013R.color.incallui_unknown_text_color);
        }
        AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g2 != null) {
            abstractC13528g2.mo21429S0(C4013R.dimen.incallui_unknown_name_font_size);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c2  */
    /* renamed from: Sj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21675Sj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21675Sj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0123  */
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21674Tj(p193e.p194a.p717f.p718a.C13642g r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21674Tj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: Uj */
    public final void m21673Uj(String str, boolean z, boolean z2) {
        AbstractC13528g abstractC13528g;
        if ((str == null || r.p(str)) || z || z2 || (abstractC13528g = (AbstractC13528g) this.f57683a) == null) {
            return;
        }
        abstractC13528g.mo21691k9(str);
    }

    /* renamed from: Wj */
    public final void m21671Wj(C8551c c8551c, boolean z, boolean z2) {
        if (c8551c == null || z) {
            return;
        }
        if (z2) {
            AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
            if (abstractC13528g == null) {
                return;
            }
            abstractC13528g.mo21700P0();
            abstractC13528g.mo21707Bz(c8551c.f26354e, c8551c.f26351b);
            return;
        }
        AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g2 == null) {
            return;
        }
        abstractC13528g2.mo21695b5();
        abstractC13528g2.mo21708A2(c8551c.f26354e, c8551c.f26351b);
    }

    /* renamed from: Xj */
    public final void m21670Xj(Contact contact) {
        if (contact != null) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13534d(contact, null), 3, (Object) null);
            return;
        }
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
        if (abstractC13528g == null) {
            return;
        }
        abstractC13528g.mo21407z();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
        if (r5 != null) goto L13;
     */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.f.a.a.g, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(java.lang.Object r5) {
        /*
            r4 = this;
            r0 = r5
            e.a.f.a.a.g r0 = (p193e.p194a.p717f.p718a.p719a.AbstractC13528g) r0
            r5 = r0
            r0 = r5
            java.lang.String r1 = "presenterView"
            s1.z.c.l.e(r0, r1)
            r0 = r4
            r1 = r5
            r0.f57683a = r1
            r0 = r4
            e.a.f.y.c r0 = r0.f39228p
            r1 = r4
            java.lang.String r1 = r1.f39222j
            r2 = r4
            r0.mo21191p(r1, r2)
            r0 = r4
            r1 = 10
            q3.a.w2.h r1 = s1.a.a.a.v0.f.d.d(r1)
            r0.f39223k = r1
            r0 = r4
            e.a.f.y.c r0 = r0.f39228p
            java.lang.String r0 = r0.mo21200g()
            if (r0 == 0) goto L56
            r0 = r4
            PV r0 = r0.f57683a
            e.a.f.a.a.g r0 = (p193e.p194a.p717f.p718a.p719a.AbstractC13528g) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L4d
            r0 = r5
            r0.mo21701M2()
            s1.s r0 = s1.s.a
            r5 = r0
            goto L4f
        L4d:
            r0 = 0
            r5 = r0
        L4f:
            r0 = r5
            if (r0 == 0) goto L56
            goto L68
        L56:
            r0 = r4
            PV r0 = r0.f57683a
            e.a.f.a.a.g r0 = (p193e.p194a.p717f.p718a.p719a.AbstractC13528g) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L68
            r0 = r5
            r0.mo21689nv()
        L68:
            r0 = r4
            e.a.f.z.m0.a r0 = r0.f39230r
            r6 = r0
            r0 = r4
            q3.a.w2.h<com.truecaller.incallui.callui.incoming.IncomingCallUIEvent> r0 = r0.f39223k
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L7e
            r0 = r6
            r1 = r5
            r0.mo21034f(r1)
            return
        L7e:
            java.lang.String r0 = "uiEventsChannel"
            s1.z.c.l.l(r0)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.mo9029Y0(java.lang.Object):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00cf  */
    /* renamed from: Yj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21669Yj(p193e.p194a.p717f.p718a.C13642g r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21669Yj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: Z7 */
    public void mo9807Z7(C13811d0 c13811d0) {
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0150  */
    /* renamed from: Zj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21668Zj(p193e.p194a.p717f.p718a.C13642g r10, boolean r11, s1.w.d<? super s1.s> r12) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21668Zj(e.a.f.a.g, boolean, s1.w.d):java.lang.Object");
    }

    /* renamed from: ak */
    public void m21667ak(String str) {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13537g(null), 3, (Object) null);
    }

    /* renamed from: bk */
    public final void m21666bk() {
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21415p0(C4013R.color.incallui_white_text_color);
        }
        AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g2 != null) {
            abstractC13528g2.mo21429S0(C4013R.dimen.incallui_name_font_size);
        }
        AbstractC13528g abstractC13528g3 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g3 != null) {
            abstractC13528g3.mo21443F1(C4013R.color.incallui_white_text_color);
        }
        AbstractC13528g abstractC13528g4 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g4 != null) {
            abstractC13528g4.mo21685s4(C4013R.color.incallui_white_text_color);
        }
        AbstractC13528g abstractC13528g5 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g5 != null) {
            abstractC13528g5.mo21698Wg(C4013R.color.incallui_white_text_color);
        }
        AbstractC13528g abstractC13528g6 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g6 != null) {
            abstractC13528g6.mo21696Zq(C4013R.color.incallui_white_text_color, C4013R.C4014drawable.background_tcx_tag_dark);
        }
        AbstractC13528g abstractC13528g7 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g7 != null) {
            abstractC13528g7.mo21706Cp(C4013R.color.incallui_white_text_color, C4013R.C4014drawable.background_tcx_tag_dark);
        }
        AbstractC13528g abstractC13528g8 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g8 != null) {
            abstractC13528g8.mo21697Y6(C4013R.color.incallui_white_text_color);
        }
        AbstractC13528g abstractC13528g9 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g9 != null) {
            abstractC13528g9.mo21418i4(C4013R.color.incallui_white_text_color);
        }
        AbstractC13528g abstractC13528g10 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g10 != null) {
            abstractC13528g10.mo21420i1(C4013R.color.incallui_white_color);
        }
        AbstractC13528g abstractC13528g11 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g11 != null) {
            abstractC13528g11.mo21441Hy(C4013R.color.incallui_white_color);
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21702M0();
        }
        this.f39228p.mo21205b(this.f39222j, this);
        super.mo9806c();
        h<IncomingCallUIEvent> hVar = this.f39223k;
        if (hVar != null) {
            hVar.d((CancellationException) null);
        } else {
            l.l("uiEventsChannel");
            throw null;
        }
    }

    /* renamed from: ck */
    public final AbstractC13738f.C13740b m21665ck() {
        Object m13593R0 = C19291g.m13593R0(this.f39229q.mo21236a());
        Object obj = m13593R0;
        if (!(m13593R0 instanceof AbstractC13738f.C13740b)) {
            obj = null;
        }
        return (AbstractC13738f.C13740b) obj;
    }

    /* renamed from: dk */
    public final void m21664dk() {
        s sVar;
        String mo21200g = this.f39228p.mo21200g();
        if (mo21200g != null) {
            AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
            if (abstractC13528g != null) {
                abstractC13528g.mo21447C3(new C13827k0(null, mo21200g, null, null, false, false, false, false, false, false, null, false, false, false, 16381));
                sVar = s.a;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                return;
            }
        }
        AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g2 != null) {
            abstractC13528g2.mo21447C3(new C13827k0(null, null, null, null, false, false, false, false, false, false, null, false, false, false, 16383));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x047d, code lost:
        if (r10 == r0) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x049b, code lost:
        if (r10 != r0) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x04a1, code lost:
        r10 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x04a6, code lost:
        if (r10 != r0) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x04ab, code lost:
        return r0;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x030f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0312  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x034b  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x03a1  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x03b1  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x041a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x044c  */
    /* renamed from: ek */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21663ek(p193e.p194a.p717f.p718a.C13642g r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 1198
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p719a.C13530i.m21663ek(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: od */
    public void mo9805od() {
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13637d
    /* renamed from: q7 */
    public void mo21449q7(boolean z) {
        AbstractC13528g abstractC13528g;
        Object m13593R0 = C19291g.m13593R0(this.f39229q.mo21236a());
        Object obj = m13593R0;
        if (!(m13593R0 instanceof AbstractC13738f.C13740b)) {
            obj = null;
        }
        AbstractC13738f.C13740b c13740b = (AbstractC13738f.C13740b) obj;
        if (c13740b != null) {
            C13642g c13642g = c13740b.f39794a;
            if (!z) {
                m21672Vj(this, c13642g.f39517g, false, false, 4);
                m21673Uj(c13642g.f39518h, c13642g.f39526p, c13642g.f39529s);
                m21671Wj(c13642g.f39520j, c13642g.f39526p, C17891a1.C17902k.m15665K0(c13642g));
                m21670Xj(c13642g.f39533w);
                return;
            }
            AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g2 != null) {
                abstractC13528g2.mo21694b9();
            }
            AbstractC13528g abstractC13528g3 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g3 != null) {
                abstractC13528g3.mo21684w5();
            }
            AbstractC13528g abstractC13528g4 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g4 != null) {
                abstractC13528g4.mo21700P0();
            }
            if (!C17891a1.C17902k.m15665K0(c13642g) && (abstractC13528g = (AbstractC13528g) this.f57683a) != null) {
                abstractC13528g.mo21695b5();
            }
            AbstractC13528g abstractC13528g5 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g5 == null) {
                return;
            }
            abstractC13528g5.mo21407z();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: sc */
    public void mo9804sc(String str) {
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: zj */
    public void mo9803zj(AbstractC13754a abstractC13754a) {
        AbstractC13528g abstractC13528g = (AbstractC13528g) this.f57683a;
        if (abstractC13528g != null) {
            abstractC13528g.mo21702M0();
        }
        this.f39237y.mo14504u();
        if (this.f39226n) {
            AbstractC13528g abstractC13528g2 = (AbstractC13528g) this.f57683a;
            if (abstractC13528g2 == null) {
                return;
            }
            abstractC13528g2.mo21682zt();
            return;
        }
        AbstractC13528g abstractC13528g3 = (AbstractC13528g) this.f57683a;
        if (abstractC13528g3 == null) {
            return;
        }
        abstractC13528g3.mo21687q();
    }
}
