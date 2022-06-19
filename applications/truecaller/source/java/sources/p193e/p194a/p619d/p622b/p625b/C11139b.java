package p193e.p194a.p619d.p622b.p625b;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.manager.rtm.RtmMsg;
import com.truecaller.voip.manager.rtm.RtmMsgAction;
import com.truecaller.voip.util.VoipEventType;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1213s2.AbstractC20194a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import p193e.p194a.p619d.p637c0.AbstractC11438o;
import p193e.p194a.p619d.p637c0.AbstractC11463q1;
import p193e.p194a.p619d.p637c0.C11508w0;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.w2.h;
import s1.a.a.a.v0.f.d;
import s1.s;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.b.b.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/b.class */
public final class C11139b extends AbstractC20574a<AbstractC11150i> implements AbstractC11149h {

    /* renamed from: d */
    public String f32934d;

    /* renamed from: e */
    public VoipUser f32935e;

    /* renamed from: f */
    public boolean f32936f;

    /* renamed from: g */
    public boolean f32937g;

    /* renamed from: h */
    public String f32938h;

    /* renamed from: j */
    public AbstractC11148g f32940j;

    /* renamed from: m */
    public final AbstractC12285o f32943m;

    /* renamed from: n */
    public final AbstractC11463q1 f32944n;

    /* renamed from: o */
    public final AbstractC11421j1 f32945o;

    /* renamed from: p */
    public final AbstractC11522e f32946p;

    /* renamed from: q */
    public final AbstractC12284n f32947q;

    /* renamed from: r */
    public final AbstractC11438o f32948r;

    /* renamed from: s */
    public final AbstractC11405f0 f32949s;

    /* renamed from: t */
    public final AbstractC11434m1 f32950t;

    /* renamed from: u */
    public final AbstractC20194a f32951u;

    /* renamed from: i */
    public C11730l f32939i = new C11730l(null, null, null, 0, 0, false, null, false, 255);

    /* renamed from: k */
    public final h<VoipUser> f32941k = d.d(-1);

    /* renamed from: l */
    public final h<C11730l> f32942l = d.d(-1);

    /* renamed from: e.a.d.b.b.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/d/b/b/b$a.class */
    public static final class C11140a extends m implements a<s> {

        /* renamed from: b */
        public final /* synthetic */ int f32952b;

        /* renamed from: c */
        public final /* synthetic */ Object f32953c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11140a(int i, Object obj) {
            super(0);
            this.f32952b = i;
            this.f32953c = obj;
        }

        public final Object invoke() {
            s sVar = s.a;
            switch (this.f32952b) {
                case 0:
                    AbstractC11150i abstractC11150i = (AbstractC11150i) ((C11139b) this.f32953c).f57683a;
                    if (abstractC11150i != null) {
                        abstractC11150i.mo25109t();
                    }
                    return sVar;
                case 1:
                    C11139b.m25141Ij((C11139b) this.f32953c);
                    return sVar;
                case 2:
                    C11139b.m25140Jj((C11139b) this.f32953c, 0L, 1);
                    return sVar;
                case 3:
                    C11139b.m25141Ij((C11139b) this.f32953c);
                    return sVar;
                case 4:
                    C11139b.m25140Jj((C11139b) this.f32953c, 0L, 1);
                    return sVar;
                case 5:
                    C11139b c11139b = (C11139b) this.f32953c;
                    Objects.requireNonNull(c11139b);
                    d.w2(c11139b, (f) null, (j0) null, new C11158q(c11139b, null), 3, (Object) null);
                    return sVar;
                case 6:
                    ((C11139b) this.f32953c).f32948r.mo24686b();
                    ((C11139b) this.f32953c).f32946p.mo24557a();
                    AbstractC11150i abstractC11150i2 = (AbstractC11150i) ((C11139b) this.f32953c).f57683a;
                    if (abstractC11150i2 != null) {
                        abstractC11150i2.mo25112k();
                    }
                    C11139b c11139b2 = (C11139b) this.f32953c;
                    AbstractC11150i abstractC11150i3 = (AbstractC11150i) c11139b2.f57683a;
                    if (abstractC11150i3 != null) {
                        VoipUser voipUser = c11139b2.f32935e;
                        if (voipUser == null) {
                            l.l("voipUser");
                            throw null;
                        }
                        abstractC11150i3.mo25115h(voipUser.f16285c);
                        VoipUser voipUser2 = c11139b2.f32935e;
                        if (voipUser2 == null) {
                            l.l("voipUser");
                            throw null;
                        }
                        abstractC11150i3.mo25110m3(C19291g.m13624H(voipUser2));
                    }
                    return sVar;
                case 7:
                    C11139b c11139b3 = (C11139b) this.f32953c;
                    Objects.requireNonNull(c11139b3);
                    d.w2(c11139b3, (f) null, (j0) null, new C11159r(c11139b3, null), 3, (Object) null);
                    return sVar;
                case 8:
                    C11139b c11139b4 = (C11139b) this.f32953c;
                    AbstractC11150i abstractC11150i4 = (AbstractC11150i) c11139b4.f57683a;
                    if (abstractC11150i4 != null) {
                        VoipUser voipUser3 = c11139b4.f32935e;
                        if (voipUser3 == null) {
                            l.l("voipUser");
                            throw null;
                        }
                        String str = c11139b4.f32934d;
                        if (str == null) {
                            l.l(RemoteMessageConst.Notification.CHANNEL_ID);
                            throw null;
                        }
                        abstractC11150i4.mo25111l(voipUser3, str, c11139b4.f32936f);
                    }
                    AbstractC11150i abstractC11150i5 = (AbstractC11150i) ((C11139b) this.f32953c).f57683a;
                    if (abstractC11150i5 != null) {
                        abstractC11150i5.mo25109t();
                    }
                    return sVar;
                case 9:
                    C11139b.m25141Ij((C11139b) this.f32953c);
                    ((C11139b) this.f32953c).m25136Nj(RtmMsgAction.REJECT);
                    return sVar;
                case 10:
                    C11139b.m25140Jj((C11139b) this.f32953c, 0L, 1);
                    return sVar;
                case 11:
                    C11139b.m25141Ij((C11139b) this.f32953c);
                    ((C11139b) this.f32953c).m25136Nj(RtmMsgAction.END);
                    return sVar;
                case 12:
                    C11139b.m25140Jj((C11139b) this.f32953c, 0L, 1);
                    return sVar;
                case 13:
                    C11139b c11139b5 = (C11139b) this.f32953c;
                    if (c11139b5.f32937g) {
                        VoipUser voipUser4 = c11139b5.f32935e;
                        if (voipUser4 == null) {
                            l.l("voipUser");
                            throw null;
                        }
                        c11139b5.m25138Lj(voipUser4.f16284b);
                    }
                    return sVar;
                default:
                    throw null;
            }
        }
    }

    @e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter$sendMessageAndIgnoreResult$1", f = "LegacyIncomingVoipServicePresenter.kt", l = {411}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.b.b$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/b/b$b.class */
    public static final class C11141b extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32954e;

        /* renamed from: g */
        public final /* synthetic */ RtmMsgAction f32956g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11141b(RtmMsgAction rtmMsgAction, s1.w.d dVar) {
            super(2, dVar);
            C11139b.this = r5;
            this.f32956g = rtmMsgAction;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25132i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11141b(this.f32956g, dVar);
        }

        /* renamed from: k */
        public final Object m25131k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11141b(this.f32956g, dVar).m25130s(s.a);
        }

        /* renamed from: s */
        public final Object m25130s(Object obj) {
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32954e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                String m25139Kj = C11139b.this.m25139Kj();
                if (m25139Kj == null) {
                    return sVar;
                }
                C11139b c11139b = C11139b.this;
                AbstractC12285o abstractC12285o = c11139b.f32943m;
                RtmMsgAction rtmMsgAction = this.f32956g;
                String str = c11139b.f32934d;
                if (str == null) {
                    l.l(RemoteMessageConst.Notification.CHANNEL_ID);
                    throw null;
                }
                RtmMsg rtmMsg = new RtmMsg(rtmMsgAction, str);
                this.f32954e = 1;
                if (abstractC12285o.mo23319b(m25139Kj, rtmMsg, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incoming.LegacyIncomingVoipServicePresenter", f = "LegacyIncomingVoipServicePresenter.kt", l = {233}, m = "sendRingingMessage")
    /* renamed from: e.a.d.b.b.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/b/b$c.class */
    public static final class C11142c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32957d;

        /* renamed from: e */
        public int f32958e;

        /* renamed from: g */
        public Object f32960g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11142c(s1.w.d dVar) {
            super(dVar);
            C11139b.this = r4;
        }

        /* renamed from: s */
        public final Object m25129s(Object obj) {
            this.f32957d = obj;
            this.f32958e |= Integer.MIN_VALUE;
            return C11139b.this.m25135Oj(this);
        }
    }

    /* renamed from: e.a.d.b.b.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/b/b$d.class */
    public static final class C11143d extends m implements a<s> {

        /* renamed from: b */
        public static final C11143d f32961b = new C11143d();

        public C11143d() {
            super(0);
        }

        public Object invoke() {
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11139b(@Named("UI") f fVar, AbstractC12285o abstractC12285o, AbstractC11463q1 abstractC11463q1, AbstractC11421j1 abstractC11421j1, @Named("LegacyAudioUtil") AbstractC11522e abstractC11522e, AbstractC12284n abstractC12284n, @Named("LegacyHapticFeedbackUtil") AbstractC11438o abstractC11438o, AbstractC11405f0 abstractC11405f0, AbstractC11434m1 abstractC11434m1, AbstractC20194a abstractC20194a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC12285o, "rtmManager");
        l.e(abstractC11463q1, "voipUserResolver");
        l.e(abstractC11421j1, "support");
        l.e(abstractC11522e, "audioUtil");
        l.e(abstractC12284n, "rtmLoginManager");
        l.e(abstractC11438o, "hapticFeedbackUtil");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        l.e(abstractC11434m1, "voipTelecomUtil");
        l.e(abstractC20194a, "announceCallerId");
        this.f32943m = abstractC12285o;
        this.f32944n = abstractC11463q1;
        this.f32945o = abstractC11421j1;
        this.f32946p = abstractC11522e;
        this.f32947q = abstractC12284n;
        this.f32948r = abstractC11438o;
        this.f32949s = abstractC11405f0;
        this.f32950t = abstractC11434m1;
        this.f32951u = abstractC20194a;
    }

    /* renamed from: Ij */
    public static final void m25141Ij(C11139b c11139b) {
        if (!c11139b.f32937g) {
            return;
        }
        VoipUser voipUser = c11139b.f32935e;
        if (voipUser != null) {
            c11139b.m25137Mj(voipUser);
        } else {
            l.l("voipUser");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: Jj */
    public static p1 m25140Jj(C11139b c11139b, long j, int i) {
        ?? r11 = j;
        if ((i & 1) != 0) {
            r11 = 1000;
        }
        Objects.requireNonNull(c11139b);
        return d.w2(c11139b, (f) null, (j0) null, new C11151j(c11139b, r11, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    /* renamed from: Gh */
    public void mo25127Gh() {
        m25134Pj(VoipState.REJECTED, null);
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    /* renamed from: J0 */
    public h<VoipUser> mo25126J0() {
        return this.f32941k;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    /* renamed from: K1 */
    public h<C11730l> mo25125K1() {
        return this.f32942l;
    }

    /* renamed from: Kj */
    public final String m25139Kj() {
        String str;
        if (this.f32937g) {
            VoipUser voipUser = this.f32935e;
            if (voipUser == null) {
                l.l("voipUser");
                throw null;
            }
            str = voipUser.f16283a;
        } else {
            str = this.f32938h;
        }
        return str;
    }

    /* renamed from: Lj */
    public final void m25138Lj(String str) {
        this.f32945o.mo24123F(new C11508w0(str, VoipEventType.BLOCKED, 0L, null, 12));
        AbstractC11150i abstractC11150i = (AbstractC11150i) this.f57683a;
        if (abstractC11150i != null) {
            abstractC11150i.mo25113j();
        }
    }

    /* renamed from: Mj */
    public final void m25137Mj(VoipUser voipUser) {
        this.f32945o.mo24123F(new C11508w0(voipUser.f16284b, VoipEventType.MISSED, 0L, null, 12));
        AbstractC11150i abstractC11150i = (AbstractC11150i) this.f57683a;
        if (abstractC11150i != null) {
            abstractC11150i.mo25114i();
        }
    }

    /* renamed from: Nj */
    public final p1 m25136Nj(RtmMsgAction rtmMsgAction) {
        return d.w2(this, (f) null, (j0) null, new C11141b(rtmMsgAction, null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00c8  */
    /* renamed from: Oj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25135Oj(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p625b.C11139b.m25135Oj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34, types: [e.a.d.b.b.b$a] */
    /* JADX WARN: Type inference failed for: r0v39, types: [e.a.d.b.b.b$a] */
    /* JADX WARN: Type inference failed for: r0v50, types: [e.a.d.b.b.b$a] */
    /* JADX WARN: Type inference failed for: r0v56, types: [e.a.d.b.b.b$a] */
    /* JADX WARN: Type inference failed for: r0v61, types: [e.a.d.b.b.b$a] */
    /* JADX WARN: Type inference failed for: r0v66, types: [e.a.d.b.b.b$a] */
    /* renamed from: Pj */
    public final void m25134Pj(VoipState voipState, VoipStateReason voipStateReason) {
        C11730l c11730l;
        C11140a c11140a;
        int ordinal;
        VoipState voipState2 = this.f32939i.f34449a;
        if (!((voipState == voipState2 || (ordinal = voipState2.ordinal()) == 5 || ordinal == 7 || ordinal == 8 || ordinal == 11 || ordinal == 12) ? false : true)) {
            return;
        }
        voipState.name();
        C11143d c11143d = C11143d.f32961b;
        int ordinal2 = voipState.ordinal();
        if (ordinal2 == 1) {
            C11140a c11140a2 = new C11140a(5, this);
            c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_connecting, C4781R.attr.voip_call_status_warning_color, true, "Initializing and resolving user details...", false, 134);
            c11140a = c11140a2;
        } else if (ordinal2 == 4) {
            c11143d = new C11140a(6, this);
            C11140a c11140a3 = new C11140a(7, this);
            c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_incoming_call, C4781R.attr.voip_call_status_neutral_color, false, "Incoming call is received.", false, 134);
            c11140a = c11140a3;
        } else if (ordinal2 == 5) {
            c11143d = new C11140a(11, this);
            C11140a c11140a4 = new C11140a(12, this);
            C11730l c11730l2 = new C11730l(voipState, null, null, C4781R.string.voip_status_no_answer, C4781R.attr.voip_call_status_error_color, true, "No answer. Exiting...", false, 134);
            c11140a = c11140a4;
            c11730l = c11730l2;
        } else if (ordinal2 == 6) {
            C11140a c11140a5 = new C11140a(8, this);
            C11730l c11730l3 = new C11730l(voipState, null, null, C4781R.string.voip_status_connecting, C4781R.attr.voip_call_status_warning_color, true, "Incoming call is accepted. Opening VoIP screen...", false, 134);
            c11140a = c11140a5;
            c11730l = c11730l3;
        } else if (ordinal2 == 7) {
            c11143d = new C11140a(9, this);
            C11140a c11140a6 = new C11140a(10, this);
            C11730l c11730l4 = new C11730l(voipState, null, null, C4781R.string.voip_status_rejected, C4781R.attr.voip_call_status_error_color, true, "Incoming call is rejected. Exiting...", false, 134);
            c11140a = c11140a6;
            c11730l = c11730l4;
        } else if (ordinal2 == 10) {
            c11143d = new C11140a(13, this);
            C11140a c11140a7 = new C11140a(0, this);
            c11730l = new C11730l(voipState, null, null, 0, 0, false, "Call blocked. Exiting...", false, 190);
            c11140a = c11140a7;
        } else if (ordinal2 != 11) {
            c11143d = new C11140a(3, this);
            C11140a c11140a8 = new C11140a(4, this);
            c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_call_ended, C4781R.attr.voip_call_status_error_color, true, "Error. Exiting...", false, 134);
            c11140a = c11140a8;
        } else {
            c11143d = new C11140a(1, this);
            C11140a c11140a9 = new C11140a(2, this);
            C11730l c11730l5 = new C11730l(voipState, null, null, C4781R.string.voip_status_call_ended, C4781R.attr.voip_call_status_error_color, true, "Call cancelled. Exiting...", false, 134);
            c11140a = c11140a9;
            c11730l = c11730l5;
        }
        this.f32939i = c11730l;
        this.f32939i = C11730l.m24133a(c11730l, null, voipStateReason, null, 0, 0, false, null, false, 253);
        c11143d.invoke();
        AbstractC11148g abstractC11148g = this.f32940j;
        if (abstractC11148g != null) {
            C11730l c11730l6 = this.f32939i;
            abstractC11148g.mo25121Ne(c11730l6.f34452d, c11730l6.m24132b(), this.f32939i.m24131c());
        }
        AbstractC11148g abstractC11148g2 = this.f32940j;
        if (abstractC11148g2 != null) {
            abstractC11148g2.mo25120nc(this.f32939i.f34455g);
        }
        this.f32942l.offer(this.f32939i);
        c11140a.invoke();
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    /* renamed from: T9 */
    public void mo25124T9(AbstractC11148g abstractC11148g) {
        this.f32940j = abstractC11148g;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f32948r.mo24687a();
        this.f32951u.release();
        this.f32946p.mo24551g();
        if (this.f32939i.f34449a != VoipState.ACCEPTED) {
            this.f32947q.mo23326a();
            this.f32945o.mo24126C(this.f32939i.f34449a == VoipState.REJECTED);
        }
        super.mo9806c();
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    public C11730l getState() {
        return this.f32939i;
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    /* renamed from: ke */
    public void mo25123ke() {
        if (this.f32937g) {
            m25134Pj(VoipState.ACCEPTED, null);
        }
    }

    @Override // p193e.p194a.p619d.p622b.p625b.AbstractC11147f
    /* renamed from: m3 */
    public void mo25122m3() {
        this.f32948r.mo24687a();
        this.f32946p.mo24555c();
    }
}
