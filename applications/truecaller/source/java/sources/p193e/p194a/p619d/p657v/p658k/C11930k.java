package p193e.p194a.p619d.p657v.p658k;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p640x1.AbstractC11522e;
import p193e.p194a.p619d.p652q.AbstractC11776v;
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
/* renamed from: e.a.d.v.k.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k.class */
public final class C11930k implements i0, AbstractC11925j {

    /* renamed from: a */
    public final i0 f35029a;

    /* renamed from: b */
    public final String f35030b;

    /* renamed from: c */
    public final String f35031c;

    /* renamed from: d */
    public final C11839g f35032d;

    /* renamed from: e */
    public final C11852i f35033e;

    /* renamed from: f */
    public final AbstractC11966p f35034f;

    /* renamed from: g */
    public final AbstractC11522e f35035g;

    /* renamed from: h */
    public final AbstractC12236h f35036h;

    /* renamed from: i */
    public final AbstractC11967p0 f35037i;

    /* renamed from: j */
    public final AbstractC11977r0 f35038j;

    /* renamed from: k */
    public final AbstractC12019z0 f35039k;

    /* renamed from: l */
    public final AbstractC11877b1 f35040l;

    /* renamed from: m */
    public final AbstractC11861a0 f35041m;

    /* renamed from: n */
    public final AbstractC12261h f35042n;

    /* renamed from: o */
    public final AbstractC11776v f35043o;

    @e(c = "com.truecaller.voip.groupcall.action.ConnectGroupCallImpl$connect$1", f = "ConnectGroupCall.kt", l = {52}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k$a.class */
    public static final class C11931a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35044e;

        /* renamed from: g */
        public final /* synthetic */ Set f35046g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11931a(Set set, d dVar) {
            super(2, dVar);
            C11930k.this = r5;
            this.f35046g = set;
        }

        /* renamed from: i */
        public final d<s> m23815i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11931a(this.f35046g, dVar);
        }

        /* renamed from: k */
        public final Object m23814k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11931a(this.f35046g, dVar).m23813s(s.a);
        }

        /* renamed from: s */
        public final Object m23813s(Object obj) {
            a aVar = a.a;
            int i = this.f35044e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C11930k c11930k = C11930k.this;
                Set<String> set = this.f35046g;
                this.f35044e = 1;
                if (c11930k.m23819b(set, this) == aVar) {
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

    @e(c = "com.truecaller.voip.groupcall.action.ConnectGroupCallImpl", f = "ConnectGroupCall.kt", l = {159, 65, 67, 68, 73, 79, 82}, m = "goOngoingState")
    /* renamed from: e.a.d.v.k.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k$b.class */
    public static final class C11932b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35047d;

        /* renamed from: e */
        public int f35048e;

        /* renamed from: g */
        public Object f35050g;

        /* renamed from: h */
        public Object f35051h;

        /* renamed from: i */
        public Object f35052i;

        /* renamed from: j */
        public Object f35053j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11932b(d dVar) {
            super(dVar);
            C11930k.this = r4;
        }

        /* renamed from: s */
        public final Object m23812s(Object obj) {
            this.f35047d = obj;
            this.f35048e |= Integer.MIN_VALUE;
            return C11930k.this.m23819b(null, this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ConnectGroupCallImpl", f = "ConnectGroupCall.kt", l = {93, 94}, m = "initAudio")
    /* renamed from: e.a.d.v.k.k$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k$c.class */
    public static final class C11933c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35054d;

        /* renamed from: e */
        public int f35055e;

        /* renamed from: g */
        public Object f35057g;

        /* renamed from: h */
        public Object f35058h;

        /* renamed from: i */
        public Object f35059i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11933c(d dVar) {
            super(dVar);
            C11930k.this = r4;
        }

        /* renamed from: s */
        public final Object m23811s(Object obj) {
            this.f35054d = obj;
            this.f35055e |= Integer.MIN_VALUE;
            return C11930k.this.m23818c(this);
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ConnectGroupCallImpl", f = "ConnectGroupCall.kt", l = {102}, m = "joinRtc")
    /* renamed from: e.a.d.v.k.k$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/k$d.class */
    public static final class C11934d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f35060d;

        /* renamed from: e */
        public int f35061e;

        /* renamed from: g */
        public Object f35063g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11934d(d dVar) {
            super(dVar);
            C11930k.this = r4;
        }

        /* renamed from: s */
        public final Object m23810s(Object obj) {
            this.f35060d = obj;
            this.f35061e |= Integer.MIN_VALUE;
            return C11930k.this.m23817e(this);
        }
    }

    @Inject
    public C11930k(i0 i0Var, String str, String str2, C11839g c11839g, C11852i c11852i, AbstractC11966p abstractC11966p, AbstractC11522e abstractC11522e, AbstractC12236h abstractC12236h, AbstractC11967p0 abstractC11967p0, AbstractC11977r0 abstractC11977r0, AbstractC12019z0 abstractC12019z0, AbstractC11877b1 abstractC11877b1, AbstractC11861a0 abstractC11861a0, AbstractC12261h abstractC12261h, AbstractC11776v abstractC11776v) {
        l.e(i0Var, "coroutineScope");
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(str2, "ownVoipId");
        l.e(c11839g, "peers");
        l.e(c11852i, "stateMachine");
        l.e(abstractC11966p, AnalyticsConstants.END);
        l.e(abstractC11522e, "audioUtil");
        l.e(abstractC12236h, "rtcManager");
        l.e(abstractC11967p0, "notifyAudioRoute");
        l.e(abstractC11977r0, "playTones");
        l.e(abstractC12019z0, "toggleProximitySensor");
        l.e(abstractC11877b1, "updatePeers");
        l.e(abstractC11861a0, "inviteToGroupCall");
        l.e(abstractC12261h, "rtmChannel");
        l.e(abstractC11776v, "callConnectionManager");
        this.f35029a = i0Var;
        this.f35030b = str;
        this.f35031c = str2;
        this.f35032d = c11839g;
        this.f35033e = c11852i;
        this.f35034f = abstractC11966p;
        this.f35035g = abstractC11522e;
        this.f35036h = abstractC12236h;
        this.f35037i = abstractC11967p0;
        this.f35038j = abstractC11977r0;
        this.f35039k = abstractC12019z0;
        this.f35040l = abstractC11877b1;
        this.f35041m = abstractC11861a0;
        this.f35042n = abstractC12261h;
        this.f35043o = abstractC11776v;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x03ba  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0462  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0243 A[Catch: all -> 0x04ab, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x04ab, blocks: (B:32:0x021c, B:36:0x0243), top: B:159:0x021c }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x033f  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0349  */
    /* JADX WARN: Type inference failed for: r0v195, types: [e.a.d.c0.d0] */
    /* JADX WARN: Type inference failed for: r0v209, types: [e.a.d.c0.d0] */
    /* JADX WARN: Type inference failed for: r0v224, types: [e.a.d.c0.d0] */
    /* JADX WARN: Type inference failed for: r0v238, types: [e.a.d.c0.d0] */
    /* JADX WARN: Type inference failed for: r0v252, types: [e.a.d.c0.d0] */
    /* JADX WARN: Type inference failed for: r0v263, types: [e.a.d.c0.d0] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23819b(java.util.Set<java.lang.String> r8, s1.w.d<? super s1.s> r9) {
        /*
            Method dump skipped, instructions count: 1211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11930k.m23819b(java.util.Set, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00f0  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m23818c(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11930k.m23818c(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009d  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23817e(s1.w.d<? super java.lang.Boolean> r6) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11930k.m23817e(s1.w.d):java.lang.Object");
    }

    public f getCoroutineContext() {
        return this.f35029a.getCoroutineContext();
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11925j
    /* renamed from: j */
    public p1 mo23816j(Set<String> set) {
        l.e(set, "inviteNumbers");
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11931a(set, null), 3, (Object) null);
    }
}
