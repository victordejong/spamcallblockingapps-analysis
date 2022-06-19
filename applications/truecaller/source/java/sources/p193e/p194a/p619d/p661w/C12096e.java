package p193e.p194a.p619d.p661w;

import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.voip.debug.VoipAssistantPushNotification;
import com.truecaller.voip.manager.rtm.RtmChannelAttributeState;
import io.agora.rtc.Constants;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p620a.C10975a0;
import p193e.p194a.p619d.p620a.C11028n;
import p193e.p194a.p619d.p620a.C11033p;
import p193e.p194a.p619d.p628c.p629a.AbstractC11183f;
import p193e.p194a.p619d.p637c0.AbstractC11392d0;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.C11464r;
import p193e.p194a.p619d.p637c0.p642z1.C11599j;
import p193e.p194a.p619d.p656u.AbstractC11817g;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import p193e.p194a.p619d.p661w.p662j.AbstractC12174m;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import p193e.p194a.p619d.p663x.p665r.C12262i;
import q3.a.b3.c;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import q3.a.p1;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.d.w.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/e.class */
public final class C12096e implements i0, AbstractC12095d {

    /* renamed from: a */
    public final f f35388a;

    /* renamed from: b */
    public final C12097a f35389b = new C12097a();

    /* renamed from: c */
    public final f f35390c;

    /* renamed from: d */
    public final AbstractC11817g f35391d;

    /* renamed from: e */
    public final AbstractC11824d f35392e;

    /* renamed from: f */
    public final C11599j f35393f;

    /* renamed from: g */
    public final a<AbstractC11394e> f35394g;

    /* renamed from: h */
    public final a<AbstractC11556y0> f35395h;

    /* renamed from: i */
    public final a<AbstractC12284n> f35396i;

    /* renamed from: j */
    public final a<AbstractC12285o> f35397j;

    /* renamed from: k */
    public final AbstractC19222c f35398k;

    /* renamed from: l */
    public final a<AbstractC11434m1> f35399l;

    /* renamed from: m */
    public final AbstractC11183f f35400m;

    /* renamed from: e.a.d.w.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$a.class */
    public static final class C12097a extends C11464r<AbstractC12111g> {
        public C12097a() {
            super(AbstractC12111g.C12113b.f35451a);
        }
    }

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$initiateAssistantDebugInvitation$1", f = "InvitationManager.kt", l = {227, Constants.ERR_WATERMARKR_INFO}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$b.class */
    public static final class C12098b extends i implements p<i0, d<? super C11028n>, Object> {

        /* renamed from: e */
        public Object f35401e;

        /* renamed from: f */
        public Object f35402f;

        /* renamed from: g */
        public Object f35403g;

        /* renamed from: h */
        public int f35404h;

        /* renamed from: j */
        public final /* synthetic */ VoipAssistantPushNotification f35406j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12098b(VoipAssistantPushNotification voipAssistantPushNotification, d dVar) {
            super(2, dVar);
            C12096e.this = r5;
            this.f35406j = voipAssistantPushNotification;
        }

        /* renamed from: i */
        public final d<s> m23615i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12098b(this.f35406j, dVar);
        }

        /* renamed from: k */
        public final Object m23614k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12098b(this.f35406j, dVar).m23613s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v104, types: [e.a.d.c0.d0] */
        /* renamed from: s */
        public final Object m23613s(Object obj) {
            C12097a c12097a;
            c cVar;
            c cVar2;
            C11464r.C11465a mo24640h;
            C11033p c11033p;
            c cVar3;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35404h;
            try {
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C12097a c12097a2 = C12096e.this.f35389b;
                    c cVar4 = c12097a2.f33655b;
                    this.f35401e = c12097a2;
                    this.f35402f = cVar4;
                    this.f35404h = 1;
                    cVar = cVar4;
                    c12097a = c12097a2;
                    if (cVar4.b((Object) null, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    c11033p = (C11033p) this.f35403g;
                    mo24640h = (AbstractC11392d0) this.f35402f;
                    c cVar5 = (c) this.f35401e;
                    cVar3 = cVar5;
                    try {
                        C25225a.m3932a3(obj);
                        cVar = cVar5;
                        c cVar6 = cVar;
                        C12096e c12096e = C12096e.this;
                        c cVar7 = cVar;
                        AbstractC11824d abstractC11824d = c12096e.f35392e;
                        c cVar8 = cVar;
                        Object obj2 = c12096e.f35395h.get();
                        c cVar9 = cVar;
                        l.d(obj2, "idProvider.get()");
                        c cVar10 = cVar;
                        AbstractC11556y0 abstractC11556y0 = (AbstractC11556y0) obj2;
                        c cVar11 = cVar;
                        VoipAssistantPushNotification voipAssistantPushNotification = this.f35406j;
                        c cVar12 = cVar;
                        C11028n c11028n = new C11028n(c11033p, abstractC11824d, abstractC11556y0, voipAssistantPushNotification.f16354b, voipAssistantPushNotification.f16355c);
                        c cVar13 = cVar;
                        C12096e.m23616h(C12096e.this, c11028n);
                        c cVar14 = cVar;
                        c cVar15 = cVar;
                        cVar3 = cVar;
                        mo24640h.mo24639a(new AbstractC12111g.C12112a(c11028n, c11033p));
                        cVar.c((Object) null);
                        return c11028n;
                    } catch (Throwable th) {
                        cVar2 = cVar3;
                        th = th;
                        cVar2.c((Object) null);
                        throw th;
                    }
                } else {
                    c cVar16 = (c) this.f35402f;
                    c12097a = (C11464r) this.f35401e;
                    C25225a.m3932a3(obj);
                    cVar = cVar16;
                }
                mo24640h = c12097a.mo24640h();
                if (true ^ l.a(C12096e.this.f35389b.getValue(), AbstractC12111g.C12113b.f35451a)) {
                    cVar.c((Object) null);
                    return null;
                }
                Object obj3 = C12096e.this.f35394g.get();
                l.d(obj3, "callUserResolver.get()");
                c11033p = new C11033p((AbstractC11394e) obj3);
                int m25382w = c11033p.m25382w(this.f35406j.f16353a);
                c11033p.m25384u(s1.u.i.y0(new Integer(m25382w)));
                this.f35401e = cVar;
                this.f35402f = mo24640h;
                this.f35403g = c11033p;
                this.f35404h = 2;
                if (c11033p.m25380y(m25382w, this) == aVar) {
                    return aVar;
                }
                c cVar62 = cVar;
                C12096e c12096e2 = C12096e.this;
                c cVar72 = cVar;
                AbstractC11824d abstractC11824d2 = c12096e2.f35392e;
                c cVar82 = cVar;
                Object obj22 = c12096e2.f35395h.get();
                c cVar92 = cVar;
                l.d(obj22, "idProvider.get()");
                c cVar102 = cVar;
                AbstractC11556y0 abstractC11556y02 = (AbstractC11556y0) obj22;
                c cVar112 = cVar;
                VoipAssistantPushNotification voipAssistantPushNotification2 = this.f35406j;
                c cVar122 = cVar;
                C11028n c11028n2 = new C11028n(c11033p, abstractC11824d2, abstractC11556y02, voipAssistantPushNotification2.f16354b, voipAssistantPushNotification2.f16355c);
                c cVar132 = cVar;
                C12096e.m23616h(C12096e.this, c11028n2);
                c cVar142 = cVar;
                c cVar152 = cVar;
                cVar3 = cVar;
                mo24640h.mo24639a(new AbstractC12111g.C12112a(c11028n2, c11033p));
                cVar.c((Object) null);
                return c11028n2;
            } catch (Throwable th2) {
                th = th2;
                cVar2 = cVar;
                cVar2.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$initiateDebugInvitation$1", f = "InvitationManager.kt", l = {227}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.e$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$c.class */
    public static final class C12099c extends i implements p<i0, d<? super C10975a0>, Object> {

        /* renamed from: e */
        public Object f35407e;

        /* renamed from: f */
        public Object f35408f;

        /* renamed from: g */
        public int f35409g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12099c(d dVar) {
            super(2, dVar);
            C12096e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23612i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12099c(dVar);
        }

        /* renamed from: k */
        public final Object m23611k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12099c(dVar).m23610s(s.a);
        }

        /* JADX WARN: Finally extract failed */
        /* renamed from: s */
        public final Object m23610s(Object obj) {
            C12097a c12097a;
            c cVar;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35409g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                c12097a = C12096e.this.f35389b;
                cVar = c12097a.f33655b;
                this.f35407e = c12097a;
                this.f35408f = cVar;
                this.f35409g = 1;
                if (cVar.b((Object) null, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c cVar2 = (c) this.f35408f;
                c12097a = (C11464r) this.f35407e;
                C25225a.m3932a3(obj);
                cVar = cVar2;
            }
            try {
                C11464r.C11465a mo24640h = c12097a.mo24640h();
                if (!l.a(C12096e.this.f35389b.getValue(), AbstractC12111g.C12113b.f35451a)) {
                    cVar.c((Object) null);
                    return null;
                }
                Object obj2 = C12096e.this.f35394g.get();
                l.d(obj2, "callUserResolver.get()");
                C11033p c11033p = new C11033p((AbstractC11394e) obj2);
                C12096e c12096e = C12096e.this;
                AbstractC11824d abstractC11824d = c12096e.f35392e;
                Object obj3 = c12096e.f35395h.get();
                l.d(obj3, "idProvider.get()");
                C10975a0 c10975a0 = new C10975a0(c11033p, abstractC11824d, (AbstractC11556y0) obj3);
                C12096e.m23616h(C12096e.this, c10975a0);
                mo24640h.mo24639a(new AbstractC12111g.C12112a(c10975a0, c11033p));
                cVar.c((Object) null);
                return c10975a0;
            } catch (Throwable th) {
                cVar.c((Object) null);
                throw th;
            }
        }
    }

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$initiateInvitation$1", f = "InvitationManager.kt", l = {227, 84}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.e$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$d.class */
    public static final class C12100d extends i implements p<i0, d<? super AbstractC12093b>, Object> {

        /* renamed from: e */
        public Object f35411e;

        /* renamed from: f */
        public Object f35412f;

        /* renamed from: g */
        public Object f35413g;

        /* renamed from: h */
        public int f35414h;

        /* renamed from: j */
        public final /* synthetic */ String f35416j;

        /* renamed from: k */
        public final /* synthetic */ String f35417k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12100d(String str, String str2, d dVar) {
            super(2, dVar);
            C12096e.this = r5;
            this.f35416j = str;
            this.f35417k = str2;
        }

        /* renamed from: i */
        public final d<s> m23609i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12100d(this.f35416j, this.f35417k, dVar);
        }

        /* renamed from: k */
        public final Object m23608k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12100d(this.f35416j, this.f35417k, dVar).m23607s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x012d  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x0143  */
        /* JADX WARN: Type inference failed for: r0v140, types: [e.a.d.c0.d0] */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23607s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 595
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.C12096e.C12100d.m23607s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$rejectBusy$2$1", f = "InvitationManager.kt", l = {Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 162, 172, 179, 182}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.e$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$e.class */
    public static final class C12101e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f35418e;

        /* renamed from: f */
        public Object f35419f;

        /* renamed from: g */
        public int f35420g;

        /* renamed from: h */
        public final /* synthetic */ C12096e f35421h;

        /* renamed from: i */
        public final /* synthetic */ d f35422i;

        /* renamed from: j */
        public final /* synthetic */ String f35423j;

        /* renamed from: e.a.d.w.e$e$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$e$a.class */
        public static final class C12102a extends m implements s1.z.b.a<Long> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12102a() {
                super(0);
                C12101e.this = r4;
            }

            public Object invoke() {
                return Long.valueOf(C12101e.this.f35421h.f35398k.mo13819c());
            }
        }

        /* renamed from: e.a.d.w.e$e$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$e$b.class */
        public static final class C12103b implements q3.a.x2.f<C12262i> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f35425a;

            /* renamed from: b */
            public final /* synthetic */ String f35426b;

            /* renamed from: e.a.d.w.e$e$b$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$e$b$a.class */
            public static final class C12104a implements g<Set<? extends C12262i>> {

                /* renamed from: a */
                public final /* synthetic */ g f35427a;

                /* renamed from: b */
                public final /* synthetic */ C12103b f35428b;

                /* renamed from: e.a.d.w.e$e$b$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$e$b$a$a.class */
                public static final class C12105a extends s1.w.k.a.c {

                    /* renamed from: d */
                    public /* synthetic */ Object f35429d;

                    /* renamed from: e */
                    public int f35430e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C12105a(d dVar) {
                        super(dVar);
                        C12104a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m23601s(Object obj) {
                        this.f35429d = obj;
                        this.f35430e |= Integer.MIN_VALUE;
                        return C12104a.this.m23602a(null, this);
                    }
                }

                public C12104a(g gVar, C12103b c12103b) {
                    this.f35427a = gVar;
                    this.f35428b = c12103b;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m23602a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.C12096e.C12101e.C12103b.C12104a.C12105a
                        if (r0 == 0) goto L28
                        r0 = r7
                        e.a.d.w.e$e$b$a$a r0 = (p193e.p194a.p619d.p661w.C12096e.C12101e.C12103b.C12104a.C12105a) r0
                        r8 = r0
                        r0 = r8
                        int r0 = r0.f35430e
                        r9 = r0
                        r0 = r9
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L28
                        r0 = r8
                        r1 = r9
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f35430e = r1
                        r0 = r8
                        r7 = r0
                        goto L32
                    L28:
                        e.a.d.w.e$e$b$a$a r0 = new e.a.d.w.e$e$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L32:
                        r0 = r7
                        java.lang.Object r0 = r0.f35429d
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r8 = r0
                        r0 = r7
                        int r0 = r0.f35430e
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto L5f
                        r0 = r9
                        r1 = 1
                        if (r0 != r1) goto L55
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto Lb7
                    L55:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L5f:
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r5
                        q3.a.x2.g r0 = r0.f35427a
                        r10 = r0
                        r0 = r6
                        java.util.Set r0 = (java.util.Set) r0
                        java.util.Iterator r0 = r0.iterator()
                        r11 = r0
                    L75:
                        r0 = r11
                        boolean r0 = r0.hasNext()
                        if (r0 == 0) goto La1
                        r0 = r11
                        java.lang.Object r0 = r0.next()
                        r6 = r0
                        r0 = r6
                        e.a.d.x.r.i r0 = (p193e.p194a.p619d.p663x.p665r.C12262i) r0
                        r1 = r5
                        e.a.d.w.e$e$b r1 = r1.f35428b
                        java.lang.String r1 = r1.f35426b
                        boolean r0 = r0.m23355a(r1)
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        boolean r0 = r0.booleanValue()
                        if (r0 == 0) goto L75
                        goto La3
                    La1:
                        r0 = 0
                        r6 = r0
                    La3:
                        r0 = r7
                        r1 = 1
                        r0.f35430e = r1
                        r0 = r10
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r8
                        if (r0 != r1) goto Lb7
                        r0 = r8
                        return r0
                    Lb7:
                        s1.s r0 = s1.s.a
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.C12096e.C12101e.C12103b.C12104a.m23602a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C12103b(q3.a.x2.f fVar, String str) {
                this.f35425a = fVar;
                this.f35426b = str;
            }

            /* renamed from: c */
            public Object m23603c(g gVar, d dVar) {
                Object c = this.f35425a.c(new C12104a(gVar, this), dVar);
                return c == s1.w.j.a.a ? c : s.a;
            }
        }

        @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$rejectBusy$2$1$2", f = "InvitationManager.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.w.e$e$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$e$c.class */
        public static final class C12106c extends i implements p<C12262i, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f35432e;

            public C12106c(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m23600i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12106c c12106c = new C12106c(dVar);
                c12106c.f35432e = obj;
                return c12106c;
            }

            /* renamed from: k */
            public final Object m23599k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                C12262i c12262i = (C12262i) obj;
                return Boolean.valueOf(l.a(c12262i != null ? c12262i.f35823b : null, RtmChannelAttributeState.Invited.getValue()));
            }

            /* renamed from: s */
            public final Object m23598s(Object obj) {
                C25225a.m3932a3(obj);
                C12262i c12262i = (C12262i) this.f35432e;
                return Boolean.valueOf(l.a(c12262i != null ? c12262i.f35823b : null, RtmChannelAttributeState.Invited.getValue()));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12101e(d dVar, C12096e c12096e, d dVar2, String str) {
            super(2, dVar);
            this.f35421h = c12096e;
            this.f35422i = dVar2;
            this.f35423j = str;
        }

        /* renamed from: i */
        public final d<s> m23606i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12101e(dVar, this.f35421h, this.f35422i, this.f35423j);
        }

        /* renamed from: k */
        public final Object m23605k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12101e(dVar, this.f35421h, this.f35422i, this.f35423j).m23604s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x011f  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x0121  */
        /* JADX WARN: Removed duplicated region for block: B:44:0x01be  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x01dc  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m23604s(java.lang.Object r8) {
            /*
                Method dump skipped, instructions count: 488
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.C12096e.C12101e.m23604s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl", f = "InvitationManager.kt", l = {227, 147, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 188, 188}, m = "rejectBusy")
    /* renamed from: e.a.d.w.e$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$f.class */
    public static final class C12107f extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f35433d;

        /* renamed from: e */
        public int f35434e;

        /* renamed from: g */
        public Object f35436g;

        /* renamed from: h */
        public Object f35437h;

        /* renamed from: i */
        public Object f35438i;

        /* renamed from: j */
        public Object f35439j;

        /* renamed from: k */
        public boolean f35440k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12107f(d dVar) {
            super(dVar);
            C12096e.this = r4;
        }

        /* renamed from: s */
        public final Object m23597s(Object obj) {
            this.f35433d = obj;
            this.f35434e |= Integer.MIN_VALUE;
            return C12096e.this.mo23623a(null, this);
        }
    }

    @e(c = "com.truecaller.voip.invitation.InvitationManagerImpl$rejectBusy$2$2", f = "InvitationManager.kt", l = {189}, m = "invokeSuspend")
    /* renamed from: e.a.d.w.e$g */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/e$g.class */
    public static final class C12108g extends i implements p<i0, d<? super Boolean>, Object> {

        /* renamed from: e */
        public int f35441e;

        /* renamed from: f */
        public final /* synthetic */ AbstractC12284n f35442f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12108g(AbstractC12284n abstractC12284n, d dVar) {
            super(2, dVar);
            this.f35442f = abstractC12284n;
        }

        /* renamed from: i */
        public final d<s> m23596i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12108g(this.f35442f, dVar);
        }

        /* renamed from: k */
        public final Object m23595k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12108g(this.f35442f, dVar).m23594s(s.a);
        }

        /* renamed from: s */
        public final Object m23594s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f35441e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC12284n abstractC12284n = this.f35442f;
                this.f35441e = 1;
                Object m13638C0 = C19291g.m13638C0(abstractC12284n, 0L, this, 1, null);
                obj = m13638C0;
                if (m13638C0 == aVar) {
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

    @Inject
    public C12096e(@Named("IO") f fVar, AbstractC11817g abstractC11817g, AbstractC11824d abstractC11824d, C11599j c11599j, a<AbstractC11394e> aVar, a<AbstractC11556y0> aVar2, a<AbstractC12284n> aVar3, a<AbstractC12285o> aVar4, AbstractC19222c abstractC19222c, a<AbstractC11434m1> aVar5, AbstractC11183f abstractC11183f) {
        l.e(fVar, "asyncContext");
        l.e(abstractC11817g, "invitationComponent");
        l.e(abstractC11824d, "groupCallManager");
        l.e(c11599j, "callInfoRepositoryFactory");
        l.e(aVar, "callUserResolver");
        l.e(aVar2, "idProvider");
        l.e(aVar3, "rtmLoginManager");
        l.e(aVar4, "rtmManager");
        l.e(abstractC19222c, "clock");
        l.e(aVar5, "voipTelecomUtil");
        l.e(abstractC11183f, "logPriorityVoipCallEvent");
        this.f35390c = fVar;
        this.f35391d = abstractC11817g;
        this.f35392e = abstractC11824d;
        this.f35393f = c11599j;
        this.f35394g = aVar;
        this.f35395h = aVar2;
        this.f35396i = aVar3;
        this.f35397j = aVar4;
        this.f35398k = abstractC19222c;
        this.f35399l = aVar5;
        this.f35400m = abstractC11183f;
        this.f35388a = fVar;
    }

    /* renamed from: h */
    public static final p1 m23616h(C12096e c12096e, AbstractC12093b abstractC12093b) {
        Objects.requireNonNull(c12096e);
        return s1.a.a.a.v0.f.d.w2(c12096e, (f) null, (j0) null, new C12109f(c12096e, abstractC12093b, null), 3, (Object) null);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:2|(5:(2:4|(8:6|8|127|(2:10|(2:12|(2:14|(2:16|(2:18|(2:20|21)(5:22|23|24|118|119))(6:25|26|86|87|88|89))(10:28|128|29|64|(16:66|67|68|69|70|71|72|73|74|75|76|77|78|79|80|(2:82|83))|84|86|87|88|89))(7:31|133|32|33|47|48|(5:50|86|87|88|89)(4:132|51|52|(6:54|55|(1:57)|58|59|(2:61|62)(8:63|64|(0)|84|86|87|88|89))(2:90|91))))(1:35))(2:36|(2:38|39)(1:40))|130|41|42|(2:44|45)(4:46|47|48|(0)(0))))|130|41|42|(0)(0))|7|8|127|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x034c, code lost:
        r8 = r7;
        r7 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00a0, code lost:
        r13 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02b6, code lost:
        r7 = th;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01f0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01d2  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x02e8  */
    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo23623a(java.lang.String r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 873
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.C12096e.mo23623a(java.lang.String, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: b */
    public boolean mo23622b() {
        AbstractC12111g value = this.f35389b.getValue();
        if (!(value instanceof AbstractC12111g.C12112a)) {
            value = null;
        }
        AbstractC12111g.C12112a c12112a = (AbstractC12111g.C12112a) value;
        AbstractC12174m abstractC12174m = c12112a != null ? c12112a.f35449a : null;
        if (!(abstractC12174m instanceof C10975a0)) {
            abstractC12174m = null;
        }
        return ((C10975a0) abstractC12174m) != null;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: c */
    public n0<C11028n> mo23621c(VoipAssistantPushNotification voipAssistantPushNotification) {
        l.e(voipAssistantPushNotification, "voipAssistantPushNotification");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C12098b(voipAssistantPushNotification, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: d */
    public n0<AbstractC12093b> mo23620d(String str, String str2) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(str2, "senderId");
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C12100d(str, str2, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: e */
    public AbstractC12093b mo23619e() {
        AbstractC12111g value = this.f35389b.getValue();
        if (!(value instanceof AbstractC12111g.C12112a)) {
            value = null;
        }
        AbstractC12111g.C12112a c12112a = (AbstractC12111g.C12112a) value;
        AbstractC12093b abstractC12093b = null;
        if (c12112a != null) {
            abstractC12093b = c12112a.f35449a;
        }
        return abstractC12093b;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: f */
    public n0<C10975a0> mo23618f() {
        return s1.a.a.a.v0.f.d.H(this, (f) null, (j0) null, new C12099c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    /* renamed from: g */
    public boolean mo23617g() {
        return mo23619e() != null;
    }

    public f getCoroutineContext() {
        return this.f35388a;
    }

    @Override // p193e.p194a.p619d.p661w.AbstractC12095d
    public i1 getState() {
        return this.f35389b;
    }
}
