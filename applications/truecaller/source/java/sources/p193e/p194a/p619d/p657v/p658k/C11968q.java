package p193e.p194a.p619d.p657v.p658k;

import io.agora.rtc.Constants;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p619d.p628c.p629a.AbstractC11183f;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11438o;
import p193e.p194a.p619d.p637c0.AbstractC11501v;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p657v.C11839g;
import p193e.p194a.p619d.p657v.C11852i;
import p193e.p194a.p619d.p663x.p664q.AbstractC12236h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.q */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q.class */
public final class C11968q implements i0, AbstractC11966p {

    /* renamed from: a */
    public final i0 f35124a;

    /* renamed from: b */
    public final String f35125b;

    /* renamed from: c */
    public final AbstractC11598i f35126c;

    /* renamed from: d */
    public final C11852i f35127d;

    /* renamed from: e */
    public final AbstractC12261h f35128e;

    /* renamed from: f */
    public final C11839g f35129f;

    /* renamed from: g */
    public final AbstractC12236h f35130g;

    /* renamed from: h */
    public final AbstractC11522e f35131h;

    /* renamed from: i */
    public final AbstractC11438o f35132i;

    /* renamed from: j */
    public final AbstractC11501v f35133j;

    /* renamed from: k */
    public final AbstractC11913g f35134k;

    /* renamed from: l */
    public final AbstractC11421j1 f35135l;

    /* renamed from: m */
    public final AbstractC12004w0 f35136m;

    /* renamed from: n */
    public final AbstractC11893d0 f35137n;

    /* renamed from: o */
    public final AbstractC11923i0 f35138o;

    /* renamed from: p */
    public final AbstractC19222c f35139p;

    /* renamed from: q */
    public final AbstractC11183f f35140q;

    @e(c = "com.truecaller.voip.groupcall.action.EndGroupCallImpl$end$1", f = "EndGroupCall.kt", l = {58, Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED, 76, 80, 84, 92, 93}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.q$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q$a.class */
    public static final class C11969a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f35141e;

        /* renamed from: f */
        public Object f35142f;

        /* renamed from: g */
        public Object f35143g;

        /* renamed from: h */
        public int f35144h;

        /* renamed from: j */
        public final /* synthetic */ AbstractC11840h.AbstractC11842b f35146j;

        @e(c = "com.truecaller.voip.groupcall.action.EndGroupCallImpl$end$1$1$2", f = "EndGroupCall.kt", l = {85}, m = "invokeSuspend")
        /* renamed from: e.a.d.v.k.q$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q$a$a.class */
        public static final class C11970a extends i implements p<i0, d<? super Boolean>, Object> {

            /* renamed from: e */
            public int f35147e;

            /* renamed from: f */
            public final /* synthetic */ C11969a f35148f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11970a(d dVar, C11969a c11969a) {
                super(2, dVar);
                this.f35148f = c11969a;
            }

            /* renamed from: i */
            public final d<s> m23763i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C11970a(dVar, this.f35148f);
            }

            /* renamed from: k */
            public final Object m23762k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C11970a(dVar, this.f35148f).m23761s(s.a);
            }

            /* renamed from: s */
            public final Object m23761s(Object obj) {
                a aVar = a.a;
                int i = this.f35147e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C11968q c11968q = C11968q.this;
                    AbstractC12261h abstractC12261h = c11968q.f35128e;
                    Set<String> y0 = s1.u.i.y0(c11968q.f35125b);
                    this.f35147e = 1;
                    Object mo23348l = abstractC12261h.mo23348l(y0, this);
                    obj = mo23348l;
                    if (mo23348l == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                } else {
                    C25225a.m3932a3(obj);
                }
                return obj;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11969a(AbstractC11840h.AbstractC11842b abstractC11842b, d dVar) {
            super(2, dVar);
            C11968q.this = r5;
            this.f35146j = abstractC11842b;
        }

        /* renamed from: i */
        public final d<s> m23766i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11969a(this.f35146j, dVar);
        }

        /* renamed from: k */
        public final Object m23765k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11969a(this.f35146j, dVar).m23764s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:131:0x0413  */
        /* JADX WARN: Removed duplicated region for block: B:133:0x0415  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x045a  */
        /* JADX WARN: Removed duplicated region for block: B:150:0x045c  */
        /* JADX WARN: Removed duplicated region for block: B:158:0x0486  */
        /* JADX WARN: Removed duplicated region for block: B:159:0x0489  */
        /* JADX WARN: Removed duplicated region for block: B:162:0x0491  */
        /* JADX WARN: Removed duplicated region for block: B:202:0x0339 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:33:0x01a5  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x01ca  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x01cd A[Catch: all -> 0x052d, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x052d, blocks: (B:35:0x01a7, B:38:0x01cd, B:40:0x01e8, B:42:0x0212), top: B:200:0x01a7 }] */
        /* JADX WARN: Removed duplicated region for block: B:73:0x02de  */
        /* JADX WARN: Removed duplicated region for block: B:81:0x030b  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x034b  */
        /* JADX WARN: Type inference failed for: r0v263, types: [e.a.d.c0.d0] */
        /* JADX WARN: Type inference failed for: r0v276, types: [e.a.d.c0.d0] */
        /* JADX WARN: Type inference failed for: r0v289, types: [e.a.d.c0.d0] */
        /* JADX WARN: Type inference failed for: r0v302, types: [e.a.d.c0.d0] */
        /* JADX WARN: Type inference failed for: r0v314, types: [e.a.d.c0.d0] */
        /* JADX WARN: Type inference failed for: r0v91, types: [long] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23764s(java.lang.Object r10) {
            /*
                Method dump skipped, instructions count: 1343
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11968q.C11969a.m23764s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.EndGroupCallImpl", f = "EndGroupCall.kt", l = {131, 116}, m = "endPeers")
    /* renamed from: e.a.d.v.k.q$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/q$b.class */
    public static final class C11971b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35149d;

        /* renamed from: e */
        public int f35150e;

        /* renamed from: g */
        public Object f35152g;

        /* renamed from: h */
        public Object f35153h;

        /* renamed from: i */
        public Object f35154i;

        /* renamed from: j */
        public Object f35155j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11971b(d dVar) {
            super(dVar);
            C11968q.this = r4;
        }

        /* renamed from: s */
        public final Object m23760s(Object obj) {
            this.f35149d = obj;
            this.f35150e |= Integer.MIN_VALUE;
            return C11968q.this.m23768b(null, this);
        }
    }

    @Inject
    public C11968q(i0 i0Var, String str, AbstractC11598i abstractC11598i, C11852i c11852i, AbstractC12261h abstractC12261h, C11839g c11839g, AbstractC12236h abstractC12236h, AbstractC11522e abstractC11522e, AbstractC11438o abstractC11438o, AbstractC11501v abstractC11501v, AbstractC11913g abstractC11913g, AbstractC11421j1 abstractC11421j1, AbstractC12004w0 abstractC12004w0, AbstractC11893d0 abstractC11893d0, AbstractC11923i0 abstractC11923i0, AbstractC19222c abstractC19222c, AbstractC11183f abstractC11183f) {
        l.e(i0Var, "coroutineScope");
        l.e(str, "ownVoipId");
        l.e(abstractC11598i, "callInfoRepository");
        l.e(c11852i, "stateMachine");
        l.e(abstractC12261h, "rtmChannel");
        l.e(c11839g, "peers");
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC11522e, "audioUtil");
        l.e(abstractC11438o, "hapticFeedbackUtil");
        l.e(abstractC11501v, "proximityLockUtil");
        l.e(abstractC11913g, "collectPeerHistory");
        l.e(abstractC11421j1, "voipSupport");
        l.e(abstractC12004w0, "provideConnectedTime");
        l.e(abstractC11893d0, "logCallFinishedEvent");
        l.e(abstractC11923i0, "logCallStateChangedEvent");
        l.e(abstractC19222c, "clock");
        l.e(abstractC11183f, "logPriorityVoipCallEvent");
        this.f35124a = i0Var;
        this.f35125b = str;
        this.f35126c = abstractC11598i;
        this.f35127d = c11852i;
        this.f35128e = abstractC12261h;
        this.f35129f = c11839g;
        this.f35130g = abstractC12236h;
        this.f35131h = abstractC11522e;
        this.f35132i = abstractC11438o;
        this.f35133j = abstractC11501v;
        this.f35134k = abstractC11913g;
        this.f35135l = abstractC11421j1;
        this.f35136m = abstractC12004w0;
        this.f35137n = abstractC11893d0;
        this.f35138o = abstractC11923i0;
        this.f35139p = abstractC19222c;
        this.f35140q = abstractC11183f;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0127  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0189 A[SYNTHETIC] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m23768b(p193e.p194a.p619d.p657v.AbstractC11840h.AbstractC11842b r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11968q.m23768b(e.a.d.v.h$b, s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f35124a.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11966p
    /* renamed from: k */
    public p1 mo23767k(AbstractC11840h.AbstractC11842b abstractC11842b) {
        l.e(abstractC11842b, "endState");
        return s1.a.a.a.v0.f.d.w2(this, s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null), (j0) null, new C11969a(abstractC11842b, null), 2, (Object) null);
    }
}
