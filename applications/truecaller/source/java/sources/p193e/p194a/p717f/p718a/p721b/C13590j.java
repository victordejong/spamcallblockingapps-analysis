package p193e.p194a.p717f.p718a.p721b;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.data.entity.CallContextMessage;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.callui.ongoing.OngoingCallUIEvent;
import com.truecaller.themes.C4621R;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p712e4.AbstractC13497p;
import p193e.p194a.p717f.C13722p;
import p193e.p194a.p717f.C13727t;
import p193e.p194a.p717f.p718a.AbstractC13639f;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p733y.AbstractC13762c;
import p193e.p194a.p717f.p733y.AbstractC13792v;
import p193e.p194a.p717f.p734z.AbstractC13801a0;
import p193e.p194a.p717f.p734z.AbstractC13802b;
import p193e.p194a.p717f.p734z.AbstractC13809c0;
import p193e.p194a.p717f.p734z.AbstractC13830m;
import p193e.p194a.p717f.p734z.AbstractC13864y;
import p193e.p194a.p717f.p734z.C13811d0;
import p193e.p194a.p717f.p734z.C13827k0;
import p193e.p194a.p717f.p734z.p735m0.AbstractC13831a;
import p193e.p194a.p717f.p734z.p736n0.C13843a;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p947k.p948a.p963j.C15804a;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.h;
import q3.a.w2.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.f.a.b.j */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j.class */
public final class C13590j extends AbstractC13639f<AbstractC13589i> implements AbstractC13588h {

    /* renamed from: A */
    public final C13722p f39366A;

    /* renamed from: B */
    public final CallRecordingManager f39367B;

    /* renamed from: C */
    public final AbstractC16111h f39368C;

    /* renamed from: i */
    public final String f39369i;

    /* renamed from: j */
    public h<OngoingCallUIEvent> f39370j;

    /* renamed from: k */
    public p1 f39371k;

    /* renamed from: l */
    public boolean f39372l;

    /* renamed from: m */
    public int f39373m = C4013R.color.incallui_call_status_neutral_color;

    /* renamed from: n */
    public volatile boolean f39374n;

    /* renamed from: o */
    public final f f39375o;

    /* renamed from: p */
    public final AbstractC13762c f39376p;

    /* renamed from: q */
    public final AbstractC13792v f39377q;

    /* renamed from: r */
    public final AbstractC19222c f39378r;

    /* renamed from: s */
    public final AbstractC19223c0 f39379s;

    /* renamed from: t */
    public final AbstractC13734c f39380t;

    /* renamed from: u */
    public final AbstractC13831a f39381u;

    /* renamed from: v */
    public final AbstractC13802b f39382v;

    /* renamed from: w */
    public final C13727t f39383w;

    /* renamed from: x */
    public final AbstractC18765c f39384x;

    /* renamed from: y */
    public final AbstractC13809c0 f39385y;

    /* renamed from: z */
    public final AbstractC13864y f39386z;

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {774, 783}, m = "applyTheme")
    /* renamed from: e.a.f.a.b.j$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$a.class */
    public static final class C13591a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39387d;

        /* renamed from: e */
        public int f39388e;

        /* renamed from: g */
        public Object f39390g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13591a(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21530s(Object obj) {
            this.f39387d = obj;
            this.f39388e |= Integer.MIN_VALUE;
            return C13590j.this.m21546Sj(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {611}, m = "maybeSetPlaceholderImageProfile")
    /* renamed from: e.a.f.a.b.j$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$b.class */
    public static final class C13592b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39391d;

        /* renamed from: e */
        public int f39392e;

        /* renamed from: g */
        public Object f39394g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13592b(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21529s(Object obj) {
            this.f39391d = obj;
            this.f39392e |= Integer.MIN_VALUE;
            return C13590j.this.m21544Uj(this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {674}, m = "maybeShowOnDemandReasonPicker")
    /* renamed from: e.a.f.a.b.j$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$c.class */
    public static final class C13593c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39395d;

        /* renamed from: e */
        public int f39396e;

        /* renamed from: g */
        public Object f39398g;

        /* renamed from: h */
        public Object f39399h;

        /* renamed from: i */
        public Object f39400i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13593c(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21528s(Object obj) {
            this.f39395d = obj;
            this.f39396e |= Integer.MIN_VALUE;
            return C13590j.this.m21543Vj(null, null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {735}, m = "maybeShowTrueContextForOutgoing")
    /* renamed from: e.a.f.a.b.j$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$d.class */
    public static final class C13594d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39401d;

        /* renamed from: e */
        public int f39402e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13594d(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21527s(Object obj) {
            this.f39401d = obj;
            this.f39402e |= Integer.MIN_VALUE;
            return C13590j.this.m21542Wj(null, false, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {755}, m = "maybeShowUserBadge")
    /* renamed from: e.a.f.a.b.j$e */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$e.class */
    public static final class C13595e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39404d;

        /* renamed from: e */
        public int f39405e;

        /* renamed from: g */
        public Object f39407g;

        /* renamed from: h */
        public Object f39408h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13595e(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21526s(Object obj) {
            this.f39404d = obj;
            this.f39405e |= Integer.MIN_VALUE;
            return C13590j.this.m21541Xj(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {646, 647, 652, 653, 658, 659, 660, 661}, m = "showCallerInfo")
    /* renamed from: e.a.f.a.b.j$f */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$f.class */
    public static final class C13596f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39409d;

        /* renamed from: e */
        public int f39410e;

        /* renamed from: g */
        public Object f39412g;

        /* renamed from: h */
        public Object f39413h;

        /* renamed from: i */
        public boolean f39414i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13596f(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21525s(Object obj) {
            this.f39409d = obj;
            this.f39410e |= Integer.MIN_VALUE;
            return C13590j.this.m21535dk(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {441, 459}, m = "showVideoCallerIdToast")
    /* renamed from: e.a.f.a.b.j$g */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$g.class */
    public static final class C13597g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39415d;

        /* renamed from: e */
        public int f39416e;

        /* renamed from: g */
        public Object f39418g;

        /* renamed from: h */
        public Object f39419h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13597g(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21524s(Object obj) {
            this.f39415d = obj;
            this.f39416e |= Integer.MIN_VALUE;
            return C13590j.this.m21533fk(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {707}, m = "updateCallReasonSecondCall")
    /* renamed from: e.a.f.a.b.j$h */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$h.class */
    public static final class C13598h extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39420d;

        /* renamed from: e */
        public int f39421e;

        /* renamed from: g */
        public Object f39423g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13598h(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21523s(Object obj) {
            this.f39420d = obj;
            this.f39421e |= Integer.MIN_VALUE;
            return C13590j.this.m21532gk(null, this);
        }
    }

    @e(c = "com.truecaller.incallui.callui.ongoing.OngoingCallPresenter", f = "OngoingCallPresenter.kt", l = {173, 174}, m = "updateState")
    /* renamed from: e.a.f.a.b.j$i */
    /* loaded from: classes10-dex2jar.jar:e/a/f/a/b/j$i.class */
    public static final class C13599i extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39424d;

        /* renamed from: e */
        public int f39425e;

        /* renamed from: g */
        public Object f39427g;

        /* renamed from: h */
        public Object f39428h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13599i(d dVar) {
            super(dVar);
            C13590j.this = r4;
        }

        /* renamed from: s */
        public final Object m21522s(Object obj) {
            this.f39424d = obj;
            this.f39425e |= Integer.MIN_VALUE;
            return C13590j.this.m21531hk(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13590j(@Named("UI") f fVar, AbstractC13762c abstractC13762c, AbstractC13792v abstractC13792v, AbstractC19222c abstractC19222c, AbstractC19223c0 abstractC19223c0, AbstractC13734c abstractC13734c, AbstractC13831a abstractC13831a, AbstractC13802b abstractC13802b, C13727t c13727t, AbstractC18765c abstractC18765c, AbstractC13809c0 abstractC13809c0, AbstractC13864y abstractC13864y, C13722p c13722p, CallRecordingManager callRecordingManager, AbstractC16111h abstractC16111h, AbstractC13497p abstractC13497p, AbstractC13830m abstractC13830m, AbstractC13801a0 abstractC13801a0) {
        super(fVar, abstractC13497p, abstractC13830m, abstractC13801a0);
        l.e(fVar, "uiContext");
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13792v, "ongoingCallHelper");
        l.e(abstractC19222c, "clock");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(abstractC13831a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13802b, "fullScreenProfilePictureHelper");
        l.e(c13727t, "timezoneHelper");
        l.e(abstractC18765c, "contextCall");
        l.e(abstractC13809c0, "voipHelper");
        l.e(abstractC13864y, "settings");
        l.e(c13722p, "messageHelper");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(abstractC16111h, "videoCallerId");
        l.e(abstractC13497p, "multiSimManager");
        l.e(abstractC13830m, "callerLabelFactory");
        l.e(abstractC13801a0, "trueContextPresenterProvider");
        this.f39375o = fVar;
        this.f39376p = abstractC13762c;
        this.f39377q = abstractC13792v;
        this.f39378r = abstractC19222c;
        this.f39379s = abstractC19223c0;
        this.f39380t = abstractC13734c;
        this.f39381u = abstractC13831a;
        this.f39382v = abstractC13802b;
        this.f39383w = c13727t;
        this.f39384x = abstractC18765c;
        this.f39385y = abstractC13809c0;
        this.f39386z = abstractC13864y;
        this.f39366A = c13722p;
        this.f39367B = callRecordingManager;
        this.f39368C = abstractC16111h;
        StringBuilder m8728C = C22128a.m8728C("OngoingCallPresenter-");
        m8728C.append(UUID.randomUUID());
        this.f39369i = m8728C.toString();
    }

    /* renamed from: Pj */
    public static final void m21549Pj(C13590j c13590j) {
        AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21429S0(C4013R.dimen.incallui_ongoing_name_font_size);
        }
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.setProfileName("");
        }
        AbstractC13589i abstractC13589i3 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i3 != null) {
            abstractC13589i3.mo21442G();
        }
        AbstractC13589i abstractC13589i4 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i4 != null) {
            abstractC13589i4.mo21430P2();
        }
        AbstractC13589i abstractC13589i5 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i5 != null) {
            abstractC13589i5.mo21427U0(C4013R.color.incallui_gray_text_color);
        }
        AbstractC13589i abstractC13589i6 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i6 != null) {
            abstractC13589i6.mo21428T1();
        }
        AbstractC13589i abstractC13589i7 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i7 != null) {
            abstractC13589i7.mo21412re();
        }
        AbstractC13589i abstractC13589i8 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i8 != null) {
            abstractC13589i8.mo21407z();
        }
        AbstractC13589i abstractC13589i9 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i9 != null) {
            abstractC13589i9.mo21590M1();
        }
        AbstractC13589i abstractC13589i10 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i10 != null) {
            abstractC13589i10.mo21425Xc();
        }
        if (c13590j.f39376p.mo21193n()) {
            AbstractC13589i abstractC13589i11 = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i11 != null) {
                abstractC13589i11.mo21552xv();
            }
            AbstractC13589i abstractC13589i12 = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i12 != null) {
                abstractC13589i12.mo21581Tb();
            }
            AbstractC13589i abstractC13589i13 = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i13 != null) {
                abstractC13589i13.mo21554wc();
            }
            AbstractC13589i abstractC13589i14 = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i14 != null) {
                abstractC13589i14.mo21600Cx();
            }
            AbstractC13589i abstractC13589i15 = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i15 != null) {
                abstractC13589i15.mo21571dx();
            }
            AbstractC13589i abstractC13589i16 = (AbstractC13589i) c13590j.f57683a;
            if (abstractC13589i16 != null) {
                abstractC13589i16.mo21602Bf();
            }
        }
        c13590j.f39373m = C4013R.color.incallui_call_status_neutral_color;
        AbstractC13589i abstractC13589i17 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i17 != null) {
            abstractC13589i17.mo21415p0(C4013R.color.incallui_title_text_color);
        }
        AbstractC13589i abstractC13589i18 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i18 != null) {
            abstractC13589i18.mo21443F1(C4013R.color.incallui_white_text_color);
        }
        AbstractC13589i abstractC13589i19 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i19 != null) {
            abstractC13589i19.mo21593L4(C4013R.color.incallui_color_white);
        }
        AbstractC13589i abstractC13589i20 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i20 != null) {
            abstractC13589i20.mo21599D3(C4013R.color.incallui_color_white);
        }
        AbstractC13589i abstractC13589i21 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i21 != null) {
            abstractC13589i21.mo21418i4(C4013R.color.incallui_color_white);
        }
        AbstractC13589i abstractC13589i22 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i22 != null) {
            abstractC13589i22.mo21420i1(C4013R.color.incallui_color_white);
        }
        AbstractC13589i abstractC13589i23 = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i23 != null) {
            abstractC13589i23.mo21441Hy(C4013R.color.incallui_white_color);
        }
    }

    /* renamed from: Qj */
    public static final void m21548Qj(C13590j c13590j, CallContextMessage callContextMessage) {
        AbstractC13589i abstractC13589i = (AbstractC13589i) c13590j.f57683a;
        if (abstractC13589i != null) {
            String mo13768b = c13590j.f39379s.mo13768b(C4013R.string.context_call_outgoing_call_message, callContextMessage.f11498c);
            l.d(mo13768b, "resourceProvider.getStri…llContextMessage.message)");
            abstractC13589i.mo21585Qb(new C15804a.C15805a(mo13768b, false, 5000L, null, 8));
        }
    }

    /* renamed from: Rj */
    public final void m21547Rj(boolean z) {
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21424Y3();
        }
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.mo21410v5();
        }
        AbstractC13589i abstractC13589i3 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i3 != null) {
            abstractC13589i3.mo21436M4();
        }
        if (z || this.f39374n) {
            this.f39373m = -1;
            AbstractC13589i abstractC13589i4 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i4 != null) {
                abstractC13589i4.mo21586Of();
            }
            AbstractC13589i abstractC13589i5 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i5 != null) {
                abstractC13589i5.mo21434Nl();
            }
            AbstractC13589i abstractC13589i6 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i6 != null) {
                abstractC13589i6.mo21601Bj();
            }
            AbstractC13589i abstractC13589i7 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i7 != null) {
                abstractC13589i7.mo21426Ur();
            }
            AbstractC13589i abstractC13589i8 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i8 == null) {
                return;
            }
            abstractC13589i8.mo21411sz();
            return;
        }
        int i = C4621R.color.tcx_goldTextPrimary;
        this.f39373m = i;
        AbstractC13589i abstractC13589i9 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i9 != null) {
            abstractC13589i9.mo21593L4(i);
        }
        AbstractC13589i abstractC13589i10 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i10 != null) {
            abstractC13589i10.mo21418i4(i);
        }
        AbstractC13589i abstractC13589i11 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i11 != null) {
            abstractC13589i11.mo21599D3(i);
        }
        AbstractC13589i abstractC13589i12 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i12 != null) {
            abstractC13589i12.mo21420i1(i);
        }
        AbstractC13589i abstractC13589i13 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i13 == null) {
            return;
        }
        abstractC13589i13.mo21441Hy(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0088  */
    /* renamed from: Sj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21546Sj(p193e.p194a.p717f.p718a.C13642g r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 321
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21546Sj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: Tj */
    public final void m21545Tj() {
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21413r1();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d2  */
    /* renamed from: Uj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21544Uj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21544Uj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01c7  */
    /* renamed from: Vj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21543Vj(p193e.p194a.p717f.p718a.C13642g r9, com.truecaller.incallui.service.CallState r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 488
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21543Vj(e.a.f.a.g, com.truecaller.incallui.service.CallState, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* renamed from: Wj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m21542Wj(p193e.p194a.p717f.p718a.C13642g r8, boolean r9, s1.w.d<? super s1.s> r10) {
        /*
            r7 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p717f.p718a.p721b.C13590j.C13594d
            if (r0 == 0) goto L2e
            r0 = r10
            e.a.f.a.b.j$d r0 = (p193e.p194a.p717f.p718a.p721b.C13590j.C13594d) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f39402e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f39402e = r1
            r0 = r11
            r10 = r0
            goto L38
        L2e:
            e.a.f.a.b.j$d r0 = new e.a.f.a.b.j$d
            r1 = r0
            r2 = r7
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L38:
            r0 = r10
            java.lang.Object r0 = r0.f39401d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f39402e
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L67
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L5c
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L91
        L5c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            e.a.f.y.c r0 = r0.f39376p
            com.truecaller.incallui.service.CallType r0 = r0.mo21183x()
            com.truecaller.incallui.service.CallType r1 = com.truecaller.incallui.service.CallType.OUTGOING
            if (r0 != r1) goto L91
            r0 = r10
            r1 = 1
            r0.f39402e = r1
            r0 = r7
            r1 = r8
            r2 = r9
            r3 = 0
            r4 = 1
            r5 = r10
            java.lang.Object r0 = r0.m21401Mj(r1, r2, r3, r4, r5)
            r1 = r13
            if (r0 != r1) goto L91
            r0 = r13
            return r0
        L91:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21542Wj(e.a.f.a.g, boolean, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00b5  */
    /* renamed from: Xj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21541Xj(p193e.p194a.p717f.p718a.C13642g r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21541Xj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.f.a.b.i, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC13589i) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f39376p.mo21191p(this.f39369i, this);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C13609t(this, null), 3, (Object) null);
        this.f39370j = s1.a.a.a.v0.f.d.d(10);
        r<C13843a> mo21061s = this.f39377q.mo21061s();
        if (mo21061s != null) {
            C19291g.m13599P0(this, mo21061s, new C13600k(this, null));
        }
        AbstractC13831a abstractC13831a = this.f39381u;
        h<OngoingCallUIEvent> hVar = this.f39370j;
        if (hVar != null) {
            abstractC13831a.mo21032h(hVar);
        } else {
            l.l("uiEventsChannel");
            throw null;
        }
    }

    /* renamed from: Yj */
    public final void m21540Yj() {
        AbstractC13589i abstractC13589i;
        m21545Tj();
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.mo21558s1();
        }
        AbstractC13589i abstractC13589i3 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i3 != null) {
            abstractC13589i3.mo21598Dg();
        }
        m21400Nj();
        m21537bk();
        if (this.f39376p.mo21204c() && (abstractC13589i = (AbstractC13589i) this.f57683a) != null) {
            abstractC13589i.mo21419i3(C4013R.string.incallui_conference_call);
        }
        Long mo21202e = this.f39376p.mo21202e();
        if (mo21202e != null) {
            long longValue = mo21202e.longValue();
            AbstractC13589i abstractC13589i4 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i4 == null) {
                return;
            }
            abstractC13589i4.mo21556t5(this.f39378r.mo13821a() - (this.f39378r.mo13819c() - longValue));
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: Z7 */
    public void mo9807Z7(C13811d0 c13811d0) {
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
        l.e(c13811d0, "inCallUiAcsData");
    }

    /* renamed from: Zj */
    public void m21539Zj() {
        this.f39376p.mo21196k();
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21581Tb();
        }
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.mo21569hg();
        }
        h<OngoingCallUIEvent> hVar = this.f39370j;
        if (hVar != null) {
            hVar.offer(OngoingCallUIEvent.SWAP_CLICK);
        } else {
            l.l("uiEventsChannel");
            throw null;
        }
    }

    /* renamed from: ak */
    public final void m21538ak(int i, int i2) {
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21584Rg();
        }
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.mo21559ry(i);
        }
        AbstractC13589i abstractC13589i3 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i3 != null) {
            abstractC13589i3.mo21593L4(i2);
        }
    }

    /* renamed from: bk */
    public final void m21537bk() {
        String mo21200g = this.f39376p.mo21200g();
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21588O6(mo21200g);
        }
        if (this.f39376p.mo21204c()) {
            AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i2 != null) {
                abstractC13589i2.mo21440J();
            }
            AbstractC13589i abstractC13589i3 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i3 == null) {
                return;
            }
            abstractC13589i3.mo21422Z();
        } else if (mo21200g == null) {
            AbstractC13589i abstractC13589i4 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i4 != null) {
                abstractC13589i4.mo21414q3(C4013R.string.incallui_unknown_caller);
            }
            AbstractC13589i abstractC13589i5 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i5 != null) {
                abstractC13589i5.mo21419i3(C4013R.string.incallui_hidden_number);
            }
            AbstractC13589i abstractC13589i6 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i6 != null) {
                abstractC13589i6.mo21415p0(C4013R.color.incallui_unknown_text_color);
            }
            AbstractC13589i abstractC13589i7 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i7 == null) {
                return;
            }
            abstractC13589i7.mo21429S0(C4013R.dimen.incallui_unknown_name_font_size);
        } else {
            AbstractC13738f abstractC13738f = (AbstractC13738f) C19291g.m13593R0(this.f39380t.mo21236a());
            if (!(abstractC13738f instanceof AbstractC13738f.C13740b)) {
                AbstractC13589i abstractC13589i8 = (AbstractC13589i) this.f57683a;
                if (abstractC13589i8 != null) {
                    abstractC13589i8.setPhoneNumber(mo21200g);
                }
                AbstractC13589i abstractC13589i9 = (AbstractC13589i) this.f57683a;
                if (abstractC13589i9 == null) {
                    return;
                }
                abstractC13589i9.mo21422Z();
            } else if (((AbstractC13738f.C13740b) abstractC13738f).f39794a.f39526p) {
                AbstractC13589i abstractC13589i10 = (AbstractC13589i) this.f57683a;
                if (abstractC13589i10 != null) {
                    abstractC13589i10.mo21433Ns(mo21200g);
                }
                AbstractC13589i abstractC13589i11 = (AbstractC13589i) this.f57683a;
                if (abstractC13589i11 == null) {
                    return;
                }
                abstractC13589i11.mo21440J();
            } else {
                AbstractC13589i abstractC13589i12 = (AbstractC13589i) this.f57683a;
                if (abstractC13589i12 != null) {
                    abstractC13589i12.setPhoneNumber(mo21200g);
                }
                AbstractC13589i abstractC13589i13 = (AbstractC13589i) this.f57683a;
                if (abstractC13589i13 == null) {
                    return;
                }
                abstractC13589i13.mo21422Z();
            }
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f39376p.mo21205b(this.f39369i, this);
        h<OngoingCallUIEvent> hVar = this.f39370j;
        if (hVar == null) {
            l.l("uiEventsChannel");
            throw null;
        }
        hVar.d((CancellationException) null);
        this.f39384x.mo14522J();
    }

    /* renamed from: ck */
    public final void m21536ck() {
        s sVar;
        String mo21200g = this.f39376p.mo21200g();
        if (mo21200g != null) {
            AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
            if (abstractC13589i != null) {
                abstractC13589i.mo21447C3(new C13827k0(null, mo21200g, null, null, false, false, false, false, false, false, null, false, false, false, 16381));
                sVar = s.a;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                return;
            }
        }
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.mo21447C3(new C13827k0(null, null, null, null, false, false, false, false, false, false, null, false, false, false, 16383));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00d1  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x013c  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x028b  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02bd  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x02cf  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0336  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03a3  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x03b9  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0416  */
    /* renamed from: dk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21535dk(p193e.p194a.p717f.p718a.C13642g r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 1051
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21535dk(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: ek */
    public final void m21534ek() {
        if (this.f39376p.mo21204c()) {
            AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
            if (abstractC13589i != null) {
                abstractC13589i.mo21419i3(C4013R.string.incallui_conference_call);
            }
            AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i2 != null) {
                abstractC13589i2.mo21440J();
            }
            AbstractC13589i abstractC13589i3 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i3 == null) {
                return;
            }
            abstractC13589i3.mo21422Z();
            return;
        }
        if (this.f39376p.mo21200g() == null) {
            AbstractC13589i abstractC13589i4 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i4 != null) {
                abstractC13589i4.mo21419i3(C4013R.string.incallui_hidden_number);
            }
        } else {
            AbstractC13589i abstractC13589i5 = (AbstractC13589i) this.f57683a;
            if (abstractC13589i5 != null) {
                abstractC13589i5.mo21417ic();
            }
        }
        AbstractC13589i abstractC13589i6 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i6 != null) {
            abstractC13589i6.mo21415p0(C4013R.color.incallui_unknown_text_color);
        }
        AbstractC13589i abstractC13589i7 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i7 == null) {
            return;
        }
        abstractC13589i7.mo21429S0(C4013R.dimen.incallui_unknown_name_font_size);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019d  */
    /* renamed from: fk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21533fk(p193e.p194a.p717f.p718a.C13642g r23, s1.w.d<? super s1.s> r24) {
        /*
            Method dump skipped, instructions count: 500
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21533fk(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* renamed from: gk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m21532gk(com.truecaller.incallui.service.CallState r6, s1.w.d<? super s1.s> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p717f.p718a.p721b.C13590j.C13598h
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.f.a.b.j$h r0 = (p193e.p194a.p717f.p718a.p721b.C13590j.C13598h) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f39421e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f39421e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.f.a.b.j$h r0 = new e.a.f.a.b.j$h
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f39420d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r8 = r0
            r0 = r7
            int r0 = r0.f39421e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L6a
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5f
            r0 = r7
            java.lang.Object r0 = r0.f39423g
            e.a.f.a.b.j r0 = (p193e.p194a.p717f.p718a.p721b.C13590j) r0
            r6 = r0
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lee
        L5f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6a:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto Lbe;
                case 1: goto Lbe;
                case 2: goto Lb7;
                case 3: goto Lb2;
                case 4: goto Lab;
                case 5: goto Lab;
                case 6: goto La4;
                default: goto L9c;
            }
        L9c:
            s1.i r0 = new s1.i
            r1 = r0
            r1.<init>()
            throw r0
        La4:
            com.truecaller.contextcall.utils.ContextCallState r0 = com.truecaller.contextcall.utils.ContextCallState.DroppedCall
            r6 = r0
            goto Lc2
        Lab:
            com.truecaller.contextcall.utils.ContextCallState r0 = com.truecaller.contextcall.utils.ContextCallState.Active
            r6 = r0
            goto Lc2
        Lb2:
            r0 = 0
            r6 = r0
            goto Lc2
        Lb7:
            com.truecaller.contextcall.utils.ContextCallState r0 = com.truecaller.contextcall.utils.ContextCallState.Outgoing
            r6 = r0
            goto Lc2
        Lbe:
            com.truecaller.contextcall.utils.ContextCallState r0 = com.truecaller.contextcall.utils.ContextCallState.Initial
            r6 = r0
        Lc2:
            r0 = r6
            if (r0 == 0) goto Le5
            r0 = r5
            e.a.o.c r0 = r0.f39384x
            r10 = r0
            r0 = r7
            r1 = r5
            r0.f39423g = r1
            r0 = r7
            r1 = 1
            r0.f39421e = r1
            r0 = r10
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo14529C(r1, r2)
            r1 = r8
            if (r0 != r1) goto Lee
            r0 = r8
            return r0
        Le5:
            r0 = r5
            e.a.o.c r0 = r0.f39384x
            r0.mo14522J()
        Lee:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21532gk(com.truecaller.incallui.service.CallState, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x039b  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03ab  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x03f2  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009f  */
    /* renamed from: hk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21531hk(com.truecaller.incallui.service.CallState r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 1045
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p718a.p721b.C13590j.m21531hk(com.truecaller.incallui.service.CallState, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: od */
    public void mo9805od() {
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21561q();
        }
    }

    @Override // p193e.p194a.p717f.p718a.AbstractC13637d
    /* renamed from: q7 */
    public void mo21449q7(boolean z) {
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: sc */
    public void mo9804sc(String str) {
        AbstractC13589i abstractC13589i;
        if (str == null || (abstractC13589i = (AbstractC13589i) this.f57683a) == null) {
            return;
        }
        abstractC13589i.mo21595H9(str);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: zj */
    public void mo9803zj(AbstractC13754a abstractC13754a) {
        if (l.a(abstractC13754a, AbstractC13754a.C13755a.f39895a)) {
            m21538ak(C4013R.string.incallui_status_call_busy, C4013R.color.incallui_call_status_error_color);
        } else if (l.a(abstractC13754a, AbstractC13754a.C13757c.f39897a)) {
            m21538ak(C4013R.string.incallui_status_call_missed, C4013R.color.incallui_call_status_error_color);
        } else {
            m21538ak(C4013R.string.incallui_status_call_ended, C4013R.color.incallui_call_status_error_color);
        }
        AbstractC13589i abstractC13589i = (AbstractC13589i) this.f57683a;
        if (abstractC13589i != null) {
            abstractC13589i.mo21587Oc();
        }
        AbstractC13589i abstractC13589i2 = (AbstractC13589i) this.f57683a;
        if (abstractC13589i2 != null) {
            abstractC13589i2.mo21580Ti();
        }
    }
}
