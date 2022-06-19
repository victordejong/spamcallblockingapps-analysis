package p193e.p194a.p619d.p637c0.p642z1;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.huawei.hms.support.hianalytics.HiAnalyticsConstant;
import com.razorpay.AnalyticsConstants;
import com.truecaller.voip.api.AgoraInfoDto;
import com.truecaller.voip.api.CallInfoDto;
import com.truecaller.voip.api.CallInfoPeerDto;
import com.truecaller.voip.api.CallInfoResponseDto;
import com.truecaller.voip.api.CreateCallRequestDto;
import com.truecaller.voip.api.CreateCallResponseDto;
import com.truecaller.voip.api.InviteToCallRequestDto;
import com.truecaller.voip.api.InviteToCallResponseDto;
import com.truecaller.voip.groupcall.call.CallDirection;
import com.truecaller.voip.p189db.VoipIdCache;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import com.truecaller.voip.util.VoipAnalyticsStateReason;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p627b0.C11161a;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11416j;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.C11395e0;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import p193e.p194a.p619d.p663x.p665r.AbstractC12261h;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.a1;
import q3.a.x2.i1;
import q3.a.x2.k1;
import s1.k;
import s1.s;
import s1.u.t;
import s1.u.u;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
import x3.a0;
/* renamed from: e.a.d.c0.z1.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k.class */
public final class C11600k implements i0, AbstractC11598i {

    /* renamed from: a */
    public final f f34014a;

    /* renamed from: b */
    public String f34015b;

    /* renamed from: c */
    public CallDirection f34016c;

    /* renamed from: d */
    public String f34017d;

    /* renamed from: e */
    public AbstractC12261h f34018e;

    /* renamed from: f */
    public final a1<Set<C11593e>> f34019f;

    /* renamed from: h */
    public C11588a f34021h;

    /* renamed from: i */
    public long f34022i;

    /* renamed from: k */
    public int f34024k;

    /* renamed from: n */
    public String f34027n;

    /* renamed from: o */
    public Set<Integer> f34028o;

    /* renamed from: p */
    public final AbstractC11556y0 f34029p;

    /* renamed from: q */
    public final AbstractC12284n f34030q;

    /* renamed from: r */
    public final AbstractC12285o f34031r;

    /* renamed from: s */
    public final AbstractC11394e f34032s;

    /* renamed from: t */
    public final AbstractC11744a f34033t;

    /* renamed from: u */
    public final AbstractC11796a f34034u;

    /* renamed from: v */
    public final AbstractC19222c f34035v;

    /* renamed from: w */
    public final AbstractC11558b f34036w;

    /* renamed from: x */
    public final AbstractC11405f0 f34037x;

    /* renamed from: g */
    public final a1<Boolean> f34020g = k1.a(Boolean.FALSE);

    /* renamed from: j */
    public final c f34023j = g.a(false, 1);

    /* renamed from: l */
    public final Map<Integer, AbstractC11634o> f34025l = new LinkedHashMap();

    /* renamed from: m */
    public final Map<String, C11639p> f34026m = new LinkedHashMap();

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {477, 479}, m = "deleteUserOnRemote")
    /* renamed from: e.a.d.c0.z1.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$a.class */
    public static final class C11601a extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34038d;

        /* renamed from: e */
        public int f34039e;

        /* renamed from: g */
        public Object f34041g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11601a(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24379s(Object obj) {
            this.f34038d = obj;
            this.f34039e |= Integer.MIN_VALUE;
            return C11600k.this.mo24396j(0, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$deleteUserOnRemote$2", f = "CallInfoRepository.kt", l = {479}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$b.class */
    public static final class C11602b extends i implements p<AbstractC11744a, d<? super a0<s>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34042e;

        /* renamed from: f */
        public int f34043f;

        /* renamed from: h */
        public final /* synthetic */ String f34045h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11602b(String str, d dVar) {
            super(2, dVar);
            C11600k.this = r5;
            this.f34045h = str;
        }

        /* renamed from: i */
        public final d<s> m24378i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11602b c11602b = new C11602b(this.f34045h, dVar);
            c11602b.f34042e = obj;
            return c11602b;
        }

        /* renamed from: k */
        public final Object m24377k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11602b c11602b = new C11602b(this.f34045h, dVar);
            c11602b.f34042e = obj;
            return c11602b.m24376s(s.a);
        }

        /* renamed from: s */
        public final Object m24376s(Object obj) {
            a aVar = a.a;
            int i = this.f34043f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11744a abstractC11744a = (AbstractC11744a) this.f34042e;
                String channelId = C11600k.this.getChannelId();
                String str = this.f34045h;
                this.f34043f = 1;
                Object m24071a = abstractC11744a.m24071a(channelId, str, this);
                obj = m24071a;
                if (m24071a == aVar) {
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

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {487, 488}, m = AnalyticsConstants.END)
    /* renamed from: e.a.d.c0.z1.k$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$c.class */
    public static final class C11603c extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34046d;

        /* renamed from: e */
        public int f34047e;

        /* renamed from: g */
        public Object f34049g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11603c(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24375s(Object obj) {
            this.f34046d = obj;
            this.f34047e |= Integer.MIN_VALUE;
            return C11600k.this.mo24391o(this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {755}, m = "fetchCallInfo")
    /* renamed from: e.a.d.c0.z1.k$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$d.class */
    public static final class C11604d extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34050d;

        /* renamed from: e */
        public int f34051e;

        /* renamed from: g */
        public Object f34053g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11604d(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24374s(Object obj) {
            this.f34050d = obj;
            this.f34051e |= Integer.MIN_VALUE;
            return C11600k.this.m24384v(this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$fetchCallInfo$callInfoResponse$1", f = "CallInfoRepository.kt", l = {755}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$e.class */
    public static final class C11605e extends i implements p<AbstractC11744a, d<? super a0<CallInfoResponseDto>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34054e;

        /* renamed from: f */
        public int f34055f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11605e(d dVar) {
            super(2, dVar);
            C11600k.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24373i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11605e c11605e = new C11605e(dVar);
            c11605e.f34054e = obj;
            return c11605e;
        }

        /* renamed from: k */
        public final Object m24372k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11605e c11605e = new C11605e(dVar);
            c11605e.f34054e = obj;
            return c11605e.m24371s(s.a);
        }

        /* renamed from: s */
        public final Object m24371s(Object obj) {
            a aVar = a.a;
            int i = this.f34055f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11744a abstractC11744a = (AbstractC11744a) this.f34054e;
                String channelId = C11600k.this.getChannelId();
                this.f34055f = 1;
                Object m24060l = abstractC11744a.m24060l(channelId, this);
                obj = m24060l;
                if (m24060l == aVar) {
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

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {428}, m = "getAgoraInfo")
    /* renamed from: e.a.d.c0.z1.k$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$f.class */
    public static final class C11606f extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34057d;

        /* renamed from: e */
        public int f34058e;

        /* renamed from: g */
        public Object f34060g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11606f(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24370s(Object obj) {
            this.f34057d = obj;
            this.f34058e |= Integer.MIN_VALUE;
            return C11600k.this.mo24390p(false, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {250, 253, 261, 266}, m = "initForIncoming")
    /* renamed from: e.a.d.c0.z1.k$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$g.class */
    public static final class C11607g extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34061d;

        /* renamed from: e */
        public int f34062e;

        /* renamed from: g */
        public Object f34064g;

        /* renamed from: h */
        public Object f34065h;

        /* renamed from: i */
        public boolean f34066i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11607g(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24369s(Object obj) {
            this.f34061d = obj;
            this.f34062e |= Integer.MIN_VALUE;
            return C11600k.this.m24383w(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$initForIncoming$callInfoResponseDto$1", f = "CallInfoRepository.kt", l = {250}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$h.class */
    public static final class C11608h extends i implements p<AbstractC11744a, d<? super CallInfoResponseDto>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34067e;

        /* renamed from: f */
        public int f34068f;

        /* renamed from: g */
        public final /* synthetic */ String f34069g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11608h(String str, d dVar) {
            super(2, dVar);
            this.f34069g = str;
        }

        /* renamed from: i */
        public final d<s> m24368i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11608h c11608h = new C11608h(this.f34069g, dVar);
            c11608h.f34067e = obj;
            return c11608h;
        }

        /* renamed from: k */
        public final Object m24367k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11608h c11608h = new C11608h(this.f34069g, dVar);
            c11608h.f34067e = obj;
            return c11608h.m24366s(s.a);
        }

        /* renamed from: s */
        public final Object m24366s(Object obj) {
            a aVar = a.a;
            int i = this.f34068f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11744a abstractC11744a = (AbstractC11744a) this.f34067e;
                String str = this.f34069g;
                this.f34068f = 1;
                Object m24060l = abstractC11744a.m24060l(str, this);
                obj = m24060l;
                if (m24060l == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((a0) obj).b;
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {283, 286, 294, 296, 306, 310}, m = "initForOutgoing")
    /* renamed from: e.a.d.c0.z1.k$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$i.class */
    public static final class C11609i extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34070d;

        /* renamed from: e */
        public int f34071e;

        /* renamed from: g */
        public Object f34073g;

        /* renamed from: h */
        public Object f34074h;

        /* renamed from: i */
        public boolean f34075i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11609i(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24365s(Object obj) {
            this.f34070d = obj;
            this.f34071e |= Integer.MIN_VALUE;
            return C11600k.this.m24382x(null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$initForOutgoing$createCallResponseDto$1", f = "CallInfoRepository.kt", l = {294}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$j */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$j.class */
    public static final class C11610j extends i implements p<AbstractC11744a, d<? super CreateCallResponseDto>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34076e;

        /* renamed from: f */
        public int f34077f;

        /* renamed from: g */
        public final /* synthetic */ CreateCallRequestDto f34078g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11610j(CreateCallRequestDto createCallRequestDto, d dVar) {
            super(2, dVar);
            this.f34078g = createCallRequestDto;
        }

        /* renamed from: i */
        public final d<s> m24364i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11610j c11610j = new C11610j(this.f34078g, dVar);
            c11610j.f34076e = obj;
            return c11610j;
        }

        /* renamed from: k */
        public final Object m24363k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11610j c11610j = new C11610j(this.f34078g, dVar);
            c11610j.f34076e = obj;
            return c11610j.m24362s(s.a);
        }

        /* renamed from: s */
        public final Object m24362s(Object obj) {
            a aVar = a.a;
            int i = this.f34077f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11744a abstractC11744a = (AbstractC11744a) this.f34076e;
                CreateCallRequestDto createCallRequestDto = this.f34078g;
                this.f34077f = 1;
                Object m24064h = abstractC11744a.m24064h(createCallRequestDto, this);
                obj = m24064h;
                if (m24064h == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((a0) obj).b;
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {493, 505, 512, 521, 524}, m = "initInternal")
    /* renamed from: e.a.d.c0.z1.k$k */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$k.class */
    public static final class C11611k extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34079d;

        /* renamed from: e */
        public int f34080e;

        /* renamed from: g */
        public Object f34082g;

        /* renamed from: h */
        public Object f34083h;

        /* renamed from: i */
        public Object f34084i;

        /* renamed from: j */
        public Object f34085j;

        /* renamed from: k */
        public Object f34086k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11611k(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24361s(Object obj) {
            this.f34079d = obj;
            this.f34080e |= Integer.MIN_VALUE;
            return C11600k.this.m24381y(null, null, null, this);
        }
    }

    /* renamed from: e.a.d.c0.z1.k$l */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$l.class */
    public static final class C11612l extends m implements s1.z.b.a<Long> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11612l() {
            super(0);
            C11600k.this = r4;
        }

        public Object invoke() {
            return Long.valueOf(C11600k.this.getCurrentTime());
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$initInternal$clockSkewAttribute$1", f = "CallInfoRepository.kt", l = {940}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$m */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$m.class */
    public static final class C11613m extends i implements p<i0, d<? super C12262i>, Object> {

        /* renamed from: e */
        public int f34088e;

        /* renamed from: e.a.d.c0.z1.k$m$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$m$a.class */
        public static final class C11614a implements q3.a.x2.f<C12262i> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f34090a;

            /* renamed from: e.a.d.c0.z1.k$m$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$m$a$a.class */
            public static final class C11615a implements q3.a.x2.g<Set<? extends C12262i>> {

                /* renamed from: a */
                public final /* synthetic */ q3.a.x2.g f34091a;

                @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$initInternal$clockSkewAttribute$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "CallInfoRepository.kt", l = {137}, m = "emit")
                /* renamed from: e.a.d.c0.z1.k$m$a$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$m$a$a$a.class */
                public static final class C11616a extends s1.w.k.a.c {

                    /* renamed from: d */
                    public /* synthetic */ Object f34092d;

                    /* renamed from: e */
                    public int f34093e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C11616a(d dVar) {
                        super(dVar);
                        C11615a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m24355s(Object obj) {
                        this.f34092d = obj;
                        this.f34093e |= Integer.MIN_VALUE;
                        return C11615a.this.m24356a(null, this);
                    }
                }

                public C11615a(q3.a.x2.g gVar, C11614a c11614a) {
                    this.f34091a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m24356a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.p642z1.C11600k.C11613m.C11614a.C11615a.C11616a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.d.c0.z1.k$m$a$a$a r0 = (p193e.p194a.p619d.p637c0.p642z1.C11600k.C11613m.C11614a.C11615a.C11616a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f34093e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f34093e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.d.c0.z1.k$m$a$a$a r0 = new e.a.d.c0.z1.k$m$a$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f34092d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f34093e
                        r10 = r0
                        r0 = r10
                        if (r0 == 0) goto L68
                        r0 = r10
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto Lc4
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r11
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f34091a
                        r11 = r0
                        r0 = r6
                        java.util.Set r0 = (java.util.Set) r0
                        java.util.Iterator r0 = r0.iterator()
                        r12 = r0
                    L7e:
                        r0 = r12
                        boolean r0 = r0.hasNext()
                        if (r0 == 0) goto La8
                        r0 = r12
                        java.lang.Object r0 = r0.next()
                        r6 = r0
                        r0 = r6
                        e.a.d.x.r.i r0 = (p193e.p194a.p619d.p663x.p665r.C12262i) r0
                        java.lang.String r0 = r0.f35822a
                        java.lang.String r1 = "ClockSkew"
                        boolean r0 = s1.z.c.l.a(r0, r1)
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        boolean r0 = r0.booleanValue()
                        if (r0 == 0) goto L7e
                        goto Laa
                    La8:
                        r0 = 0
                        r6 = r0
                    Laa:
                        r0 = r6
                        if (r0 == 0) goto Lc4
                        r0 = r7
                        r1 = 1
                        r0.f34093e = r1
                        r0 = r11
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r9
                        if (r0 != r1) goto Lc4
                        r0 = r9
                        return r0
                    Lc4:
                        r0 = r8
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.C11613m.C11614a.C11615a.m24356a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C11614a(q3.a.x2.f fVar) {
                this.f34090a = fVar;
            }

            /* renamed from: c */
            public Object m24357c(q3.a.x2.g gVar, d dVar) {
                Object c = this.f34090a.c(new C11615a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11613m(d dVar) {
            super(2, dVar);
            C11600k.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24360i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11613m(dVar);
        }

        /* renamed from: k */
        public final Object m24359k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11613m(dVar).m24358s(s.a);
        }

        /* renamed from: s */
        public final Object m24358s(Object obj) {
            a aVar = a.a;
            int i = this.f34088e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11614a c11614a = new C11614a(C11600k.this.mo24389q().mo23354a());
                this.f34088e = 1;
                Object M0 = s1.a.a.a.v0.f.d.M0(c11614a, this);
                obj = M0;
                if (M0 == aVar) {
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

    /* renamed from: e.a.d.c0.z1.k$n */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$n.class */
    public static final class C11617n extends m implements s1.z.b.a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11617n() {
            super(0);
            C11600k.this = r4;
        }

        public Object invoke() {
            C11588a c11588a = C11600k.this.f34021h;
            if (c11588a != null) {
                return c11588a.f33978e;
            }
            l.l("agoraInfo");
            throw null;
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {452}, m = "invite")
    /* renamed from: e.a.d.c0.z1.k$o */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$o.class */
    public static final class C11618o extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34096d;

        /* renamed from: e */
        public int f34097e;

        /* renamed from: g */
        public Object f34099g;

        /* renamed from: h */
        public Object f34100h;

        /* renamed from: i */
        public Object f34101i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11618o(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24354s(Object obj) {
            this.f34096d = obj;
            this.f34097e |= Integer.MIN_VALUE;
            return C11600k.this.mo24397i(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$invite$inviteToCallResponse$1", f = "CallInfoRepository.kt", l = {452}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$p */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$p.class */
    public static final class C11619p extends i implements p<AbstractC11744a, d<? super InviteToCallResponseDto>, Object> {

        /* renamed from: e */
        public int f34102e;

        /* renamed from: g */
        public final /* synthetic */ InviteToCallRequestDto f34104g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11619p(InviteToCallRequestDto inviteToCallRequestDto, d dVar) {
            super(2, dVar);
            C11600k.this = r5;
            this.f34104g = inviteToCallRequestDto;
        }

        /* renamed from: i */
        public final d<s> m24353i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11619p(this.f34104g, dVar);
        }

        /* renamed from: k */
        public final Object m24352k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11619p(this.f34104g, dVar).m24351s(s.a);
        }

        /* renamed from: s */
        public final Object m24351s(Object obj) {
            a aVar = a.a;
            int i = this.f34102e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11600k c11600k = C11600k.this;
                AbstractC11744a abstractC11744a = c11600k.f34033t;
                String channelId = c11600k.getChannelId();
                InviteToCallRequestDto inviteToCallRequestDto = this.f34104g;
                this.f34102e = 1;
                Object m24062j = abstractC11744a.m24062j(channelId, inviteToCallRequestDto, this);
                obj = m24062j;
                if (m24062j == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return ((a0) obj).b;
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {945, 323}, m = "registerPeerIds")
    /* renamed from: e.a.d.c0.z1.k$q */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$q.class */
    public static final class C11620q extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34105d;

        /* renamed from: e */
        public int f34106e;

        /* renamed from: g */
        public Object f34108g;

        /* renamed from: h */
        public Object f34109h;

        /* renamed from: i */
        public Object f34110i;

        /* renamed from: j */
        public Object f34111j;

        /* renamed from: k */
        public Object f34112k;

        /* renamed from: l */
        public Object f34113l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11620q(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24350s(Object obj) {
            this.f34105d = obj;
            this.f34106e |= Integer.MIN_VALUE;
            return C11600k.this.mo24403c(null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {692, 695}, m = "resolveNumberWithRetry")
    /* renamed from: e.a.d.c0.z1.k$r */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$r.class */
    public static final class C11621r extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34114d;

        /* renamed from: e */
        public int f34115e;

        /* renamed from: g */
        public Object f34117g;

        /* renamed from: h */
        public int f34118h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11621r(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24349s(Object obj) {
            this.f34114d = obj;
            this.f34115e |= Integer.MIN_VALUE;
            return C11600k.this.m24414C(null, 0, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$resolveNumberWithRetry$2", f = "CallInfoRepository.kt", l = {695}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$s */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$s.class */
    public static final class C11622s extends i implements s1.z.b.l<d<? super AbstractC11634o.C11636b>, Object> {

        /* renamed from: e */
        public int f34119e;

        /* renamed from: g */
        public final /* synthetic */ int f34121g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11622s(int i, d dVar) {
            super(1, dVar);
            C11600k.this = r5;
            this.f34121g = i;
        }

        /* renamed from: d */
        public final Object m24348d(Object obj) {
            d dVar = (d) obj;
            l.e(dVar, "completion");
            return new C11622s(this.f34121g, dVar).m24346s(s.a);
        }

        /* renamed from: l */
        public final d<s> m24347l(d<?> dVar) {
            l.e(dVar, "completion");
            return new C11622s(this.f34121g, dVar);
        }

        /* renamed from: s */
        public final Object m24346s(Object obj) {
            a aVar = a.a;
            int i = this.f34119e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11600k c11600k = C11600k.this;
                int i2 = this.f34121g;
                this.f34119e = 1;
                Object m24413D = c11600k.m24413D(i2, this);
                obj = m24413D;
                if (m24413D == aVar) {
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

    /* renamed from: e.a.d.c0.z1.k$t */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$t.class */
    public static final class C11623t extends m implements s1.z.b.a<AbstractC11634o> {

        /* renamed from: c */
        public final /* synthetic */ int f34123c;

        /* renamed from: d */
        public final /* synthetic */ d f34124d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11623t(int i, d dVar) {
            super(0);
            C11600k.this = r4;
            this.f34123c = i;
            this.f34124d = dVar;
        }

        public Object invoke() {
            AbstractC11634o abstractC11634o;
            synchronized (C11600k.this) {
                abstractC11634o = (AbstractC11634o) s1.u.i.H(C11600k.this.f34025l, Integer.valueOf(this.f34123c));
            }
            return abstractC11634o;
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {1068, 843}, m = "resolvePeerId")
    /* renamed from: e.a.d.c0.z1.k$u */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$u.class */
    public static final class C11624u extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34125d;

        /* renamed from: e */
        public int f34126e;

        /* renamed from: g */
        public Object f34128g;

        /* renamed from: h */
        public Object f34129h;

        /* renamed from: i */
        public int f34130i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11624u(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24345s(Object obj) {
            this.f34125d = obj;
            this.f34126e |= Integer.MIN_VALUE;
            return C11600k.this.m24413D(0, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {407}, m = "resolvePeerRtcUid")
    /* renamed from: e.a.d.c0.z1.k$v */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$v.class */
    public static final class C11625v extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34131d;

        /* renamed from: e */
        public int f34132e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11625v(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24344s(Object obj) {
            this.f34131d = obj;
            this.f34132e |= Integer.MIN_VALUE;
            return C11600k.this.mo24386t(0, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {404}, m = "resolvePeerVoipId")
    /* renamed from: e.a.d.c0.z1.k$w */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$w.class */
    public static final class C11626w extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34134d;

        /* renamed from: e */
        public int f34135e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11626w(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24343s(Object obj) {
            this.f34134d = obj;
            this.f34135e |= Integer.MIN_VALUE;
            return C11600k.this.mo24395k(0, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl", f = "CallInfoRepository.kt", l = {730, 739}, m = "runSearchActionWithRetry")
    /* renamed from: e.a.d.c0.z1.k$x */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$x.class */
    public static final class C11627x extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f34137d;

        /* renamed from: e */
        public int f34138e;

        /* renamed from: g */
        public Object f34140g;

        /* renamed from: h */
        public Object f34141h;

        /* renamed from: i */
        public int f34142i;

        /* renamed from: j */
        public int f34143j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11627x(d dVar) {
            super(dVar);
            C11600k.this = r4;
        }

        /* renamed from: s */
        public final Object m24342s(Object obj) {
            this.f34137d = obj;
            this.f34138e |= Integer.MIN_VALUE;
            return C11600k.this.m24412E(0, null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.callinfo.CallInfoRepositoryImpl$search$1", f = "CallInfoRepository.kt", l = {638}, m = "invokeSuspend")
    /* renamed from: e.a.d.c0.z1.k$y */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/z1/k$y.class */
    public static final class C11628y extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34144e;

        /* renamed from: f */
        public Object f34145f;

        /* renamed from: g */
        public Object f34146g;

        /* renamed from: h */
        public int f34147h;

        /* renamed from: i */
        public int f34148i;

        /* renamed from: k */
        public final /* synthetic */ Map f34150k;

        /* renamed from: l */
        public final /* synthetic */ Map f34151l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11628y(Map map, Map map2, d dVar) {
            super(2, dVar);
            C11600k.this = r5;
            this.f34150k = map;
            this.f34151l = map2;
        }

        /* renamed from: i */
        public final d<s> m24341i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11628y(this.f34150k, this.f34151l, dVar);
        }

        /* renamed from: k */
        public final Object m24340k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11628y(this.f34150k, this.f34151l, dVar).m24339s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00f0  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x013e  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x01a1  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x01b9  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x00df -> B:16:0x00e4). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24339s(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 622
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.C11628y.m24339s(java.lang.Object):java.lang.Object");
        }
    }

    public C11600k(f fVar, AbstractC11556y0 abstractC11556y0, AbstractC12284n abstractC12284n, AbstractC12285o abstractC12285o, AbstractC11394e abstractC11394e, AbstractC11744a abstractC11744a, AbstractC11796a abstractC11796a, AbstractC19222c abstractC19222c, AbstractC11558b abstractC11558b, AbstractC11405f0 abstractC11405f0) {
        l.e(fVar, "asyncContext");
        l.e(abstractC11556y0, "idProvider");
        l.e(abstractC12284n, "rtmLoginManager");
        l.e(abstractC12285o, "rtmManager");
        l.e(abstractC11394e, "callUserResolver");
        l.e(abstractC11744a, "restApi");
        l.e(abstractC11796a, "voipDao");
        l.e(abstractC19222c, "clock");
        l.e(abstractC11558b, "voipAvailabilityUtil");
        l.e(abstractC11405f0, "analyticsUtil");
        this.f34029p = abstractC11556y0;
        this.f34030q = abstractC12284n;
        this.f34031r = abstractC12285o;
        this.f34032s = abstractC11394e;
        this.f34033t = abstractC11744a;
        this.f34034u = abstractC11796a;
        this.f34035v = abstractC19222c;
        this.f34036w = abstractC11558b;
        this.f34037x = abstractC11405f0;
        this.f34014a = fVar.plus(s1.a.a.a.v0.f.d.j((p1) null, 1, (Object) null));
        u uVar = u.a;
        this.f34019f = k1.a(uVar);
        this.f34028o = uVar;
    }

    /* renamed from: A */
    public final void m24416A(VoipAnalyticsStateReason voipAnalyticsStateReason) {
        CallDirection mo24404b = mo24404b();
        l.e(mo24404b, "$this$toAnalyticsDirection");
        this.f34037x.mo24715d(new C11395e0(mo24404b == CallDirection.INCOMING ? VoipAnalyticsCallDirection.INCOMING : VoipAnalyticsCallDirection.OUTGOING, null, null, null, null, null, null, true, 126), VoipAnalyticsState.INIT_FAILED, voipAnalyticsStateReason);
    }

    /* renamed from: B */
    public final Map<AbstractC11634o, Integer> m24415B(Set<? extends AbstractC11634o> set) {
        Map<AbstractC11634o, Integer> V0;
        Object obj;
        k kVar;
        synchronized (this) {
            String str = "Registering peer id handles: " + set;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            for (AbstractC11634o abstractC11634o : set) {
                Iterator<T> it = this.f34025l.entrySet().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (abstractC11634o.mo24329a((AbstractC11634o) ((Map.Entry) obj).getValue())) {
                        break;
                    }
                }
                Map.Entry entry = (Map.Entry) obj;
                Integer num = null;
                if (entry != null) {
                    num = (Integer) entry.getKey();
                }
                if (num == null) {
                    String str2 = "Peer id handle: " + abstractC11634o + " is not registered, adding it";
                    int i = this.f34024k;
                    this.f34024k = i + 1;
                    this.f34025l.put(Integer.valueOf(i), abstractC11634o);
                    kVar = new k(abstractC11634o, Integer.valueOf(i));
                } else {
                    String str3 = "Peer id handle: " + abstractC11634o + " is already registered.";
                    kVar = new k(abstractC11634o, num);
                }
                arrayList.add(kVar);
            }
            V0 = s1.u.i.V0(arrayList);
        }
        return V0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0134  */
    /* renamed from: C */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24414C(p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o r7, int r8, s1.w.d<? super java.lang.String> r9) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24414C(e.a.d.c0.z1.o, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0177  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0198  */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24413D(int r6, s1.w.d<? super p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o.C11636b> r7) {
        /*
            Method dump skipped, instructions count: 460
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24413D(int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01af A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00fe A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x018c -> B:54:0x0192). Please submit an issue!!! */
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <T> java.lang.Object m24412E(int r6, s1.z.b.l<? super s1.w.d<? super T>, ? extends java.lang.Object> r7, s1.w.d<? super T> r8) {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24412E(int, s1.z.b.l, s1.w.d):java.lang.Object");
    }

    /* renamed from: F */
    public final Map<Integer, i1<AbstractC11416j>> m24411F(Map<Integer, ? extends AbstractC11634o> map) {
        if (map.isEmpty()) {
            return t.a;
        }
        String str = "Searching for peer id handles: " + map;
        LinkedHashMap linkedHashMap = new LinkedHashMap(C25225a.m3942Y1(map.size()));
        Iterator<T> it = map.entrySet().iterator();
        while (it.hasNext()) {
            linkedHashMap.put(((Map.Entry) it.next()).getKey(), k1.a(AbstractC11416j.C11419c.f33542a));
        }
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11628y(map, linkedHashMap, null), 3, (Object) null);
        return linkedHashMap;
    }

    /* renamed from: G */
    public final C11588a m24410G(AgoraInfoDto agoraInfoDto) {
        return new C11588a(agoraInfoDto.getRtcUid(), agoraInfoDto.getRtcToken(), agoraInfoDto.getRtcMode(), agoraInfoDto.getRtcSecret(), agoraInfoDto.getRtmToken(), agoraInfoDto.getRtmExpiryEpochSeconds());
    }

    /* renamed from: H */
    public final Map<String, C11639p> m24409H(CallInfoDto callInfoDto) {
        Set<CallInfoPeerDto> peers = callInfoDto.getPeers();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(peers, 10));
        for (CallInfoPeerDto callInfoPeerDto : peers) {
            arrayList.add(new k(callInfoPeerDto.getVoipId(), new C11639p(callInfoPeerDto.getVoipId(), callInfoDto.getVoipIdExpiryEpochSeconds(), C19286f.m13653z(String.valueOf(callInfoPeerDto.getPhone())), callInfoPeerDto.getRtcUid())));
        }
        return s1.u.i.V0(arrayList);
    }

    /* renamed from: I */
    public final void m24408I(CallInfoDto callInfoDto) {
        String str = "Updating call info cache with " + callInfoDto;
        synchronized (this) {
            this.f34026m.putAll(m24409H(callInfoDto));
            m24407J();
        }
        Set<CallInfoPeerDto> peers = callInfoDto.getPeers();
        ArrayList arrayList = new ArrayList(C25225a.m4004J(peers, 10));
        for (CallInfoPeerDto callInfoPeerDto : peers) {
            arrayList.add(new VoipIdCache(callInfoPeerDto.getVoipId(), C19286f.m13653z(String.valueOf(callInfoPeerDto.getPhone())), callInfoDto.getVoipIdExpiryEpochSeconds()));
        }
        C19291g.m13578W0(this.f34034u, new C11631m(arrayList));
        String str2 = "Voip ids are stored: " + arrayList;
    }

    /* renamed from: J */
    public final void m24407J() {
        AbstractC11634o value;
        synchronized (this) {
            Map<Integer, AbstractC11634o> map = this.f34025l;
            ArrayList arrayList = new ArrayList();
            for (Map.Entry<Integer, AbstractC11634o> entry : map.entrySet()) {
                int intValue = entry.getKey().intValue();
                AbstractC11634o.C11636b m24385u = m24385u(entry.getValue());
                k kVar = null;
                if (m24385u != null) {
                    kVar = null;
                    if (!l.a(m24385u, value)) {
                        kVar = new k(Integer.valueOf(intValue), m24385u);
                    }
                }
                if (kVar != null) {
                    arrayList.add(kVar);
                }
            }
            this.f34025l.putAll(s1.u.i.V0(arrayList));
        }
    }

    /* renamed from: K */
    public final void m24406K(Set<Integer> set, boolean z) {
        ArrayList arrayList;
        int intValue;
        i1<AbstractC11416j> value;
        boolean z2;
        synchronized (this) {
            String str = "Updating peers: " + set + ", is temporary: " + z;
            Iterable iterable = (Iterable) this.f34019f.getValue();
            int m3942Y1 = C25225a.m3942Y1(C25225a.m4004J(iterable, 10));
            int i = m3942Y1;
            if (m3942Y1 < 16) {
                i = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(i);
            for (Object obj : iterable) {
                linkedHashMap.put(Integer.valueOf(((C11593e) obj).f33990a), obj);
            }
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            Iterator it = linkedHashMap.entrySet().iterator();
            while (true) {
                boolean z3 = false;
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                int intValue2 = ((Number) entry.getKey()).intValue();
                if (m24380z((C11593e) entry.getValue()) || set.contains(Integer.valueOf(intValue2))) {
                    z3 = true;
                }
                if (z3) {
                    linkedHashMap2.put(entry.getKey(), entry.getValue());
                }
            }
            String str2 = "Peers to keep: " + linkedHashMap2;
            Set<Number> b0 = s1.u.i.b0(set, linkedHashMap2.keySet());
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(b0, 10));
            for (Number number : b0) {
                int intValue3 = number.intValue();
                arrayList2.add(new k(Integer.valueOf(intValue3), s1.u.i.H(this.f34025l, Integer.valueOf(intValue3))));
            }
            Map<Integer, ? extends AbstractC11634o> V0 = s1.u.i.V0(arrayList2);
            String str3 = "New peer id handles to add: " + V0;
            Map<Integer, i1<AbstractC11416j>> m24411F = m24411F(V0);
            arrayList = new ArrayList(m24411F.size());
            for (Map.Entry<Integer, i1<AbstractC11416j>> entry2 : m24411F.entrySet()) {
                intValue = entry2.getKey().intValue();
                value = entry2.getValue();
                synchronized (this) {
                    String str4 = this.f34027n;
                    if (str4 != null) {
                        AbstractC11634o abstractC11634o = (AbstractC11634o) s1.u.i.H(this.f34025l, Integer.valueOf(intValue));
                        AbstractC11634o abstractC11634o2 = abstractC11634o;
                        if (!(abstractC11634o instanceof AbstractC11634o.C11636b)) {
                            abstractC11634o2 = null;
                        }
                        AbstractC11634o.C11636b c11636b = (AbstractC11634o.C11636b) abstractC11634o2;
                        String str5 = null;
                        if (c11636b != null) {
                            str5 = c11636b.f34167a;
                        }
                        z2 = l.a(str5, str4);
                    }
                    arrayList.add(new C11593e(intValue, value, z2));
                }
            }
            Set set2 = (Set) this.f34019f.getValue();
            if (z) {
                this.f34019f.setValue(s1.u.i.q0(set2, arrayList));
                this.f34028o = s1.u.i.q0(this.f34028o, set);
            } else {
                this.f34019f.setValue(s1.u.i.q0(s1.u.i.d1(linkedHashMap2.values()), arrayList));
                this.f34028o = s1.u.i.b0(this.f34028o, set);
            }
            for (C11593e c11593e : s1.u.i.b0(set2, (Iterable) this.f34019f.getValue())) {
                String str6 = "Checking cache info for deleted peer " + c11593e;
                Object H = s1.u.i.H(this.f34025l, Integer.valueOf(c11593e.f33990a));
                Object obj2 = H;
                if (!(H instanceof AbstractC11634o.C11636b)) {
                    obj2 = null;
                }
                AbstractC11634o.C11636b c11636b2 = (AbstractC11634o.C11636b) obj2;
                if (c11636b2 != null) {
                    String str7 = "Deleting cached info for " + c11593e + " handle: " + c11636b2;
                    this.f34026m.remove(c11636b2.f34167a);
                    String str8 = "Marking handle " + c11636b2 + " as stale";
                    Map<Integer, AbstractC11634o> map = this.f34025l;
                    int i2 = c11593e.f33990a;
                    String str9 = c11636b2.f34167a;
                    String str10 = c11636b2.f34168b;
                    int i3 = c11636b2.f34169c;
                    l.e(str9, "voipId");
                    l.e(str10, "number");
                    map.put(Integer.valueOf(i2), new AbstractC11634o.C11636b(str9, str10, i3, true));
                }
            }
            return;
        }
        z2 = false;
        arrayList.add(new C11593e(intValue, value, z2));
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d
    /* renamed from: a */
    public i1 mo24405a() {
        return this.f34019f;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: b */
    public CallDirection mo24404b() {
        CallDirection callDirection = this.f34016c;
        if (callDirection != null) {
            return callDirection;
        }
        l.l(HiAnalyticsConstant.HaKey.BI_KEY_DIRECTION);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x025d  */
    /* JADX WARN: Type inference failed for: r0v132, types: [e.a.d.c0.z1.o] */
    /* JADX WARN: Type inference failed for: r0v30, types: [e.a.d.c0.z1.o] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:89:0x0226 -> B:90:0x0229). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:94:0x0244 -> B:95:0x024b). Please submit an issue!!! */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24403c(java.util.Set<? extends p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o> r6, s1.w.d<? super java.util.Map<p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o, java.lang.Integer>> r7) {
        /*
            Method dump skipped, instructions count: 641
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24403c(java.util.Set, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d
    /* renamed from: d */
    public Set<String> mo24402d() {
        Set<String> d1;
        synchronized (this) {
            Iterable<C11593e> iterable = (Iterable) this.f34019f.getValue();
            ArrayList arrayList = new ArrayList();
            for (C11593e c11593e : iterable) {
                AbstractC11634o abstractC11634o = (AbstractC11634o) s1.u.i.H(this.f34025l, Integer.valueOf(c11593e.f33990a));
                String str = abstractC11634o instanceof AbstractC11634o.C11635a ? ((AbstractC11634o.C11635a) abstractC11634o).f34166a : abstractC11634o instanceof AbstractC11634o.C11636b ? ((AbstractC11634o.C11636b) abstractC11634o).f34168b : null;
                if (str != null) {
                    arrayList.add(str);
                }
            }
            d1 = s1.u.i.d1(arrayList);
        }
        return d1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [e.a.d.c0.z1.o] */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: e */
    public Map<AbstractC11634o, Integer> mo24401e(Set<? extends AbstractC11634o> set) {
        synchronized (this) {
            l.e(set, "peerIdHandles");
            String str = "Requesting to add temp peers. Handles: " + set;
            if (set.isEmpty()) {
                return t.a;
            }
            ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
            Iterator it = set.iterator();
            while (it.hasNext()) {
                AbstractC11634o.C11636b c11636b = (AbstractC11634o) it.next();
                AbstractC11634o.C11636b m24385u = m24385u(c11636b);
                if (m24385u != null) {
                    c11636b = m24385u;
                }
                arrayList.add(c11636b);
            }
            Map<AbstractC11634o, Integer> m24415B = m24415B(s1.u.i.d1(arrayList));
            m24406K(s1.u.i.d1(m24415B.values()), true);
            return m24415B;
        }
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: f */
    public String mo24400f() {
        String str = this.f34017d;
        if (str != null) {
            return str;
        }
        l.l("ownVoipId");
        throw null;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: g */
    public q3.a.x2.f mo24399g() {
        return this.f34020g;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    public String getChannelId() {
        String str = this.f34015b;
        if (str != null) {
            return str;
        }
        l.l(RemoteMessageConst.Notification.CHANNEL_ID);
        throw null;
    }

    public f getCoroutineContext() {
        return this.f34014a;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    public long getCurrentTime() {
        return this.f34035v.mo13819c() + this.f34022i;
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: h */
    public void mo24398h(Set<Integer> set) {
        Object obj;
        synchronized (this) {
            l.e(set, "peerIds");
            String str = "Requesting to delete temp peers. Ids: " + set;
            if (set.isEmpty()) {
                return;
            }
            Set set2 = (Set) this.f34019f.getValue();
            ArrayList arrayList = new ArrayList();
            for (Number number : set) {
                int intValue = number.intValue();
                Iterator it = set2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        obj = null;
                        break;
                    }
                    obj = it.next();
                    if (((C11593e) obj).f33990a == intValue) {
                        break;
                    }
                }
                C11593e c11593e = (C11593e) obj;
                C11593e c11593e2 = null;
                if (c11593e != null) {
                    c11593e2 = null;
                    if (m24380z(c11593e)) {
                        c11593e2 = c11593e;
                    }
                }
                if (c11593e2 != null) {
                    arrayList.add(c11593e2);
                }
            }
            a1<Set<C11593e>> a1Var = this.f34019f;
            a1Var.setValue(s1.u.i.b0((Set) a1Var.getValue(), arrayList));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x01e3  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01f3  */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24397i(java.util.Set<java.lang.String> r7, java.util.Set<java.lang.Integer> r8, s1.w.d<? super java.util.Set<java.lang.String>> r9) {
        /*
            Method dump skipped, instructions count: 745
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24397i(java.util.Set, java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00b2  */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24396j(int r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24396j(int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c7  */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24395k(int r6, s1.w.d<? super java.lang.String> r7) {
        /*
            Method dump skipped, instructions count: 208
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24395k(int, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: l */
    public Integer mo24394l(AbstractC11634o abstractC11634o) {
        Object obj;
        synchronized (this) {
            l.e(abstractC11634o, "peerIdHandle");
            if (this.f34025l.isEmpty()) {
                return null;
            }
            Iterator<T> it = this.f34025l.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (abstractC11634o.mo24329a((AbstractC11634o) ((Map.Entry) next).getValue())) {
                    obj = next;
                    break;
                }
            }
            Map.Entry entry = (Map.Entry) obj;
            Integer num = null;
            if (entry != null) {
                num = (Integer) entry.getKey();
            }
            return num;
        }
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: m */
    public void mo24393m(Set<Integer> set) {
        l.e(set, "peerIds");
        m24406K(set, false);
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: n */
    public Object mo24392n(String str, CallDirection callDirection, d<? super C11161a> dVar) {
        return this.f34032s.mo24750c(str, callDirection, dVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c6  */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24391o(s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24391o(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0095  */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: p */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24390p(boolean r6, s1.w.d<? super p193e.p194a.p619d.p637c0.p642z1.C11588a> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.p642z1.C11600k.C11606f
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.d.c0.z1.k$f r0 = (p193e.p194a.p619d.p637c0.p642z1.C11600k.C11606f) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f34058e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f34058e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.d.c0.z1.k$f r0 = new e.a.d.c0.z1.k$f
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f34057d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f34058e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L69
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r7
            java.lang.Object r0 = r0.f34060g
            e.a.d.c0.z1.k r0 = (p193e.p194a.p619d.p637c0.p642z1.C11600k) r0
            r7 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L8a
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L69:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            if (r0 == 0) goto L88
            r0 = r7
            r1 = r5
            r0.f34060g = r1
            r0 = r7
            r1 = 1
            r0.f34058e = r1
            r0 = r5
            r1 = r7
            java.lang.Object r0 = r0.m24384v(r1)
            r1 = r10
            if (r0 != r1) goto L88
            r0 = r10
            return r0
        L88:
            r0 = r5
            r7 = r0
        L8a:
            r0 = r7
            e.a.d.c0.z1.a r0 = r0.f34021h
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L95
            r0 = r7
            return r0
        L95:
            java.lang.String r0 = "agoraInfo"
            s1.z.c.l.l(r0)
            r0 = 0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24390p(boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: q */
    public AbstractC12261h mo24389q() {
        AbstractC12261h abstractC12261h = this.f34018e;
        if (abstractC12261h != null) {
            return abstractC12261h;
        }
        l.l("rtmChannel");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v19, types: [e.a.d.c0.z1.o] */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: r */
    public Map<AbstractC11634o, Integer> mo24388r(Set<? extends AbstractC11634o> set) {
        l.e(set, "peerIdHandles");
        String str = "Registering requested peer ids: " + set;
        if (set.isEmpty()) {
            return t.a;
        }
        ArrayList arrayList = new ArrayList(C25225a.m4004J(set, 10));
        Iterator it = set.iterator();
        while (it.hasNext()) {
            AbstractC11634o.C11636b c11636b = (AbstractC11634o) it.next();
            AbstractC11634o.C11636b m24385u = m24385u(c11636b);
            if (m24385u != null) {
                c11636b = m24385u;
            }
            arrayList.add(c11636b);
        }
        return m24415B(s1.u.i.d1(arrayList));
    }

    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: s */
    public String mo24387s(int i) {
        synchronized (this) {
            if (this.f34025l.isEmpty()) {
                return null;
            }
            AbstractC11634o abstractC11634o = this.f34025l.get(Integer.valueOf(i));
            String str = null;
            if (abstractC11634o != null) {
                if (abstractC11634o instanceof AbstractC11634o.C11635a) {
                    str = ((AbstractC11634o.C11635a) abstractC11634o).f34166a;
                } else {
                    str = null;
                    if (abstractC11634o instanceof AbstractC11634o.C11636b) {
                        str = ((AbstractC11634o.C11636b) abstractC11634o).f34168b;
                    }
                }
            }
            return str;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0096  */
    @Override // p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo24386t(int r6, s1.w.d<? super java.lang.Integer> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.p642z1.C11600k.C11625v
            if (r0 == 0) goto L2a
            r0 = r7
            e.a.d.c0.z1.k$v r0 = (p193e.p194a.p619d.p637c0.p642z1.C11600k.C11625v) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f34132e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2a
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f34132e = r1
            r0 = r8
            r7 = r0
            goto L34
        L2a:
            e.a.d.c0.z1.k$v r0 = new e.a.d.c0.z1.k$v
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L34:
            r0 = r7
            java.lang.Object r0 = r0.f34131d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f34132e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L63
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L58
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r7 = r0
            goto L7e
        L58:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L63:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r1 = 1
            r0.f34132e = r1
            r0 = r5
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.m24413D(r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r10
            if (r0 != r1) goto L7e
            r0 = r10
            return r0
        L7e:
            r0 = r7
            e.a.d.c0.z1.o$b r0 = (p193e.p194a.p619d.p637c0.p642z1.AbstractC11634o.C11636b) r0
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L96
            java.lang.Integer r0 = new java.lang.Integer
            r1 = r0
            r2 = r7
            int r2 = r2.f34169c
            r1.<init>(r2)
            r7 = r0
            goto L98
        L96:
            r0 = 0
            r7 = r0
        L98:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.mo24386t(int, s1.w.d):java.lang.Object");
    }

    /* renamed from: u */
    public final AbstractC11634o.C11636b m24385u(AbstractC11634o abstractC11634o) {
        Object obj;
        synchronized (this) {
            if ((abstractC11634o instanceof AbstractC11634o.C11636b) && !((AbstractC11634o.C11636b) abstractC11634o).f34170d) {
                return (AbstractC11634o.C11636b) abstractC11634o;
            }
            Iterator<T> it = this.f34026m.values().iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (abstractC11634o.mo24328b((C11639p) next)) {
                    obj = next;
                    break;
                }
            }
            C11639p c11639p = (C11639p) obj;
            AbstractC11634o.C11636b c11636b = null;
            if (c11639p != null) {
                c11636b = new AbstractC11634o.C11636b(c11639p.f34173a, c11639p.f34175c, c11639p.f34176d, false);
            }
            return c11636b;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00a7  */
    /* renamed from: v */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24384v(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 266
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24384v(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x017c  */
    /* renamed from: w */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m24383w(java.lang.String r7, java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            Method dump skipped, instructions count: 419
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24383w(java.lang.String, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e9  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x024d  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02b5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02fe  */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m24382x(java.util.Set<java.lang.String> r7, s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 778
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24382x(java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0173  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x021f  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02d3  */
    /* renamed from: y */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24381y(java.lang.String r8, com.truecaller.voip.api.CallInfoDto r9, com.truecaller.voip.api.AgoraInfoDto r10, s1.w.d<? super java.lang.Boolean> r11) {
        /*
            Method dump skipped, instructions count: 755
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.p642z1.C11600k.m24381y(java.lang.String, com.truecaller.voip.api.CallInfoDto, com.truecaller.voip.api.AgoraInfoDto, s1.w.d):java.lang.Object");
    }

    /* renamed from: z */
    public final boolean m24380z(C11593e c11593e) {
        boolean contains;
        synchronized (this) {
            contains = this.f34028o.contains(Integer.valueOf(c11593e.f33990a));
        }
        return contains;
    }
}
