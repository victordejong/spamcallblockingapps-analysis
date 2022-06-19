package p193e.p194a.p619d.p663x.p665r;

import io.agora.rtm.ErrorInfo;
import io.agora.rtm.ResultCallback;
import io.agora.rtm.RtmClient;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11440o1;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j;
import q3.a.j0;
import q3.a.n;
import q3.a.o;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.x.r.c */
/* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c.class */
public final class C12242c implements AbstractC12284n, i0 {

    /* renamed from: a */
    public volatile boolean f35753a;

    /* renamed from: b */
    public final c f35754b = g.a(false, 1);

    /* renamed from: c */
    public String f35755c;

    /* renamed from: d */
    public final f f35756d;

    /* renamed from: e */
    public final AbstractC11556y0 f35757e;

    /* renamed from: f */
    public final AbstractC11440o1 f35758f;

    /* renamed from: g */
    public final AbstractC12285o f35759g;

    /* renamed from: h */
    public final AbstractC11405f0 f35760h;

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager", f = "RtmLoginManager.kt", l = {108}, m = "login")
    /* renamed from: e.a.d.x.r.c$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$a.class */
    public static final class C12243a extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35761d;

        /* renamed from: e */
        public int f35762e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12243a(d dVar) {
            super(dVar);
            C12242c.this = r4;
        }

        /* renamed from: s */
        public final Object m23383s(Object obj) {
            this.f35761d = obj;
            this.f35762e |= Integer.MIN_VALUE;
            return C12242c.this.mo23325b(0L, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$login$2", f = "RtmLoginManager.kt", l = {110, 112}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.r.c$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$b.class */
    public static final class C12244b extends i implements p<i0, d<? super AbstractC12283m>, Object> {

        /* renamed from: e */
        public int f35764e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12244b(d dVar) {
            super(2, dVar);
            C12242c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23382i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12244b(dVar);
        }

        /* renamed from: k */
        public final Object m23381k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12244b(dVar).m23380s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00ac  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23380s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 218
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.C12244b.m23380s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager", f = "RtmLoginManager.kt", l = {120}, m = "login")
    /* renamed from: e.a.d.x.r.c$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$c.class */
    public static final class C12245c extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35766d;

        /* renamed from: e */
        public int f35767e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12245c(d dVar) {
            super(dVar);
            C12242c.this = r4;
        }

        /* renamed from: s */
        public final Object m23379s(Object obj) {
            this.f35766d = obj;
            this.f35767e |= Integer.MIN_VALUE;
            return C12242c.this.mo23322e(0L, null, this);
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$login$4", f = "RtmLoginManager.kt", l = {122, 124}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.r.c$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$d.class */
    public static final class C12246d extends i implements p<i0, d<? super AbstractC12283m>, Object> {

        /* renamed from: e */
        public int f35769e;

        /* renamed from: g */
        public final /* synthetic */ a f35771g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12246d(a aVar, d dVar) {
            super(2, dVar);
            C12242c.this = r5;
            this.f35771g = aVar;
        }

        /* renamed from: i */
        public final d<s> m23378i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12246d(this.f35771g, dVar);
        }

        /* renamed from: k */
        public final Object m23377k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12246d(this.f35771g, dVar).m23376s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00b3  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23376s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 225
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.C12246d.m23376s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$login$6", f = "RtmLoginManager.kt", l = {170, 199, 209}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.r.c$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$e.class */
    public static final class C12247e extends i implements p<i0, d<? super AbstractC12283m>, Object> {

        /* renamed from: e */
        public int f35772e;

        /* renamed from: g */
        public final /* synthetic */ a f35774g;

        /* renamed from: h */
        public final /* synthetic */ boolean f35775h;

        @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$login$6$1", f = "RtmLoginManager.kt", l = {177, 185, 186}, m = "invokeSuspend")
        /* renamed from: e.a.d.x.r.c$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$e$a.class */
        public static final class C12248a extends i implements p<i0, d<? super k<? extends String, ? extends String>>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f35776e;

            /* renamed from: f */
            public int f35777f;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12248a(d dVar) {
                super(2, dVar);
                C12247e.this = r5;
            }

            /* renamed from: i */
            public final d<s> m23372i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12248a c12248a = new C12248a(dVar);
                c12248a.f35776e = obj;
                return c12248a;
            }

            /* renamed from: k */
            public final Object m23371k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C12248a c12248a = new C12248a(dVar);
                c12248a.f35776e = obj;
                return c12248a.m23370s(s.a);
            }

            /* JADX WARN: Removed duplicated region for block: B:28:0x0129  */
            /* JADX WARN: Removed duplicated region for block: B:32:0x0147  */
            /* renamed from: s */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object m23370s(java.lang.Object r9) {
                /*
                    Method dump skipped, instructions count: 331
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.C12247e.C12248a.m23370s(java.lang.Object):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12247e(a aVar, boolean z, d dVar) {
            super(2, dVar);
            C12242c.this = r5;
            this.f35774g = aVar;
            this.f35775h = z;
        }

        /* renamed from: i */
        public final d<s> m23375i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12247e(this.f35774g, this.f35775h, dVar);
        }

        /* renamed from: k */
        public final Object m23374k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12247e(this.f35774g, this.f35775h, dVar).m23373s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:33:0x00cf  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x013c  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23373s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 322
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.C12247e.m23373s(java.lang.Object):java.lang.Object");
        }
    }

    /* renamed from: e.a.d.x.r.c$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$f.class */
    public static final class C12249f implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ n f35779a;

        /* renamed from: b */
        public final /* synthetic */ C12242c f35780b;

        /* renamed from: c */
        public final /* synthetic */ RtmClient f35781c;

        /* renamed from: d */
        public final /* synthetic */ String f35782d;

        /* renamed from: e */
        public final /* synthetic */ String f35783e;

        /* renamed from: f */
        public final /* synthetic */ boolean f35784f;

        public C12249f(n nVar, C12242c c12242c, RtmClient rtmClient, String str, String str2, boolean z) {
            this.f35779a = nVar;
            this.f35780b = c12242c;
            this.f35781c = rtmClient;
            this.f35782d = str;
            this.f35783e = str2;
            this.f35784f = z;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Login failed. Error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.toString();
            this.f35780b.f35753a = false;
            C12242c c12242c = this.f35780b;
            c12242c.f35755c = null;
            c12242c.f35760h.mo24712g(this.f35783e, this.f35782d, errorInfo.getErrorCode(), this.f35784f);
            if (!this.f35779a.j()) {
                this.f35779a.c(Integer.valueOf(errorInfo.getErrorCode()));
            }
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            this.f35780b.f35753a = true;
            this.f35780b.f35755c = this.f35783e;
            if (!this.f35779a.j()) {
                this.f35779a.c(0);
            }
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager", f = "RtmLoginManager.kt", l = {292, 241}, m = "loginToRtmClient")
    /* renamed from: e.a.d.x.r.c$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$g.class */
    public static final class C12250g extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35785d;

        /* renamed from: e */
        public int f35786e;

        /* renamed from: g */
        public Object f35788g;

        /* renamed from: h */
        public Object f35789h;

        /* renamed from: i */
        public Object f35790i;

        /* renamed from: j */
        public Object f35791j;

        /* renamed from: k */
        public boolean f35792k;

        /* renamed from: l */
        public int f35793l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12250g(d dVar) {
            super(dVar);
            C12242c.this = r4;
        }

        /* renamed from: s */
        public final Object m23369s(Object obj) {
            this.f35785d = obj;
            this.f35786e |= Integer.MIN_VALUE;
            return C12242c.this.m23385h(null, null, false, this);
        }
    }

    /* renamed from: e.a.d.x.r.c$h */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$h.class */
    public static final class C12251h implements ResultCallback<Void> {

        /* renamed from: a */
        public final /* synthetic */ n f35794a;

        /* renamed from: b */
        public final /* synthetic */ C12242c f35795b;

        /* renamed from: c */
        public final /* synthetic */ RtmClient f35796c;

        public C12251h(n nVar, C12242c c12242c, RtmClient rtmClient) {
            this.f35794a = nVar;
            this.f35795b = c12242c;
            this.f35796c = rtmClient;
        }

        public void onFailure(ErrorInfo errorInfo) {
            StringBuilder m8728C = C22128a.m8728C("Logout failed. Error code: ");
            m8728C.append(Integer.valueOf(errorInfo.getErrorCode()));
            m8728C.toString();
            this.f35795b.f35753a = false;
            C12242c c12242c = this.f35795b;
            c12242c.f35755c = null;
            c12242c.f35759g.clear();
            if (!this.f35794a.j()) {
                this.f35794a.c(Boolean.FALSE);
            }
        }

        public void onSuccess(Object obj) {
            Void r0 = (Void) obj;
            this.f35795b.f35753a = false;
            C12242c c12242c = this.f35795b;
            c12242c.f35755c = null;
            c12242c.f35759g.clear();
            if (!this.f35794a.j()) {
                this.f35794a.c(Boolean.TRUE);
            }
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$logout$2", f = "RtmLoginManager.kt", l = {134, 135}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.r.c$i */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$i.class */
    public static final class C12252i extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f35797e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12252i(d dVar) {
            super(2, dVar);
            C12242c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23368i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12252i(dVar);
        }

        /* renamed from: k */
        public final Object m23367k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12252i(dVar).m23366s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0086  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23366s(java.lang.Object r7) {
            /*
                r6 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r8 = r0
                r0 = r6
                int r0 = r0.f35797e
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L33
                r0 = r9
                r1 = 1
                if (r0 == r1) goto L28
                r0 = r9
                r1 = 2
                if (r0 != r1) goto L1e
                r0 = r7
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Throwable -> L2f
                goto L6e
            L1e:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L28:
                r0 = r7
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Throwable -> L2f
                goto L52
            L2f:
                r7 = move-exception
                goto L99
            L33:
                r0 = r7
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r6
                e.a.d.x.r.c r0 = p193e.p194a.p619d.p663x.p665r.C12242c.this     // Catch: java.lang.Throwable -> L2f
                q3.a.b3.c r0 = r0.f35754b     // Catch: java.lang.Throwable -> L2f
                r7 = r0
                r0 = r6
                r1 = 1
                r0.f35797e = r1     // Catch: java.lang.Throwable -> L2f
                r0 = r7
                r1 = 0
                r2 = r6
                r3 = 1
                r4 = 0
                java.lang.Object r0 = s1.a.a.a.v0.f.d.z2(r0, r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L2f
                r1 = r8
                if (r0 != r1) goto L52
                r0 = r8
                return r0
            L52:
                r0 = r6
                e.a.d.x.r.c r0 = p193e.p194a.p619d.p663x.p665r.C12242c.this     // Catch: java.lang.Throwable -> L2f
                r7 = r0
                r0 = r6
                r1 = 2
                r0.f35797e = r1     // Catch: java.lang.Throwable -> L2f
                r0 = r7
                r1 = r6
                java.lang.Object r0 = r0.m23384i(r1)     // Catch: java.lang.Throwable -> L2f
                r10 = r0
                r0 = r10
                r7 = r0
                r0 = r10
                r1 = r8
                if (r0 != r1) goto L6e
                r0 = r8
                return r0
            L6e:
                r0 = r7
                java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L2f
                boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L2f
                r11 = r0
                r0 = r6
                e.a.d.x.r.c r0 = p193e.p194a.p619d.p663x.p665r.C12242c.this
                q3.a.b3.c r0 = r0.f35754b
                boolean r0 = r0.a()
                if (r0 == 0) goto L93
                r0 = r6
                e.a.d.x.r.c r0 = p193e.p194a.p619d.p663x.p665r.C12242c.this
                q3.a.b3.c r0 = r0.f35754b
                r1 = 0
                r2 = 1
                r3 = 0
                s1.a.a.a.v0.f.d.U3(r0, r1, r2, r3)
            L93:
                r0 = r11
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                return r0
            L99:
                r0 = r6
                e.a.d.x.r.c r0 = p193e.p194a.p619d.p663x.p665r.C12242c.this
                q3.a.b3.c r0 = r0.f35754b
                boolean r0 = r0.a()
                if (r0 == 0) goto Lb5
                r0 = r6
                e.a.d.x.r.c r0 = p193e.p194a.p619d.p663x.p665r.C12242c.this
                q3.a.b3.c r0 = r0.f35754b
                r1 = 0
                r2 = 1
                r3 = 0
                s1.a.a.a.v0.f.d.U3(r0, r1, r2, r3)
            Lb5:
                r0 = r7
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.C12252i.m23366s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.manager.rtm.AgoraRtmLoginManager$logoutAsync$1", f = "RtmLoginManager.kt", l = {145}, m = "invokeSuspend")
    /* renamed from: e.a.d.x.r.c$j */
    /* loaded from: classes15-dex2jar.jar:e/a/d/x/r/c$j.class */
    public static final class C12253j extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35799e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12253j(d dVar) {
            super(2, dVar);
            C12242c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23365i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12253j(dVar);
        }

        /* renamed from: k */
        public final Object m23364k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12253j(dVar).m23363s(s.a);
        }

        /* renamed from: s */
        public final Object m23363s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35799e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12242c c12242c = C12242c.this;
                long millis = TimeUnit.SECONDS.toMillis(20L);
                this.f35799e = 1;
                Objects.requireNonNull(c12242c);
                if (j.c(millis, new C12252i(null), this) == aVar) {
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

    @Inject
    public C12242c(@Named("IO") f fVar, AbstractC11556y0 abstractC11556y0, AbstractC11440o1 abstractC11440o1, AbstractC12285o abstractC12285o, AbstractC11405f0 abstractC11405f0) {
        l.e(fVar, "asyncContext");
        l.e(abstractC11556y0, "voipIdProvider");
        l.e(abstractC11440o1, "voipTokenProvider");
        l.e(abstractC12285o, "rtmManager");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        this.f35756d = fVar;
        this.f35757e = abstractC11556y0;
        this.f35758f = abstractC11440o1;
        this.f35759g = abstractC12285o;
        this.f35760h = abstractC11405f0;
        abstractC12285o.mo23318c(this, new C12241b(this, null));
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12284n
    /* renamed from: a */
    public void mo23326a() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12253j(null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009e  */
    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12284n
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23325b(long r6, s1.w.d<? super p193e.p194a.p619d.p663x.p665r.AbstractC12283m> r8) {
        /*
            r5 = this;
            r0 = r8
            boolean r0 = r0 instanceof p193e.p194a.p619d.p663x.p665r.C12242c.C12243a
            if (r0 == 0) goto L2c
            r0 = r8
            e.a.d.x.r.c$a r0 = (p193e.p194a.p619d.p663x.p665r.C12242c.C12243a) r0
            r9 = r0
            r0 = r9
            int r0 = r0.f35762e
            r10 = r0
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2c
            r0 = r9
            r1 = r10
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f35762e = r1
            r0 = r9
            r8 = r0
            goto L36
        L2c:
            e.a.d.x.r.c$a r0 = new e.a.d.x.r.c$a
            r1 = r0
            r2 = r5
            r3 = r8
            r1.<init>(r3)
            r8 = r0
        L36:
            r0 = r8
            java.lang.Object r0 = r0.f35761d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r11 = r0
            r0 = r8
            int r0 = r0.f35762e
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L67
            r0 = r10
            r1 = 1
            if (r0 != r1) goto L5d
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r9
            r8 = r0
            goto L92
        L5d:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L67:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            e.a.d.x.r.c$b r0 = new e.a.d.x.r.c$b
            r1 = r0
            r2 = r5
            r3 = 0
            r1.<init>(r3)
            r9 = r0
            r0 = r8
            r1 = 1
            r0.f35762e = r1
            r0 = r6
            r1 = r9
            r2 = r8
            java.lang.Object r0 = q3.a.j.c(r0, r1, r2)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r11
            if (r0 != r1) goto L92
            r0 = r11
            return r0
        L92:
            r0 = r8
            e.a.d.x.r.m r0 = (p193e.p194a.p619d.p663x.p665r.AbstractC12283m) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L9e
            goto La9
        L9e:
            e.a.d.x.r.g r0 = new e.a.d.x.r.g
            r1 = r0
            com.truecaller.voip.manager.rtm.FailedRtmLoginReason r2 = com.truecaller.voip.manager.rtm.FailedRtmLoginReason.TIMED_OUT
            r1.<init>(r2)
            r8 = r0
        La9:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.mo23325b(long, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12284n
    /* renamed from: c */
    public String mo23324c() {
        return this.f35755c;
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12284n
    /* renamed from: d */
    public boolean mo23323d() {
        return this.f35753a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a6  */
    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12284n
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23322e(long r7, s1.z.b.a<java.lang.String> r9, s1.w.d<? super p193e.p194a.p619d.p663x.p665r.AbstractC12283m> r10) {
        /*
            r6 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p619d.p663x.p665r.C12242c.C12245c
            if (r0 == 0) goto L2f
            r0 = r10
            e.a.d.x.r.c$c r0 = (p193e.p194a.p619d.p663x.p665r.C12242c.C12245c) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f35767e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f35767e = r1
            r0 = r11
            r10 = r0
            goto L3b
        L2f:
            e.a.d.x.r.c$c r0 = new e.a.d.x.r.c$c
            r1 = r0
            r2 = r6
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L3b:
            r0 = r10
            java.lang.Object r0 = r0.f35766d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f35767e
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L6e
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L64
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r9 = r0
            goto L9a
        L64:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L6e:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            e.a.d.x.r.c$d r0 = new e.a.d.x.r.c$d
            r1 = r0
            r2 = r6
            r3 = r9
            r4 = 0
            r1.<init>(r3, r4)
            r9 = r0
            r0 = r10
            r1 = 1
            r0.f35767e = r1
            r0 = r7
            r1 = r9
            r2 = r10
            java.lang.Object r0 = q3.a.j.c(r0, r1, r2)
            r10 = r0
            r0 = r10
            r9 = r0
            r0 = r10
            r1 = r13
            if (r0 != r1) goto L9a
            r0 = r13
            return r0
        L9a:
            r0 = r9
            e.a.d.x.r.m r0 = (p193e.p194a.p619d.p663x.p665r.AbstractC12283m) r0
            r9 = r0
            r0 = r9
            if (r0 == 0) goto La6
            goto Lb1
        La6:
            e.a.d.x.r.g r0 = new e.a.d.x.r.g
            r1 = r0
            com.truecaller.voip.manager.rtm.FailedRtmLoginReason r2 = com.truecaller.voip.manager.rtm.FailedRtmLoginReason.TIMED_OUT
            r1.<init>(r2)
            r9 = r0
        Lb1:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.mo23322e(long, s1.z.b.a, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p663x.p665r.AbstractC12284n
    /* renamed from: f */
    public Object mo23321f(long j, d<? super Boolean> dVar) {
        return j.c(j, new C12252i(null), dVar);
    }

    /* renamed from: g */
    public final /* synthetic */ Object m23386g(boolean z, a<String> aVar, d<? super AbstractC12283m> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f35756d, new C12247e(aVar, z, null), dVar);
    }

    public f getCoroutineContext() {
        return this.f35756d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x013b  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23385h(java.lang.String r13, java.lang.String r14, boolean r15, s1.w.d<? super java.lang.Integer> r16) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p663x.p665r.C12242c.m23385h(java.lang.String, java.lang.String, boolean, s1.w.d):java.lang.Object");
    }

    /* renamed from: i */
    public final Object m23384i(d<? super Boolean> dVar) {
        RtmClient mo23315f = this.f35759g.mo23315f();
        if (mo23315f != null) {
            o oVar = new o(C25225a.m3844s1(dVar), 1);
            oVar.z();
            mo23315f.logout(new C12251h(oVar, this, mo23315f));
            Object y = oVar.y();
            if (y == s1.w.j.a.a) {
                l.e(dVar, "frame");
            }
            return y;
        }
        return Boolean.FALSE;
    }
}
