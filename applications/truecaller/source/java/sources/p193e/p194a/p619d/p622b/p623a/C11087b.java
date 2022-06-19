package p193e.p194a.p619d.p622b.p623a;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.ConnectionState;
import com.truecaller.voip.VoipState;
import com.truecaller.voip.VoipStateReason;
import com.truecaller.voip.VoipUser;
import com.truecaller.voip.manager.rtm.RtmMsg;
import com.truecaller.voip.manager.rtm.RtmMsgAction;
import com.truecaller.voip.util.VoipEventType;
import io.agora.rtc.RtcEngine;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.C11730l;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import p193e.p194a.p619d.p637c0.AbstractC11438o;
import p193e.p194a.p619d.p637c0.AbstractC11463q1;
import p193e.p194a.p619d.p637c0.AbstractC11477t;
import p193e.p194a.p619d.p637c0.AbstractC11500u1;
import p193e.p194a.p619d.p637c0.C11508w0;
import p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import p193e.p194a.p619d.p663x.AbstractC12216l;
import p193e.p194a.p619d.p663x.C12195d;
import p193e.p194a.p619d.p663x.C12208h;
import p193e.p194a.p619d.p663x.C12221p;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.u1;
import q3.a.w2.h;
import q3.a.w2.r;
import s1.a.a.a.v0.f.d;
import s1.g;
import s1.s;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.b.a.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b.class */
public final class C11087b extends AbstractC20574a<AbstractC11108g> implements AbstractC11107f {

    /* renamed from: A */
    public final AbstractC11438o f32765A;

    /* renamed from: B */
    public final AbstractC19223c0 f32766B;

    /* renamed from: C */
    public final AbstractC11522e f32767C;

    /* renamed from: D */
    public final AbstractC12284n f32768D;

    /* renamed from: E */
    public final AbstractC11405f0 f32769E;

    /* renamed from: J */
    public final AbstractC11434m1 f32770J;

    /* renamed from: K */
    public final AbstractC11409g1 f32771K;

    /* renamed from: L */
    public final AbstractC11500u1 f32772L;

    /* renamed from: M */
    public final AbstractC11369a f32773M;

    /* renamed from: N */
    public final AbstractC11558b f32774N;

    /* renamed from: d */
    public AbstractC11106e f32775d;

    /* renamed from: e */
    public String f32776e;

    /* renamed from: f */
    public VoipUser f32777f;

    /* renamed from: g */
    public boolean f32778g;

    /* renamed from: h */
    public String f32779h;

    /* renamed from: k */
    public boolean f32782k;

    /* renamed from: l */
    public long f32783l;

    /* renamed from: n */
    public p1 f32785n;

    /* renamed from: o */
    public String f32786o;

    /* renamed from: t */
    public final f f32791t;

    /* renamed from: u */
    public final AbstractC12216l f32792u;

    /* renamed from: v */
    public final AbstractC12285o f32793v;

    /* renamed from: w */
    public final AbstractC11421j1 f32794w;

    /* renamed from: x */
    public final AbstractC11463q1 f32795x;

    /* renamed from: y */
    public final AbstractC19222c f32796y;

    /* renamed from: z */
    public final AbstractC11477t f32797z;

    /* renamed from: i */
    public C11730l f32780i = new C11730l(null, null, null, 0, 0, false, null, false, 255);

    /* renamed from: j */
    public C12221p f32781j = new C12221p(false, false, false, false, null, 31);

    /* renamed from: m */
    public final g f32784m = C25225a.m3978P1(new C11090d());

    /* renamed from: p */
    public final h<VoipUser> f32787p = d.d(-1);

    /* renamed from: q */
    public final h<C11730l> f32788q = d.d(-1);

    /* renamed from: r */
    public final h<Boolean> f32789r = d.d(-1);

    /* renamed from: s */
    public final r<C12221p> f32790s = new r<>(new C12221p(false, false, false, false, null, 31));

    /* renamed from: e.a.d.b.a.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/d/b/a/b$b.class */
    public static final class C11088b extends m implements a<s> {

        /* renamed from: c */
        public static final C11088b f32798c = new C11088b(0);

        /* renamed from: d */
        public static final C11088b f32799d = new C11088b(1);

        /* renamed from: b */
        public final /* synthetic */ int f32800b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11088b(int i) {
            super(0);
            this.f32800b = i;
        }

        public final Object invoke() {
            s sVar = s.a;
            int i = this.f32800b;
            if (i != 0 && i != 1) {
                throw null;
            }
            return sVar;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$exitDelayed$1", f = "LegacyVoipServicePresenter.kt", l = {882}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.a.b$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$c.class */
    public static final class C11089c extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32801e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11089c(s1.w.d dVar) {
            super(2, dVar);
            C11087b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25260i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11089c(dVar);
        }

        /* renamed from: k */
        public final Object m25259k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11089c(dVar).m25258s(s.a);
        }

        /* renamed from: s */
        public final Object m25258s(Object obj) {
            VoipEventType voipEventType;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32801e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                if (C11087b.this.m25281Pj().f35689c || C11087b.this.f32781j.f35689c) {
                    C11087b c11087b = C11087b.this;
                    d.I2(c11087b.f32790s, C12221p.m23434a(c11087b.m25281Pj(), false, false, false, false, null, 27));
                    C11087b c11087b2 = C11087b.this;
                    c11087b2.f32781j = C12221p.m23434a(c11087b2.m25281Pj(), false, false, false, false, null, 27);
                    C11087b.this.m25269bk();
                }
                C11087b c11087b3 = C11087b.this;
                String m25283Nj = c11087b3.m25283Nj();
                if (m25283Nj != null) {
                    boolean z = c11087b3.f32782k;
                    if (z) {
                        voipEventType = VoipEventType.INCOMING;
                    } else if (z) {
                        throw new s1.i();
                    } else {
                        voipEventType = VoipEventType.OUTGOING;
                    }
                    if (c11087b3.f32783l == 0) {
                        c11087b3.f32794w.mo24123F(new C11508w0(m25283Nj, voipEventType, -1L, null, 8));
                    } else {
                        long mo13821a = c11087b3.f32796y.mo13821a() - c11087b3.f32783l;
                        AbstractC11405f0 abstractC11405f0 = c11087b3.f32769E;
                        String str = c11087b3.f32776e;
                        if (str == null) {
                            l.l(RemoteMessageConst.Notification.CHANNEL_ID);
                            throw null;
                        }
                        abstractC11405f0.mo24713f(false, str, mo13821a, null);
                        c11087b3.f32794w.mo24123F(new C11508w0(m25283Nj, voipEventType, mo13821a, null, 8));
                    }
                }
                C12195d c12195d = (C12195d) C11087b.this.f32792u;
                c12195d.f35614b.f();
                RtcEngine m23470b = c12195d.m23470b();
                if (m23470b != null) {
                    m23470b.leaveChannel();
                }
                C11087b.this.f32768D.mo23326a();
                AbstractC11106e abstractC11106e = C11087b.this.f32775d;
                if (abstractC11106e != null) {
                    abstractC11106e.mo25218v();
                }
                this.f32801e = 1;
                if (d.D0(1000L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC11106e abstractC11106e2 = C11087b.this.f32775d;
            if (abstractC11106e2 != null) {
                abstractC11106e2.mo25219t();
            }
            AbstractC11108g abstractC11108g = (AbstractC11108g) C11087b.this.f57683a;
            if (abstractC11108g != null) {
                abstractC11108g.mo25201t();
            }
            C11087b.this.f32765A.mo24679t();
            return s.a;
        }
    }

    /* renamed from: e.a.d.b.a.b$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$d.class */
    public static final class C11090d extends m implements a<Boolean> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11090d() {
            super(0);
            C11087b.this = r4;
        }

        public Object invoke() {
            return Boolean.valueOf(C11087b.this.f32771K.getBoolean("qaForceEncryption", false));
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {522}, m = "handleUnsupportedMessage")
    /* renamed from: e.a.d.b.a.b$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$e.class */
    public static final class C11091e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32804d;

        /* renamed from: e */
        public int f32805e;

        /* renamed from: g */
        public Object f32807g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11091e(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25257s(Object obj) {
            this.f32804d = obj;
            this.f32805e |= Integer.MIN_VALUE;
            return C11087b.this.m25279Rj(this);
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {829, 830}, m = "initAudio")
    /* renamed from: e.a.d.b.a.b$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$f.class */
    public static final class C11092f extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32808d;

        /* renamed from: e */
        public int f32809e;

        /* renamed from: g */
        public Object f32811g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11092f(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25256s(Object obj) {
            this.f32808d = obj;
            this.f32809e |= Integer.MIN_VALUE;
            return C11087b.this.m25278Sj(this);
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {836}, m = "initAudioRouting")
    /* renamed from: e.a.d.b.a.b$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$g.class */
    public static final class C11093g extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32812d;

        /* renamed from: e */
        public int f32813e;

        /* renamed from: g */
        public Object f32815g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11093g(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25255s(Object obj) {
            this.f32812d = obj;
            this.f32813e |= Integer.MIN_VALUE;
            return C11087b.this.m25277Tj(this);
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$initSettingsAndJoinChannelAsync$1", f = "LegacyVoipServicePresenter.kt", l = {440, 443, 445, 450}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.a.b$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$h.class */
    public static final class C11094h extends i implements p<i0, s1.w.d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f32816e;

        /* renamed from: g */
        public final /* synthetic */ n0 f32818g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11094h(n0 n0Var, s1.w.d dVar) {
            super(2, dVar);
            C11087b.this = r5;
            this.f32818g = n0Var;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25254i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11094h(this.f32818g, dVar);
        }

        /* renamed from: k */
        public final Object m25253k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11094h(this.f32818g, dVar).m25252s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:36:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0116  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0156  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0175  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m25252s(java.lang.Object r6) {
            /*
                Method dump skipped, instructions count: 469
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.C11094h.m25252s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d.b.a.b$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$i.class */
    public static final class C11095i extends m implements s1.z.b.l<Throwable, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11095i() {
            super(1);
            C11087b.this = r4;
        }

        /* renamed from: d */
        public Object m25251d(Object obj) {
            Throwable th = (Throwable) obj;
            C11087b.this.f32785n = null;
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$inviteToCall$1", f = "LegacyVoipServicePresenter.kt", l = {612}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.a.b$j */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$j.class */
    public static final class C11096j extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32820e;

        /* renamed from: g */
        public final /* synthetic */ boolean f32822g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11096j(boolean z, s1.w.d dVar) {
            super(2, dVar);
            C11087b.this = r5;
            this.f32822g = z;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25250i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11096j(this.f32822g, dVar);
        }

        /* renamed from: k */
        public final Object m25249k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11096j(this.f32822g, dVar).m25248s(s.a);
        }

        /* renamed from: s */
        public final Object m25248s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32820e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                RtmMsg rtmMsg = new RtmMsg(this.f32822g ? RtmMsgAction.INVITE_SECURE : RtmMsgAction.INVITE, C11087b.m25288Ij(C11087b.this));
                C11087b c11087b = C11087b.this;
                AbstractC12285o abstractC12285o = c11087b.f32793v;
                VoipUser m25287Jj = C11087b.m25287Jj(c11087b);
                this.f32820e = 1;
                Object mo23320a = abstractC12285o.mo23320a(m25287Jj, rtmMsg, this);
                obj = mo23320a;
                if (mo23320a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            boolean booleanValue = ((Boolean) obj).booleanValue();
            if (booleanValue) {
                C11087b.this.m25264gk(VoipState.INVITED, null);
            } else if (!booleanValue) {
                C11087b.this.m25264gk(VoipState.FAILED, VoipStateReason.INVITE_FAILED);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {467}, m = "loginRtm")
    /* renamed from: e.a.d.b.a.b$k */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$k.class */
    public static final class C11097k extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32823d;

        /* renamed from: e */
        public int f32824e;

        /* renamed from: g */
        public Object f32826g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11097k(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25247s(Object obj) {
            this.f32823d = obj;
            this.f32824e |= Integer.MIN_VALUE;
            return C11087b.this.m25273Xj(this);
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$onHangUp$1", f = "LegacyVoipServicePresenter.kt", l = {267}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.a.b$l */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$l.class */
    public static final class C11098l extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32827e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11098l(s1.w.d dVar) {
            super(2, dVar);
            C11087b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25246i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11098l(dVar);
        }

        /* renamed from: k */
        public final Object m25245k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11098l(dVar).m25244s(s.a);
        }

        /* renamed from: s */
        public final Object m25244s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32827e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11087b c11087b = C11087b.this;
                if (c11087b.f32778g) {
                    AbstractC12285o abstractC12285o = c11087b.f32793v;
                    String str = C11087b.m25287Jj(c11087b).f16283a;
                    RtmMsg rtmMsg = new RtmMsg(RtmMsgAction.END, C11087b.m25288Ij(C11087b.this));
                    this.f32827e = 1;
                    if (abstractC12285o.mo23319b(str, rtmMsg, this) == aVar) {
                        return aVar;
                    }
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$reflectState$1", f = "LegacyVoipServicePresenter.kt", l = {819}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.a.b$m */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$m.class */
    public static final class C11099m extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32829e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11099m(s1.w.d dVar) {
            super(2, dVar);
            C11087b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25243i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11099m(dVar);
        }

        /* renamed from: k */
        public final Object m25242k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11099m(dVar).m25241s(s.a);
        }

        /* renamed from: s */
        public final Object m25241s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32829e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11087b c11087b = C11087b.this;
                AbstractC11438o abstractC11438o = c11087b.f32765A;
                C11730l c11730l = c11087b.f32780i;
                VoipState voipState = c11730l.f34449a;
                ConnectionState connectionState = c11730l.f34451c;
                C12221p m25281Pj = c11087b.m25281Pj();
                C12221p c12221p = C11087b.this.f32781j;
                this.f32829e = 1;
                if (abstractC11438o.mo24683e(voipState, connectionState, m25281Pj, c12221p, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {381}, m = "resolveCaller")
    /* renamed from: e.a.d.b.a.b$n */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$n.class */
    public static final class C11100n extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32831d;

        /* renamed from: e */
        public int f32832e;

        /* renamed from: g */
        public Object f32834g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11100n(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25240s(Object obj) {
            this.f32831d = obj;
            this.f32832e |= Integer.MIN_VALUE;
            return C11087b.this.m25268ck(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {391, 401}, m = "resolveUserFromNumber")
    /* renamed from: e.a.d.b.a.b$o */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$o.class */
    public static final class C11101o extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32835d;

        /* renamed from: e */
        public int f32836e;

        /* renamed from: g */
        public Object f32838g;

        /* renamed from: h */
        public Object f32839h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11101o(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25239s(Object obj) {
            this.f32835d = obj;
            this.f32836e |= Integer.MIN_VALUE;
            return C11087b.this.m25267dk(null, this);
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter$sendOnHoldSetting$1", f = "LegacyVoipServicePresenter.kt", l = {591}, m = "invokeSuspend")
    /* renamed from: e.a.d.b.a.b$p */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$p.class */
    public static final class C11102p extends i implements p<i0, s1.w.d<? super s>, Object> {

        /* renamed from: e */
        public int f32840e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11102p(s1.w.d dVar) {
            super(2, dVar);
            C11087b.this = r5;
        }

        /* renamed from: i */
        public final s1.w.d<s> m25238i(Object obj, s1.w.d<?> dVar) {
            l.e(dVar, "completion");
            return new C11102p(dVar);
        }

        /* renamed from: k */
        public final Object m25237k(Object obj, Object obj2) {
            s1.w.d dVar = (s1.w.d) obj2;
            l.e(dVar, "completion");
            return new C11102p(dVar).m25236s(s.a);
        }

        /* renamed from: s */
        public final Object m25236s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f32840e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                RtmMsgAction rtmMsgAction = C11087b.this.m25281Pj().f35689c ? RtmMsgAction.ON_HOLD : RtmMsgAction.RESUMED;
                C11087b c11087b = C11087b.this;
                AbstractC12285o abstractC12285o = c11087b.f32793v;
                VoipUser m25287Jj = C11087b.m25287Jj(c11087b);
                RtmMsg rtmMsg = new RtmMsg(rtmMsgAction, C11087b.m25288Ij(C11087b.this));
                this.f32840e = 1;
                if (abstractC12285o.mo23320a(m25287Jj, rtmMsg, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.legacy.incall.LegacyVoipServicePresenter", f = "LegacyVoipServicePresenter.kt", l = {363, 368, 374}, m = "validateAndInitParams")
    /* renamed from: e.a.d.b.a.b$q */
    /* loaded from: classes15-dex2jar.jar:e/a/d/b/a/b$q.class */
    public static final class C11103q extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32842d;

        /* renamed from: e */
        public int f32843e;

        /* renamed from: g */
        public Object f32845g;

        /* renamed from: h */
        public Object f32846h;

        /* renamed from: i */
        public Object f32847i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11103q(s1.w.d dVar) {
            super(dVar);
            C11087b.this = r4;
        }

        /* renamed from: s */
        public final Object m25235s(Object obj) {
            this.f32842d = obj;
            this.f32843e |= Integer.MIN_VALUE;
            return C11087b.this.m25261jk(null, null, null, null, this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C11087b(@Named("UI") f fVar, AbstractC12216l abstractC12216l, AbstractC12285o abstractC12285o, AbstractC11421j1 abstractC11421j1, AbstractC11463q1 abstractC11463q1, AbstractC19222c abstractC19222c, AbstractC11477t abstractC11477t, @Named("LegacyHapticFeedbackUtil") AbstractC11438o abstractC11438o, AbstractC19223c0 abstractC19223c0, @Named("LegacyAudioUtil") AbstractC11522e abstractC11522e, AbstractC12284n abstractC12284n, AbstractC11405f0 abstractC11405f0, AbstractC11434m1 abstractC11434m1, AbstractC11409g1 abstractC11409g1, AbstractC11500u1 abstractC11500u1, AbstractC11369a abstractC11369a, AbstractC11558b abstractC11558b) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC12216l, "voipManager");
        l.e(abstractC12285o, "rtmManager");
        l.e(abstractC11421j1, "support");
        l.e(abstractC11463q1, "voipUserResolver");
        l.e(abstractC19222c, "clock");
        l.e(abstractC11477t, "nativeCallStateModel");
        l.e(abstractC11438o, "hapticFeedbackUtil");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC11522e, "audioUtil");
        l.e(abstractC12284n, "rtmLoginManager");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        l.e(abstractC11434m1, "voipTelecomUtil");
        l.e(abstractC11409g1, "voipSettings");
        l.e(abstractC11500u1, "wakeUpPushManager");
        l.e(abstractC11369a, "targetDomainResolver");
        l.e(abstractC11558b, "voipAvailabilityUtil");
        this.f32791t = fVar;
        this.f32792u = abstractC12216l;
        this.f32793v = abstractC12285o;
        this.f32794w = abstractC11421j1;
        this.f32795x = abstractC11463q1;
        this.f32796y = abstractC19222c;
        this.f32797z = abstractC11477t;
        this.f32765A = abstractC11438o;
        this.f32766B = abstractC19223c0;
        this.f32767C = abstractC11522e;
        this.f32768D = abstractC12284n;
        this.f32769E = abstractC11405f0;
        this.f32770J = abstractC11434m1;
        this.f32771K = abstractC11409g1;
        this.f32772L = abstractC11500u1;
        this.f32773M = abstractC11369a;
        this.f32774N = abstractC11558b;
    }

    /* renamed from: Ij */
    public static final /* synthetic */ String m25288Ij(C11087b c11087b) {
        String str = c11087b.f32776e;
        if (str != null) {
            return str;
        }
        l.l(RemoteMessageConst.Notification.CHANNEL_ID);
        throw null;
    }

    /* renamed from: Jj */
    public static final /* synthetic */ VoipUser m25287Jj(C11087b c11087b) {
        VoipUser voipUser = c11087b.f32777f;
        if (voipUser != null) {
            return voipUser;
        }
        l.l("voipUser");
        throw null;
    }

    /* renamed from: Kj */
    public static final void m25286Kj(C11087b c11087b, ConnectionState connectionState) {
        C11730l c11730l = c11087b.f32780i;
        if (c11730l.f34451c == connectionState) {
            return;
        }
        c11087b.f32780i = C11730l.m24133a(c11730l, null, VoipStateReason.CONNECTION_STATE_CHANGED, connectionState, 0, 0, false, null, false, 249);
        if (connectionState.ordinal() == 2) {
            c11087b.m25284Mj();
        }
        c11087b.f32788q.offer(c11087b.f32780i);
        c11087b.m25269bk();
    }

    /* renamed from: Lj */
    public static final void m25285Lj(C11087b c11087b, boolean z) {
        C12221p c12221p = c11087b.f32781j;
        if (z == c12221p.f35689c) {
            return;
        }
        c11087b.f32781j = C12221p.m23434a(c12221p, false, false, z, false, null, 27);
        c11087b.f32765A.mo24684d();
        c11087b.m25269bk();
        c11087b.f32789r.offer(Boolean.valueOf(z));
    }

    /* renamed from: Mj */
    public final p1 m25284Mj() {
        return d.w2(this, (f) null, (j0) null, new C11089c(null), 3, (Object) null);
    }

    /* renamed from: Nj */
    public final String m25283Nj() {
        String str;
        if (this.f32778g) {
            VoipUser voipUser = this.f32777f;
            if (voipUser == null) {
                l.l("voipUser");
                throw null;
            }
            str = voipUser.f16284b;
        } else {
            str = this.f32779h;
        }
        return str;
    }

    /* renamed from: Oj */
    public final String m25282Oj() {
        AbstractC19223c0 abstractC19223c0 = this.f32766B;
        String mo13768b = abstractC19223c0.mo13768b(C4781R.string.voip_truecaller_audio_call, abstractC19223c0.mo13768b(C4781R.string.voip_text, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri…ring.voip_text)\n        )");
        return mo13768b;
    }

    /* renamed from: Pj */
    public final C12221p m25281Pj() {
        return (C12221p) this.f32790s.c();
    }

    /* renamed from: Qj */
    public final C11730l m25280Qj() {
        C11730l c11730l;
        if (!m25281Pj().f35689c) {
            C12221p c12221p = this.f32781j;
            if (!c12221p.f35689c) {
                if (c12221p.f35688b) {
                    C11730l c11730l2 = this.f32780i;
                    if (c11730l2.f34449a == VoipState.ONGOING) {
                        c11730l = C11730l.m24133a(c11730l2, null, null, null, C4781R.string.voip_status_call_muted, 0, false, "Peer has muted the microphone.", false, 55);
                        return c11730l;
                    }
                }
                c11730l = this.f32780i;
                return c11730l;
            }
        }
        c11730l = new C11730l(null, null, null, C4781R.string.voip_status_on_hold, C4781R.attr.voip_call_status_warning_color, true, "Call is on hold...", false, 135);
        return c11730l;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0114  */
    /* renamed from: Rj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25279Rj(s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25279Rj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
    /* renamed from: Sj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m25278Sj(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p619d.p622b.p623a.C11087b.C11092f
            if (r0 == 0) goto L27
            r0 = r6
            e.a.d.b.a.b$f r0 = (p193e.p194a.p619d.p622b.p623a.C11087b.C11092f) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f32809e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L27
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f32809e = r1
            r0 = r7
            r6 = r0
            goto L31
        L27:
            e.a.d.b.a.b$f r0 = new e.a.d.b.a.b$f
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L31:
            r0 = r6
            java.lang.Object r0 = r0.f32808d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f32809e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L72
            r0 = r8
            r1 = 1
            if (r0 == r1) goto L62
            r0 = r8
            r1 = 2
            if (r0 != r1) goto L57
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Laf
        L57:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L62:
            r0 = r6
            java.lang.Object r0 = r0.f32811g
            e.a.d.b.a.b r0 = (p193e.p194a.p619d.p622b.p623a.C11087b) r0
            r7 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L98
        L72:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.d.c0.x1.e r0 = r0.f32767C
            r7 = r0
            r0 = r6
            r1 = r5
            r0.f32811g = r1
            r0 = r6
            r1 = 1
            r0.f32809e = r1
            r0 = r7
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.mo24553e(r1, r2)
            r1 = r10
            if (r0 != r1) goto L96
            r0 = r10
            return r0
        L96:
            r0 = r5
            r7 = r0
        L98:
            r0 = r6
            r1 = 0
            r0.f32811g = r1
            r0 = r6
            r1 = 2
            r0.f32809e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.m25277Tj(r1)
            r1 = r10
            if (r0 != r1) goto Laf
            r0 = r10
            return r0
        Laf:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25278Sj(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m25277Tj(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            s1.s r0 = s1.s.a
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p619d.p622b.p623a.C11087b.C11093g
            if (r0 == 0) goto L2e
            r0 = r6
            e.a.d.b.a.b$g r0 = (p193e.p194a.p619d.p622b.p623a.C11087b.C11093g) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f32813e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f32813e = r1
            r0 = r8
            r6 = r0
            goto L38
        L2e:
            e.a.d.b.a.b$g r0 = new e.a.d.b.a.b$g
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L38:
            r0 = r6
            java.lang.Object r0 = r0.f32812d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r6
            int r0 = r0.f32813e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L6d
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L62
            r0 = r6
            java.lang.Object r0 = r0.f32815g
            e.a.d.b.a.b r0 = (p193e.p194a.p619d.p622b.p623a.C11087b) r0
            r6 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto La0
        L62:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6d:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.d.c0.m1 r0 = r0.f32770J
            r1 = 0
            r2 = 1
            r3 = 0
            boolean r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13508u0(r0, r1, r2, r3)
            if (r0 == 0) goto L80
            r0 = r7
            return r0
        L80:
            r0 = r5
            e.a.d.c0.x1.e r0 = r0.f32767C
            r8 = r0
            r0 = r6
            r1 = r5
            r0.f32815g = r1
            r0 = r6
            r1 = 1
            r0.f32813e = r1
            r0 = r8
            r1 = r6
            java.lang.Object r0 = r0.mo24549i(r1)
            r1 = r10
            if (r0 != r1) goto L9e
            r0 = r10
            return r0
        L9e:
            r0 = r5
            r6 = r0
        La0:
            r0 = r6
            e.a.d.c0.x1.e r0 = r0.f32767C
            r0.mo24552f()
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25277Tj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Uj */
    public final n0<Boolean> m25276Uj(n0<Boolean> n0Var) {
        return d.H(this, (f) null, (j0) null, new C11094h(n0Var, null), 3, (Object) null);
    }

    /* renamed from: Vj */
    public final void m25275Vj(boolean z) {
        u1 w2 = d.w2(this, (f) null, (j0) null, new C11096j(z, null), 3, (Object) null);
        w2.n0(false, true, new C11095i());
        this.f32785n = w2;
    }

    /* renamed from: Wj */
    public final boolean m25274Wj() {
        int ordinal = this.f32780i.f34449a.ordinal();
        return ordinal == 5 || ordinal == 7 || ordinal == 8 || ordinal == 11 || ordinal == 12;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a1  */
    /* renamed from: Xj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25273Xj(s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 241
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25273Xj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Yj */
    public void m25272Yj() {
        d.w2(this, (f) null, (j0) null, new C11098l(null), 3, (Object) null);
        m25264gk(VoipState.ENDED, this.f32780i.f34449a.ordinal() != 4 ? VoipStateReason.HUNG_UP : VoipStateReason.INVITE_CANCELLED);
    }

    /* renamed from: Zj */
    public void m25271Zj(boolean z) {
        d.I2(this.f32790s, C12221p.m23434a(m25281Pj(), false, z, false, false, null, 29));
        m25270ak();
        boolean z2 = m25281Pj().f35688b;
        AbstractC11108g abstractC11108g = (AbstractC11108g) this.f57683a;
        if (abstractC11108g != null) {
            if (z2) {
                abstractC11108g.mo25211g();
            } else {
                abstractC11108g.mo25212e();
            }
        }
    }

    /* renamed from: ak */
    public final void m25270ak() {
        AbstractC12216l abstractC12216l = this.f32792u;
        C12195d c12195d = (C12195d) abstractC12216l;
        if (!m25281Pj().f35689c) {
            RtcEngine m23470b = c12195d.m23470b();
            if (m23470b != null) {
                m23470b.enableAudio();
            }
        } else {
            RtcEngine m23470b2 = c12195d.m23470b();
            if (m23470b2 != null) {
                m23470b2.disableAudio();
            }
        }
        AbstractC12216l abstractC12216l2 = this.f32792u;
        boolean z = m25281Pj().f35688b;
        RtcEngine m23470b3 = ((C12195d) abstractC12216l2).m23470b();
        if (m23470b3 != null) {
            m23470b3.muteLocalAudioStream(z);
        }
    }

    /* renamed from: bk */
    public final void m25269bk() {
        String str;
        C11730l m25280Qj = m25280Qj();
        if (m25280Qj.m24129e() == C4781R.string.voip_empty) {
            str = m25282Oj();
        } else {
            str = this.f32766B.mo13768b(m25280Qj.m24129e(), new Object[0]);
            l.d(str, "resourceProvider.getString(state.viewStatusId)");
        }
        AbstractC11108g abstractC11108g = (AbstractC11108g) this.f57683a;
        if (abstractC11108g != null) {
            abstractC11108g.mo25217G(str);
        }
        AbstractC11106e abstractC11106e = this.f32775d;
        if (abstractC11106e != null) {
            abstractC11106e.mo25221b(m25280Qj.m24129e(), m25280Qj.m24132b(), m25280Qj.m24131c());
        }
        AbstractC11108g abstractC11108g2 = (AbstractC11108g) this.f57683a;
        if (abstractC11108g2 != null) {
            abstractC11108g2.mo25209l3(m25280Qj.m24130d(), this.f32783l);
        }
        AbstractC11106e abstractC11106e2 = this.f32775d;
        if (abstractC11106e2 != null) {
            abstractC11106e2.mo25220c(m25280Qj.m24130d(), this.f32783l);
        }
        AbstractC11106e abstractC11106e3 = this.f32775d;
        if (abstractC11106e3 != null) {
            abstractC11106e3.mo25222a(m25280Qj.f34455g);
        }
        d.w2(this, (f) null, (j0) null, new C11099m(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f32794w.mo24126C(false);
        AbstractC11106e abstractC11106e = this.f32775d;
        if (abstractC11106e != null) {
            abstractC11106e.mo25219t();
        }
        C12195d c12195d = (C12195d) this.f32792u;
        Objects.requireNonNull(c12195d);
        d.w2(c12195d, (f) null, (j0) null, new C12208h(c12195d, null), 3, (Object) null);
        AbstractC11108g abstractC11108g = (AbstractC11108g) this.f57683a;
        if (abstractC11108g != null) {
            abstractC11108g.mo25205p3();
        }
        this.f32767C.mo24551g();
        this.f32768D.mo23326a();
        super.mo9806c();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bc  */
    /* renamed from: ck */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25268ck(java.lang.String r6, com.truecaller.voip.VoipUser r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p619d.p622b.p623a.C11087b.C11100n
            if (r0 == 0) goto L2e
            r0 = r8
            e.a.d.b.a.b$n r0 = (p193e.p194a.p619d.p622b.p623a.C11087b.C11100n) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f32832e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2e
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f32832e = r1
            r0 = r9
            r8 = r0
            goto L38
        L2e:
            e.a.d.b.a.b$n r0 = new e.a.d.b.a.b$n
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L38:
            r0 = r8
            java.lang.Object r0 = r0.f32831d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f32832e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L72
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L67
            r0 = r8
            java.lang.Object r0 = r0.f32834g
            e.a.d.b.a.b r0 = (p193e.p194a.p619d.p622b.p623a.C11087b) r0
            r6 = r0
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r7 = r0
            goto L9e
        L67:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L72:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            if (r0 == 0) goto L7e
            goto La8
        L7e:
            r0 = r6
            if (r0 == 0) goto La6
            r0 = r8
            r1 = r5
            r0.f32834g = r1
            r0 = r8
            r1 = 1
            r0.f32832e = r1
            r0 = r5
            r1 = r6
            r2 = r8
            java.lang.Object r0 = r0.m25267dk(r1, r2)
            r7 = r0
            r0 = r7
            r1 = r11
            if (r0 != r1) goto L9c
            r0 = r11
            return r0
        L9c:
            r0 = r5
            r6 = r0
        L9e:
            r0 = r7
            com.truecaller.voip.VoipUser r0 = (com.truecaller.voip.VoipUser) r0
            r7 = r0
            goto Laa
        La6:
            r0 = 0
            r7 = r0
        La8:
            r0 = r5
            r6 = r0
        Laa:
            r0 = r7
            if (r0 == 0) goto Lbc
            r0 = r6
            r1 = r7
            r0.m25262ik(r1)
            r0 = r6
            r1 = 1
            r0.f32778g = r1
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            return r0
        Lbc:
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25268ck(java.lang.String, com.truecaller.voip.VoipUser, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0149  */
    /* renamed from: dk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25267dk(java.lang.String r6, s1.w.d<? super com.truecaller.voip.VoipUser> r7) {
        /*
            Method dump skipped, instructions count: 331
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25267dk(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: ek */
    public final p1 m25266ek() {
        return d.w2(this, (f) null, (j0) null, new C11102p(null), 3, (Object) null);
    }

    /* renamed from: fk */
    public final void m25265fk(boolean z) {
        if (z == m25281Pj().f35689c || m25274Wj()) {
            return;
        }
        d.I2(this.f32790s, C12221p.m23434a(m25281Pj(), false, false, z, false, null, 27));
        m25270ak();
        m25269bk();
        m25266ek();
        this.f32789r.offer(Boolean.valueOf(z));
    }

    /* renamed from: gk */
    public final void m25264gk(VoipState voipState, VoipStateReason voipStateReason) {
        C11730l c11730l;
        if (!(voipState == this.f32780i.f34449a ? false : !m25274Wj())) {
            return;
        }
        voipState.name();
        C11088b c11088b = C11088b.f32799d;
        C11088b c11088b2 = C11088b.f32798c;
        switch (voipState.ordinal()) {
            case 0:
                c11730l = this.f32780i;
                break;
            case 1:
                c11088b = new a(4, this);
                c11088b2 = new a(5, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_connecting, C4781R.attr.voip_call_status_warning_color, true, "Initializing, resolving the user...", false, 134);
                break;
            case 2:
                c11088b = new a(6, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_connecting, C4781R.attr.voip_call_status_warning_color, true, "Inviting user to voip call...", false, 134);
                break;
            case 3:
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_connecting, C4781R.attr.voip_call_status_warning_color, true, "Invite is received by peer. Waiting for ringing message...", false, 134);
                break;
            case 4:
                c11088b2 = new a(7, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_ringing, C4781R.attr.voip_call_status_ok_color, true, "Invite received. Ringing...", false, 134);
                break;
            case 5:
                c11088b2 = new a(8, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_no_answer, C4781R.attr.voip_call_status_error_color, true, "User did not answer. Exiting...", false, 134);
                break;
            case 6:
                c11730l = new C11730l(voipState, null, null, 0, 0, false, "Invite accepted.", false, 190);
                break;
            case 7:
                c11088b = new a(9, this);
                c11088b2 = new a(10, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_rejected, C4781R.attr.voip_call_status_error_color, true, "Invite rejected. Exiting...", false, 134);
                break;
            case 8:
                c11088b = new a(11, this);
                c11088b2 = new a(12, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_busy, C4781R.attr.voip_call_status_warning_color, true, "User is in another call. Exiting...", false, 134);
                break;
            case 9:
                c11088b = new a(0, this);
                c11730l = new C11730l(voipState, null, null, 0, C4781R.attr.voip_call_status_ok_color, true, "Channel joined. Say hello!", true, 14);
                break;
            case 10:
                c11088b2 = new a(1, this);
                c11730l = new C11730l(voipState, null, null, 0, 0, false, "Call blocked. Exiting...", false, 190);
                break;
            case 11:
                c11088b2 = new a(2, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_call_ended, C4781R.attr.voip_call_status_error_color, true, "Call ended. Exiting...", false, 134);
                break;
            case 12:
                c11088b2 = new a(3, this);
                c11730l = new C11730l(voipState, null, null, C4781R.string.voip_status_call_failed, C4781R.attr.voip_call_status_error_color, true, "Call failed. Exiting...", false, 134);
                break;
            default:
                throw new s1.i();
        }
        this.f32780i = c11730l;
        this.f32780i = C11730l.m24133a(c11730l, null, voipStateReason, null, 0, 0, false, null, false, 253);
        c11088b.invoke();
        m25269bk();
        c11088b2.invoke();
        this.f32788q.offer(this.f32780i);
    }

    /* renamed from: ik */
    public final void m25262ik(VoipUser voipUser) {
        this.f32777f = voipUser;
        this.f32787p.offer(voipUser);
        AbstractC11108g abstractC11108g = (AbstractC11108g) this.f57683a;
        if (abstractC11108g != null) {
            VoipUser voipUser2 = this.f32777f;
            if (voipUser2 == null) {
                l.l("voipUser");
                throw null;
            }
            abstractC11108g.mo25210h(voipUser2.f16285c);
            VoipUser voipUser3 = this.f32777f;
            if (voipUser3 != null) {
                abstractC11108g.mo25208m3(C19291g.m13624H(voipUser3));
            } else {
                l.l("voipUser");
                throw null;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0235  */
    /* renamed from: jk */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25261jk(java.lang.String r9, java.lang.String r10, com.truecaller.voip.VoipUser r11, java.lang.Boolean r12, s1.w.d<? super java.lang.Boolean> r13) {
        /*
            Method dump skipped, instructions count: 584
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p622b.p623a.C11087b.m25261jk(java.lang.String, java.lang.String, com.truecaller.voip.VoipUser, java.lang.Boolean, s1.w.d):java.lang.Object");
    }
}
