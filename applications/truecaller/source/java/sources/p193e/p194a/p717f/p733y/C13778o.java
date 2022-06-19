package p193e.p194a.p717f.p733y;

import android.os.PowerManager;
import android.telecom.Call;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.callbubbles.CallBubbleUIEvent;
import com.truecaller.callrecording.CallRecordingManager;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.incallui.C4013R;
import com.truecaller.incallui.service.CallState;
import com.truecaller.incallui.service.ServiceUIEvent;
import com.truecaller.incallui.utils.BlockAction;
import com.truecaller.incallui.utils.audio.AudioRoute;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1080o.AbstractC18765c;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p717f.p718a.C13642g;
import p193e.p194a.p717f.p731w.AbstractC13734c;
import p193e.p194a.p717f.p731w.AbstractC13738f;
import p193e.p194a.p717f.p733y.AbstractC13754a;
import p193e.p194a.p717f.p734z.AbstractC13810d;
import p193e.p194a.p717f.p734z.AbstractC13826k;
import p193e.p194a.p717f.p734z.AbstractC13830m;
import p193e.p194a.p717f.p734z.C13811d0;
import p193e.p194a.p717f.p734z.C13817f0;
import p193e.p194a.p717f.p734z.C13827k0;
import p193e.p194a.p717f.p734z.C13829l0;
import p193e.p194a.p717f.p734z.p735m0.AbstractC13831a;
import p193e.p194a.p717f.p734z.p736n0.C13843a;
import p193e.p194a.p749f3.AbstractC13907c;
import p193e.p194a.p749f3.C13919o;
import p193e.p194a.p749f3.C13922p;
import p193e.p194a.p749f3.C13923q;
import p193e.p194a.p749f3.C13926s;
import p193e.p194a.p947k.AbstractC16107d;
import p193e.p194a.p947k.AbstractC16111h;
import p193e.p194a.p982k0.AbstractC16315h;
import p193e.p194a.p997k3.AbstractC16452e;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.h;
import s1.a.a.a.v0.f.d;
import s1.f0.r;
import s1.f0.w;
import s1.g;
import s1.s;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.f.y.o */
/* loaded from: classes10-dex2jar.jar:e/a/f/y/o.class */
public final class C13778o extends AbstractC20574a<AbstractC13773k> implements AbstractC13771i {

    /* renamed from: A */
    public final AbstractC18765c f39940A;

    /* renamed from: B */
    public final CallRecordingManager f39941B;

    /* renamed from: C */
    public final C20592g f39942C;

    /* renamed from: D */
    public final f f39943D;

    /* renamed from: E */
    public final AbstractC16111h f39944E;

    /* renamed from: J */
    public final AbstractC13830m f39945J;

    /* renamed from: K */
    public final AbstractC16107d f39946K;

    /* renamed from: L */
    public final AbstractC8432l f39947L;

    /* renamed from: M */
    public final AbstractC16452e f39948M;

    /* renamed from: d */
    public Boolean f39949d;

    /* renamed from: g */
    public boolean f39952g;

    /* renamed from: i */
    public boolean f39954i;

    /* renamed from: j */
    public boolean f39955j;

    /* renamed from: o */
    public final AbstractC13792v f39960o;

    /* renamed from: p */
    public final AbstractC13762c f39961p;

    /* renamed from: q */
    public final AbstractC13826k f39962q;

    /* renamed from: r */
    public final AbstractC19223c0 f39963r;

    /* renamed from: s */
    public final AbstractC13831a f39964s;

    /* renamed from: t */
    public final AbstractC13907c f39965t;

    /* renamed from: u */
    public final C13817f0 f39966u;

    /* renamed from: v */
    public final AbstractC19222c f39967v;

    /* renamed from: w */
    public final AbstractC13734c f39968w;

    /* renamed from: x */
    public final C13829l0 f39969x;

    /* renamed from: y */
    public final AbstractC19230g f39970y;

    /* renamed from: z */
    public final AbstractC13810d f39971z;

    /* renamed from: e */
    public i0 f39950e = new C13788r(this);

    /* renamed from: f */
    public String f39951f = "";

    /* renamed from: h */
    public boolean f39953h = true;

    /* renamed from: k */
    public final h<ServiceUIEvent> f39956k = d.d(10);

    /* renamed from: l */
    public final h<CallBubbleUIEvent> f39957l = d.d(10);

    /* renamed from: m */
    public final g f39958m = C25225a.m3978P1(new e2(0, this));

    /* renamed from: n */
    public final g f39959n = C25225a.m3978P1(new e2(1, this));

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$launchAcs$1", f = "InCallUIServicePresenter.kt", l = {679, 690, 700}, m = "invokeSuspend")
    /* renamed from: e.a.f.y.o$a */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/o$a.class */
    public static final class C13779a extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public Object f39972e;

        /* renamed from: f */
        public Object f39973f;

        /* renamed from: g */
        public Object f39974g;

        /* renamed from: h */
        public int f39975h;

        /* renamed from: j */
        public final /* synthetic */ C13811d0 f39977j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13779a(C13811d0 c13811d0, s1.w.d dVar) {
            super(2, dVar);
            C13778o.this = r5;
            this.f39977j = c13811d0;
        }

        /* renamed from: i */
        public final s1.w.d<s> m21099i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C13779a(this.f39977j, dVar);
        }

        /* renamed from: k */
        public final Object m21098k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C13779a(this.f39977j, dVar).m21097s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:49:0x01cf  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x020e  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0210  */
        /* JADX WARN: Removed duplicated region for block: B:57:0x0222  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x02aa  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x02bb  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0312  */
        /* JADX WARN: Removed duplicated region for block: B:94:0x040c  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m21097s(java.lang.Object r9) {
            /*
                Method dump skipped, instructions count: 1093
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p733y.C13778o.C13779a.m21097s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$listenToCallerInfoChanges$1", f = "InCallUIServicePresenter.kt", l = {261}, m = "invokeSuspend")
    /* renamed from: e.a.f.y.o$b */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/o$b.class */
    public static final class C13780b extends i implements p<AbstractC13738f, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f39978e;

        /* renamed from: f */
        public int f39979f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13780b(s1.w.d dVar) {
            super(2, dVar);
            C13778o.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m21096i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            C13780b c13780b = new C13780b(dVar);
            c13780b.f39978e = obj;
            return c13780b;
        }

        /* renamed from: k */
        public final Object m21095k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C13780b c13780b = new C13780b(dVar);
            c13780b.f39978e = obj;
            return c13780b.m21094s(s.a);
        }

        /* renamed from: s */
        public final Object m21094s(Object obj) {
            Call mo21153r;
            a aVar = a.a;
            int i = this.f39979f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC13738f abstractC13738f = (AbstractC13738f) this.f39978e;
                if (abstractC13738f instanceof AbstractC13738f.C13740b) {
                    C13778o c13778o = C13778o.this;
                    AbstractC13738f.C13740b c13740b = (AbstractC13738f.C13740b) abstractC13738f;
                    C13642g c13642g = c13740b.f39794a;
                    AbstractC13773k abstractC13773k = (AbstractC13773k) c13778o.f57683a;
                    if (abstractC13773k != null && (mo21153r = abstractC13773k.mo21153r()) != null && mo21153r.getState() == 2) {
                        d.w2(c13778o, (f) null, (j0) null, new C13776m(c13778o, c13642g, mo21153r, null), 3, (Object) null);
                    }
                    C13778o.m21125Jj(C13778o.this, c13740b.f39794a.f39511a);
                    C13778o.m21127Ij(C13778o.this, c13740b.f39794a);
                    C13778o c13778o2 = C13778o.this;
                    C13642g c13642g2 = c13740b.f39794a;
                    this.f39979f = 1;
                    if (c13778o2.m21113Sj(c13642g2, this) == aVar) {
                        return aVar;
                    }
                } else {
                    C13778o.this.m21115Rj();
                    C13778o.m21127Ij(C13778o.this, null);
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$maybeListenToAudioStateChanges$1", f = "InCallUIServicePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.f.y.o$c */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/o$c.class */
    public static final class C13781c extends i implements p<C13843a, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f39981e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13781c(s1.w.d dVar) {
            super(2, dVar);
            C13778o.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m21093i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            C13781c c13781c = new C13781c(dVar);
            c13781c.f39981e = obj;
            return c13781c;
        }

        /* renamed from: k */
        public final Object m21092k(Object obj, Object obj2) {
            s sVar = s.a;
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            C13778o c13778o = C13778o.this;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            C13843a c13843a = (C13843a) obj;
            int ordinal = c13843a.f40169a.ordinal();
            if (ordinal == 0) {
                c13778o.m21120Nj();
            } else if (ordinal == 1 || ordinal == 2 || ordinal == 3) {
                c13778o.f39969x.m21040a();
            }
            c13778o.m21107Yj(c13843a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m21091s(Object obj) {
            C25225a.m3932a3(obj);
            C13843a c13843a = (C13843a) this.f39981e;
            int ordinal = c13843a.f40169a.ordinal();
            if (ordinal == 0) {
                C13778o.this.m21120Nj();
            } else if (ordinal == 1 || ordinal == 2 || ordinal == 3) {
                C13778o.this.f39969x.m21040a();
            }
            C13778o.this.m21107Yj(c13843a);
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter$onKeypadClicked$1", f = "InCallUIServicePresenter.kt", l = {599}, m = "invokeSuspend")
    /* renamed from: e.a.f.y.o$d */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/o$d.class */
    public static final class C13782d extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f39983e;

        /* renamed from: g */
        public final /* synthetic */ char f39985g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13782d(char c, s1.w.d dVar) {
            super(2, dVar);
            C13778o.this = r5;
            this.f39985g = c;
        }

        /* renamed from: i */
        public final s1.w.d<s> m21090i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C13782d(this.f39985g, dVar);
        }

        /* renamed from: k */
        public final Object m21089k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C13782d(this.f39985g, dVar).m21088s(s.a);
        }

        /* renamed from: s */
        public final Object m21088s(Object obj) {
            a aVar = a.a;
            int i = this.f39983e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C13778o.this.f39961p.mo21222H(this.f39985g);
                this.f39983e = 1;
                if (d.D0(50L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C13778o.this.f39961p.mo21218L();
            return s.a;
        }
    }

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter", f = "InCallUIServicePresenter.kt", l = {431}, m = "onStateOutgoing")
    /* renamed from: e.a.f.y.o$e */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/o$e.class */
    public static final class C13783e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39986d;

        /* renamed from: e */
        public int f39987e;

        /* renamed from: g */
        public Object f39989g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13783e(s1.w.d dVar) {
            super(dVar);
            C13778o.this = r4;
        }

        /* renamed from: s */
        public final Object m21087s(Object obj) {
            this.f39986d = obj;
            this.f39987e |= Integer.MIN_VALUE;
            return C13778o.this.m21117Pj(this);
        }
    }

    @e(c = "com.truecaller.incallui.service.InCallUIServicePresenter", f = "InCallUIServicePresenter.kt", l = {349}, m = "setNotificationCallerLabel")
    /* renamed from: e.a.f.y.o$f */
    /* loaded from: classes10-dex2jar.jar:e/a/f/y/o$f.class */
    public static final class C13784f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f39990d;

        /* renamed from: e */
        public int f39991e;

        /* renamed from: g */
        public Object f39993g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13784f(s1.w.d dVar) {
            super(dVar);
            C13778o.this = r4;
        }

        /* renamed from: s */
        public final Object m21086s(Object obj) {
            this.f39990d = obj;
            this.f39991e |= Integer.MIN_VALUE;
            return C13778o.this.m21113Sj(null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C13778o(AbstractC13792v abstractC13792v, AbstractC13762c abstractC13762c, AbstractC13826k abstractC13826k, AbstractC19223c0 abstractC19223c0, AbstractC13831a abstractC13831a, AbstractC13907c abstractC13907c, C13817f0 c13817f0, AbstractC19222c abstractC19222c, AbstractC13734c abstractC13734c, C13829l0 c13829l0, AbstractC19230g abstractC19230g, AbstractC13810d abstractC13810d, AbstractC18765c abstractC18765c, CallRecordingManager callRecordingManager, @Named("features_registry") C20592g c20592g, @Named("UI") f fVar, AbstractC16111h abstractC16111h, AbstractC13830m abstractC13830m, AbstractC16107d abstractC16107d, AbstractC8432l abstractC8432l, AbstractC16452e abstractC16452e) {
        super(fVar);
        l.e(abstractC13792v, "ongoingCallHelper");
        l.e(abstractC13762c, "callManager");
        l.e(abstractC13826k, "callerInfoProvider");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC13831a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(abstractC13907c, "callBubbles");
        l.e(c13817f0, "notificationUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC13734c, "callerInfoRepository");
        l.e(c13829l0, "proximitySensorHelper");
        l.e(abstractC19230g, "deviceInfoUtil");
        l.e(abstractC13810d, "acsHelper");
        l.e(abstractC18765c, "contextCall");
        l.e(callRecordingManager, "callRecordingManager");
        l.e(c20592g, "featuresRegistry");
        l.e(fVar, "uiContext");
        l.e(abstractC16111h, "videoCallerId");
        l.e(abstractC13830m, "callerLabelFactory");
        l.e(abstractC16107d, "businessVideoCallerIDAnalytics");
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC16452e, "historyEventFactory");
        this.f39960o = abstractC13792v;
        this.f39961p = abstractC13762c;
        this.f39962q = abstractC13826k;
        this.f39963r = abstractC19223c0;
        this.f39964s = abstractC13831a;
        this.f39965t = abstractC13907c;
        this.f39966u = c13817f0;
        this.f39967v = abstractC19222c;
        this.f39968w = abstractC13734c;
        this.f39969x = c13829l0;
        this.f39970y = abstractC19230g;
        this.f39971z = abstractC13810d;
        this.f39940A = abstractC18765c;
        this.f39941B = callRecordingManager;
        this.f39942C = c20592g;
        this.f39943D = fVar;
        this.f39944E = abstractC16111h;
        this.f39945J = abstractC13830m;
        this.f39946K = abstractC16107d;
        this.f39947L = abstractC8432l;
        this.f39948M = abstractC16452e;
    }

    /* renamed from: Ij */
    public static final void m21127Ij(C13778o c13778o, C13642g c13642g) {
        C13827k0 c13827k0;
        Objects.requireNonNull(c13778o);
        if (c13642g == null) {
            c13827k0 = new C13827k0(null, null, null, null, false, false, false, false, false, false, null, false, false, false, 16383);
        } else {
            c13827k0 = new C13827k0(c13642g.f39513c, c13642g.f39515e, null, C17891a1.C17902k.m15693B(c13642g.f39511a), c13642g.f39521k || c13642g.f39524n != null, false, false, C17891a1.C17902k.m15683E0(c13642g), C17891a1.C17902k.m15557y0(c13642g), c13642g.f39530t, null, c13642g.f39531u, c13642g.f39528r, false, 9316);
        }
        C17891a1.C17902k.m15647R0(c13827k0);
        AbstractC13773k abstractC13773k = (AbstractC13773k) c13778o.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21151t(c13827k0);
        }
        AbstractC13907c abstractC13907c = c13778o.f39965t;
        AvatarXConfig m15647R0 = C17891a1.C17902k.m15647R0(c13827k0);
        C13919o c13919o = (C13919o) abstractC13907c;
        Objects.requireNonNull(c13919o);
        l.e(m15647R0, DTBMetricsConfiguration.CONFIG_DIR);
        c13919o.m20964a().offer(new C13926s(m15647R0));
    }

    /* renamed from: Jj */
    public static final void m21125Jj(C13778o c13778o, String str) {
        boolean z = false;
        if (c13778o.f39961p.mo21204c()) {
            String mo13768b = c13778o.f39963r.mo13768b(C4013R.string.incallui_conference_call, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…incallui_conference_call)");
            AbstractC13773k abstractC13773k = (AbstractC13773k) c13778o.f57683a;
            if (abstractC13773k == null) {
                return;
            }
            abstractC13773k.mo21163h(mo13768b);
            return;
        }
        if (str.length() > 0) {
            z = true;
        }
        if (!z) {
            c13778o.m21115Rj();
            return;
        }
        AbstractC13773k abstractC13773k2 = (AbstractC13773k) c13778o.f57683a;
        if (abstractC13773k2 == null) {
            return;
        }
        abstractC13773k2.mo21163h(str);
    }

    /* renamed from: Vj */
    public static /* synthetic */ void m21110Vj(C13778o c13778o, boolean z, boolean z2, int i) {
        if ((i & 2) != 0) {
            z2 = true;
        }
        c13778o.m21111Uj(z, z2);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: A0 */
    public void mo21132A0() {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21156o();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: B0 */
    public void mo21131B0(Boolean bool) {
        this.f39949d = bool;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: E */
    public Boolean mo21130E() {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        return abstractC13773k != null ? Boolean.valueOf(abstractC13773k.mo21171E()) : null;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: H0 */
    public void mo21129H0() {
        this.f39953h = false;
        this.f39955j = false;
        m21109Wj();
        m21120Nj();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: H1 */
    public void mo21128H1() {
        if (r.p(this.f39951f)) {
            return;
        }
        this.f39951f = w.j0(this.f39951f, 1);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: J1 */
    public String mo21126J1() {
        return this.f39951f;
    }

    /* renamed from: Kj */
    public final AbstractC16315h m21124Kj() {
        Object value = this.f39941B.getState().getValue();
        AbstractC16315h abstractC16315h = (AbstractC16315h) value;
        if (!((Boolean) this.f39958m.getValue()).booleanValue()) {
            value = null;
        }
        return (AbstractC16315h) value;
    }

    /* renamed from: Lj */
    public final void m21123Lj() {
        C19291g.m13599P0(this, this.f39968w.mo21236a(), new C13780b(null));
    }

    /* renamed from: Mj */
    public final void m21122Mj() {
        AbstractC13773k abstractC13773k;
        if (((Boolean) this.f39959n.getValue()).booleanValue() || (abstractC13773k = (AbstractC13773k) this.f57683a) == null) {
            return;
        }
        abstractC13773k.mo21157n();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: N1 */
    public Boolean mo21121N1() {
        return this.f39949d;
    }

    /* renamed from: Nj */
    public final void m21120Nj() {
        PowerManager.WakeLock wakeLock;
        C13843a c13843a;
        CallState callState = (CallState) C19291g.m13593R0(this.f39961p.mo21199h());
        q3.a.w2.r<C13843a> mo21101s = mo21101s();
        AudioRoute audioRoute = (mo21101s == null || (c13843a = (C13843a) C19291g.m13593R0(mo21101s)) == null) ? null : c13843a.f40169a;
        if (callState == null || audioRoute == null) {
            return;
        }
        C13829l0 c13829l0 = this.f39969x;
        boolean z = this.f39953h;
        boolean z2 = this.f39954i;
        Objects.requireNonNull(c13829l0);
        l.e(callState, "callState");
        l.e(audioRoute, "audioRoute");
        if (callState == CallState.STATE_RINGING || audioRoute != AudioRoute.EARPIECE || z || z2 || (wakeLock = c13829l0.f40126a) == null || wakeLock.isHeld()) {
            return;
        }
        wakeLock.acquire(TimeUnit.HOURS.toMillis(5L));
    }

    /* renamed from: Oj */
    public final void m21119Oj() {
        q3.a.w2.r<C13843a> mo21101s;
        if (!this.f39952g && (mo21101s = mo21101s()) != null) {
            C19291g.m13599P0(this.f39950e, mo21101s, new C13781c(null));
            this.f39952g = true;
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: P1 */
    public void mo21118P1() {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21159l();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e2  */
    /* renamed from: Pj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21117Pj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p733y.C13778o.m21117Pj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Qj */
    public final void m21116Qj() {
        f coroutineContext = this.f39950e.getCoroutineContext();
        int i = p1.e0;
        p1 p1Var = coroutineContext.get(p1.a.a);
        if (p1Var != null && !p1Var.j()) {
            d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f39950e = new C13788r(this);
        this.f39952g = false;
    }

    /* renamed from: Rj */
    public final void m21115Rj() {
        s sVar;
        if (this.f39961p.mo21204c()) {
            String mo13768b = this.f39963r.mo13768b(C4013R.string.incallui_conference_call, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…incallui_conference_call)");
            AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
            if (abstractC13773k == null) {
                return;
            }
            abstractC13773k.mo21163h(mo13768b);
            return;
        }
        String mo21200g = this.f39961p.mo21200g();
        if (mo21200g != null) {
            AbstractC13773k abstractC13773k2 = (AbstractC13773k) this.f57683a;
            if (abstractC13773k2 != null) {
                abstractC13773k2.mo21163h(mo21200g);
                sVar = s.a;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                return;
            }
        }
        String mo13768b2 = this.f39963r.mo13768b(C4013R.string.incallui_unknown_caller, new Object[0]);
        l.d(mo13768b2, "resourceProvider.getStri….incallui_unknown_caller)");
        AbstractC13773k abstractC13773k3 = (AbstractC13773k) this.f57683a;
        if (abstractC13773k3 == null) {
            return;
        }
        abstractC13773k3.mo21163h(mo13768b2);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: S1 */
    public void mo21114S1(String str) {
        l.e(str, "deviceAddress");
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21150u(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    /* renamed from: Sj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m21113Sj(p193e.p194a.p717f.p718a.C13642g r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p733y.C13778o.m21113Sj(e.a.f.a.g, s1.w.d):java.lang.Object");
    }

    /* renamed from: Tj */
    public final boolean m21112Tj(BlockAction blockAction) {
        int ordinal;
        boolean z = true;
        if (blockAction == null || (ordinal = blockAction.ordinal()) == 0) {
            z = false;
        } else if (ordinal != 1) {
            throw new s1.i();
        }
        return z;
    }

    /* renamed from: Uj */
    public final void m21111Uj(boolean z, boolean z2) {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21161j(z);
        }
        this.f39956k.offer(ServiceUIEvent.INCOMING_NOTIFICATION_SHOWN);
        if (z2) {
            m21123Lj();
        }
        m21108Xj();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0079  */
    /* JADX WARN: Type inference failed for: r0v55, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* renamed from: Wj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m21109Wj() {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p717f.p733y.C13778o.m21109Wj():void");
    }

    /* renamed from: Xj */
    public final void m21108Xj() {
        C13843a c13843a;
        q3.a.w2.r<C13843a> mo21061s = this.f39960o.mo21061s();
        if (mo21061s == null || (c13843a = (C13843a) mo21061s.c()) == null) {
            return;
        }
        m21107Yj(c13843a);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.f.y.k] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC13773k abstractC13773k) {
        AbstractC13773k abstractC13773k2 = abstractC13773k;
        l.e(abstractC13773k2, "presenterView");
        this.f57683a = abstractC13773k2;
        this.f39961p.mo21191p("inCallUIServicePresenter", this);
        this.f39960o.mo21067b(this);
        abstractC13773k2.mo21145z(this.f39965t, new C13789s(this));
        this.f39964s.mo21039a();
        this.f39964s.mo21036d(this.f39956k);
        this.f39964s.mo21035e(this.f39957l);
        if (((Boolean) this.f39958m.getValue()).booleanValue()) {
            AbstractC13773k abstractC13773k3 = (AbstractC13773k) this.f57683a;
            if (abstractC13773k3 != null) {
                abstractC13773k3.mo21160k();
            }
            d.w2(this, (f) null, (j0) null, new C13786q(this, null), 3, (Object) null);
        }
    }

    /* renamed from: Yj */
    public final void m21107Yj(C13843a c13843a) {
        if (c13843a.f40172d) {
            AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
            if (abstractC13773k != null) {
                abstractC13773k.mo21164g();
            }
        } else {
            AbstractC13773k abstractC13773k2 = (AbstractC13773k) this.f57683a;
            if (abstractC13773k2 != null) {
                abstractC13773k2.mo21165e();
            }
        }
        if (c13843a.f40169a == AudioRoute.SPEAKER) {
            AbstractC13773k abstractC13773k3 = (AbstractC13773k) this.f57683a;
            if (abstractC13773k3 == null) {
                return;
            }
            abstractC13773k3.mo21167c();
            return;
        }
        AbstractC13773k abstractC13773k4 = (AbstractC13773k) this.f57683a;
        if (abstractC13773k4 == null) {
            return;
        }
        abstractC13773k4.mo21168b();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: Z7 */
    public void mo9807Z7(C13811d0 c13811d0) {
        l.e(c13811d0, "inCallUiAcsData");
        d.w2(this, (f) null, (j0) null, new C13779a(c13811d0, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21148w();
        }
        this.f39969x.m21040a();
        this.f39960o.mo21068a();
        this.f39961p.mo21205b("inCallUIServicePresenter", this);
        this.f39961p.release();
        C13919o c13919o = (C13919o) this.f39965t;
        if (c13919o.f40314b) {
            c13919o.m20964a().offer(new C13922p(c13919o));
        } else {
            d.R(c13919o.getCoroutineContext(), (CancellationException) null, 1, (Object) null);
        }
        d.f0(c13919o.m20964a(), (Throwable) null, 1, (Object) null);
        this.f39941B.mo17586l(false);
        super.mo9806c();
        this.f39956k.offer(ServiceUIEvent.NOTIFICATION_GONE);
        d.f0(this.f39956k, (Throwable) null, 1, (Object) null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: i0 */
    public void mo21106i0(boolean z) {
        if (z) {
            AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
            if (abstractC13773k == null) {
                return;
            }
            abstractC13773k.mo21166d();
            return;
        }
        AbstractC13773k abstractC13773k2 = (AbstractC13773k) this.f57683a;
        if (abstractC13773k2 == null) {
            return;
        }
        abstractC13773k2.mo21173C();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: n1 */
    public void mo21105n1() {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21162i();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: o0 */
    public void mo21104o0() {
        this.f39954i = true;
        this.f39969x.m21040a();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: o1 */
    public void mo21103o1() {
        this.f39953h = true;
        this.f39955j = true;
        m21109Wj();
        this.f39969x.m21040a();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: od */
    public void mo9805od() {
        this.f39951f = "";
        m21116Qj();
        this.f39969x.m21040a();
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        if (abstractC13773k != null) {
            abstractC13773k.mo21162i();
        }
        this.f39956k.offer(ServiceUIEvent.NOTIFICATION_GONE);
        this.f39955j = false;
        ((C13919o) this.f39965t).m20964a().offer(C13923q.f40325b);
        AbstractC13773k abstractC13773k2 = (AbstractC13773k) this.f57683a;
        if (abstractC13773k2 != null) {
            abstractC13773k2.mo21148w();
        }
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: p0 */
    public void mo21102p0() {
        this.f39954i = false;
        m21120Nj();
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: s */
    public q3.a.w2.r<C13843a> mo21101s() {
        AbstractC13773k abstractC13773k = (AbstractC13773k) this.f57683a;
        return abstractC13773k != null ? abstractC13773k.mo21152s() : null;
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: sc */
    public void mo9804sc(String str) {
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13772j
    /* renamed from: t1 */
    public void mo21100t1(char c) {
        this.f39951f = C22128a.m8619g2(this.f39951f, c);
        d.w2(this, (f) null, (j0) null, new C13782d(c, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p717f.p733y.AbstractC13761b
    /* renamed from: zj */
    public void mo9803zj(AbstractC13754a abstractC13754a) {
        String str;
        AbstractC13773k abstractC13773k;
        AbstractC13773k abstractC13773k2;
        AbstractC13773k abstractC13773k3 = (AbstractC13773k) this.f57683a;
        if (abstractC13773k3 != null) {
            abstractC13773k3.mo21162i();
        }
        if (abstractC13754a instanceof AbstractC13754a.C13760f) {
            String str2 = ((AbstractC13754a.C13760f) abstractC13754a).f39900a;
            if (str2 == null || (abstractC13773k2 = (AbstractC13773k) this.f57683a) == null) {
                return;
            }
            abstractC13773k2.mo21175A(str2);
        } else if (!(abstractC13754a instanceof AbstractC13754a.C13756b) || (str = ((AbstractC13754a.C13756b) abstractC13754a).f39896a) == null || (abstractC13773k = (AbstractC13773k) this.f57683a) == null) {
        } else {
            abstractC13773k.mo21175A(str);
        }
    }
}
