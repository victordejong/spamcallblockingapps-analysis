package p193e.p194a.p619d;

import android.app.ForegroundServiceStartNotAllowedException;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.widget.Toast;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.log.AssertionUtil;
import com.truecaller.log.UnmutedException;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipCallOptions;
import com.truecaller.voip.VoipGroupPushNotification;
import com.truecaller.voip.VoipPushNotification;
import com.truecaller.voip.debug.VoipAssistantPushNotification;
import com.truecaller.voip.groupcall.call.CallDirection;
import com.truecaller.voip.legacy.incall.LegacyVoipService;
import com.truecaller.voip.notification.missed.MissedVoipCallsWorker;
import com.truecaller.voip.p189db.VoipAvailability;
import com.truecaller.voip.p192ui.VoipActivity;
import com.truecaller.voip.service.call.CallService;
import com.truecaller.voip.service.invitation.InvitationService;
import com.truecaller.voip.util.VoipAnalyticsCallDirection;
import com.truecaller.voip.util.VoipAnalyticsState;
import com.truecaller.voip.util.VoipEventType;
import com.truecaller.voip.util.VoipSearchDirection;
import io.agora.rtc.Constants;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p619d.AbstractC11708i;
import p193e.p194a.p619d.p637c0.AbstractC11376b;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.AbstractC11409g1;
import p193e.p194a.p619d.p637c0.AbstractC11421j1;
import p193e.p194a.p619d.p637c0.AbstractC11432m;
import p193e.p194a.p619d.p637c0.AbstractC11434m1;
import p193e.p194a.p619d.p637c0.AbstractC11440o1;
import p193e.p194a.p619d.p637c0.AbstractC11556y0;
import p193e.p194a.p619d.p637c0.C11379b0;
import p193e.p194a.p619d.p637c0.C11395e0;
import p193e.p194a.p619d.p637c0.C11508w0;
import p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a;
import p193e.p194a.p619d.p637c0.p641y1.AbstractC11558b;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p655t.AbstractC11796a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p657v.AbstractC11840h;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import p193e.p194a.p619d.p663x.AbstractC12217m;
import p193e.p194a.p619d.p663x.p665r.AbstractC12284n;
import p193e.p194a.p619d.p663x.p665r.AbstractC12285o;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j0;
import q3.a.x2.d1;
import q3.a.x2.i1;
import q3.a.x2.w0;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.b.q;
import s1.z.c.l;
/* renamed from: e.a.d.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/j.class */
public final class C11714j implements AbstractC11705f, i0 {

    /* renamed from: a */
    public final c f34370a = g.a(false, 1);

    /* renamed from: b */
    public final f f34371b;

    /* renamed from: c */
    public final f f34372c;

    /* renamed from: d */
    public final Context f34373d;

    /* renamed from: e */
    public final AbstractC14965w f34374e;

    /* renamed from: f */
    public final a<AbstractC14967y> f34375f;

    /* renamed from: g */
    public final AbstractC11706g f34376g;

    /* renamed from: h */
    public final AbstractC12217m f34377h;

    /* renamed from: i */
    public final a<AbstractC12284n> f34378i;

    /* renamed from: j */
    public final a<AbstractC12285o> f34379j;

    /* renamed from: k */
    public final a<AbstractC11421j1> f34380k;

    /* renamed from: l */
    public final a<AbstractC11796a> f34381l;

    /* renamed from: m */
    public final a<AbstractC11440o1> f34382m;

    /* renamed from: n */
    public final AbstractC11405f0 f34383n;

    /* renamed from: o */
    public final AbstractC11556y0 f34384o;

    /* renamed from: p */
    public final a<AbstractC11434m1> f34385p;

    /* renamed from: q */
    public final a<AbstractC11409g1> f34386q;

    /* renamed from: r */
    public final a<AbstractC11369a> f34387r;

    /* renamed from: s */
    public final AbstractC11440o1 f34388s;

    /* renamed from: t */
    public final a<AbstractC11558b> f34389t;

    /* renamed from: u */
    public final AbstractC19222c f34390u;

    /* renamed from: v */
    public final AbstractC11824d f34391v;

    /* renamed from: w */
    public final AbstractC12095d f34392w;

    /* renamed from: x */
    public final a<AbstractC11432m> f34393x;

    /* renamed from: y */
    public final AbstractC19223c0 f34394y;

    /* renamed from: z */
    public final AbstractC19219a0 f34395z;

    @e(c = "com.truecaller.voip.VoipImpl$fetchPresenceIfNotAvailable$1", f = "Voip.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/j$a.class */
    public static final class C11715a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Set f34397f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11715a(Set set, d dVar) {
            super(2, dVar);
            C11714j.this = r5;
            this.f34397f = set;
        }

        /* renamed from: i */
        public final d<s> m24166i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11715a(this.f34397f, dVar);
        }

        /* renamed from: k */
        public final Object m24165k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C11714j c11714j = C11714j.this;
            Set<String> set = this.f34397f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            ((AbstractC11558b) c11714j.f34389t.get()).mo24485g(set);
            return sVar;
        }

        /* renamed from: s */
        public final Object m24164s(Object obj) {
            C25225a.m3932a3(obj);
            ((AbstractC11558b) C11714j.this.f34389t.get()).mo24485g(this.f34397f);
            return s.a;
        }
    }

    @e(c = "com.truecaller.voip.VoipImpl$getGroupCallState$$inlined$flatMapLatest$1", f = "Voip.kt", l = {222}, m = "invokeSuspend")
    /* renamed from: e.a.d.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/j$b.class */
    public static final class C11716b extends i implements q<q3.a.x2.g<? super AbstractC11708i>, k<? extends AbstractC11835f, ? extends AbstractC12111g>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34398e;

        /* renamed from: f */
        public /* synthetic */ Object f34399f;

        /* renamed from: g */
        public int f34400g;

        /* renamed from: h */
        public final /* synthetic */ C11714j f34401h;

        /* renamed from: i */
        public final /* synthetic */ int f34402i;

        @e(c = "com.truecaller.voip.VoipImpl$getGroupCallState$2$1", f = "Voip.kt", l = {403, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_STOPPED}, m = "invokeSuspend")
        /* renamed from: e.a.d.j$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a.class */
        public static final class C11717a extends i implements p<q3.a.x2.g<? super AbstractC11708i>, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f34403e;

            /* renamed from: f */
            public Object f34404f;

            /* renamed from: g */
            public int f34405g;

            /* renamed from: h */
            public final /* synthetic */ k f34406h;

            /* renamed from: i */
            public final /* synthetic */ C11716b f34407i;

            /* renamed from: e.a.d.j$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a$a.class */
            public static final class C11718a implements q3.a.x2.g<AbstractC11840h> {

                /* renamed from: b */
                public final /* synthetic */ q3.a.x2.g f34409b;

                /* renamed from: c */
                public final /* synthetic */ AbstractC11822b f34410c;

                /* renamed from: e.a.d.j$b$a$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a$a$a.class */
                public static final class C11719a extends s1.w.k.a.c {

                    /* renamed from: d */
                    public /* synthetic */ Object f34411d;

                    /* renamed from: e */
                    public int f34412e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C11719a(d dVar) {
                        super(dVar);
                        C11718a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m24157s(Object obj) {
                        this.f34411d = obj;
                        this.f34412e |= Integer.MIN_VALUE;
                        return C11718a.this.m24158a(null, this);
                    }
                }

                @e(c = "com.truecaller.voip.VoipImpl$getGroupCallState$2$1$1$namesFlow$1", f = "Voip.kt", l = {Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_STOPPED}, m = "invokeSuspend")
                /* renamed from: e.a.d.j$b$a$a$b */
                /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a$a$b.class */
                public static final class C11720b extends i implements p<q3.a.x2.g<? super String>, d<? super s>, Object> {

                    /* renamed from: e */
                    public /* synthetic */ Object f34414e;

                    /* renamed from: f */
                    public int f34415f;

                    /* renamed from: g */
                    public final /* synthetic */ C11718a f34416g;

                    /* renamed from: e.a.d.j$b$a$a$b$a */
                    /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a$a$b$a.class */
                    public static final class C11721a implements q3.a.x2.g<AbstractC11376b> {

                        /* renamed from: a */
                        public final /* synthetic */ q3.a.x2.g f34417a;

                        /* renamed from: e.a.d.j$b$a$a$b$a$a */
                        /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a$a$b$a$a.class */
                        public static final class C11722a extends s1.w.k.a.c {

                            /* renamed from: d */
                            public /* synthetic */ Object f34418d;

                            /* renamed from: e */
                            public int f34419e;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            public C11722a(d dVar) {
                                super(dVar);
                                C11721a.this = r4;
                            }

                            /* renamed from: s */
                            public final Object m24152s(Object obj) {
                                this.f34418d = obj;
                                this.f34419e |= Integer.MIN_VALUE;
                                return C11721a.this.m24153a(null, this);
                            }
                        }

                        public C11721a(q3.a.x2.g gVar) {
                            this.f34417a = gVar;
                        }

                        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                        /* JADX WARN: Removed duplicated region for block: B:17:0x0068  */
                        /* renamed from: a */
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public java.lang.Object m24153a(java.lang.Object r6, s1.w.d r7) {
                            /*
                                Method dump skipped, instructions count: 248
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11714j.C11716b.C11717a.C11718a.C11720b.C11721a.m24153a(java.lang.Object, s1.w.d):java.lang.Object");
                        }
                    }

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C11720b(d dVar, C11718a c11718a) {
                        super(2, dVar);
                        this.f34416g = c11718a;
                    }

                    /* renamed from: i */
                    public final d<s> m24156i(Object obj, d<?> dVar) {
                        l.e(dVar, "completion");
                        C11720b c11720b = new C11720b(dVar, this.f34416g);
                        c11720b.f34414e = obj;
                        return c11720b;
                    }

                    /* renamed from: k */
                    public final Object m24155k(Object obj, Object obj2) {
                        d dVar = (d) obj2;
                        l.e(dVar, "completion");
                        C11720b c11720b = new C11720b(dVar, this.f34416g);
                        c11720b.f34414e = obj;
                        return c11720b.m24154s(s.a);
                    }

                    /* renamed from: s */
                    public final Object m24154s(Object obj) {
                        s1.w.j.a aVar = s1.w.j.a.a;
                        int i = this.f34415f;
                        if (i == 0) {
                            C25225a.m3932a3(obj);
                            q3.a.x2.g gVar = (q3.a.x2.g) this.f34414e;
                            AbstractC11592d mo23964d = this.f34416g.f34410c.mo23964d();
                            C11716b c11716b = C11717a.this.f34407i;
                            C11379b0 m13617J0 = C19291g.m13617J0(mo23964d, c11716b.f34401h.f34394y, c11716b.f34402i);
                            q3.a.x2.g c11721a = new C11721a(gVar);
                            this.f34415f = 1;
                            if (m13617J0.m24759c(c11721a, this) == aVar) {
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

                /* renamed from: e.a.d.j$b$a$a$c */
                /* loaded from: classes15-dex2jar.jar:e/a/d/j$b$a$a$c.class */
                public static final class C11723c implements q3.a.x2.g<Long> {

                    /* renamed from: a */
                    public final /* synthetic */ q3.a.x2.f f34421a;

                    /* renamed from: b */
                    public final /* synthetic */ C11718a f34422b;

                    public C11723c(q3.a.x2.f fVar, C11718a c11718a) {
                        this.f34421a = fVar;
                        this.f34422b = c11718a;
                    }

                    /* renamed from: a */
                    public Object m24151a(Object obj, d dVar) {
                        Object a = this.f34422b.f34409b.a(new AbstractC11708i.C11712d(((Number) obj).longValue(), this.f34421a), dVar);
                        return a == s1.w.j.a.a ? a : s.a;
                    }
                }

                public C11718a(q3.a.x2.g gVar, AbstractC11822b abstractC11822b) {
                    C11717a.this = r4;
                    this.f34409b = gVar;
                    this.f34410c = abstractC11822b;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m24158a(java.lang.Object r8, s1.w.d r9) {
                    /*
                        r7 = this;
                        s1.s r0 = s1.s.a
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r11 = r0
                        r0 = r9
                        boolean r0 = r0 instanceof p193e.p194a.p619d.C11714j.C11716b.C11717a.C11718a.C11719a
                        if (r0 == 0) goto L35
                        r0 = r9
                        e.a.d.j$b$a$a$a r0 = (p193e.p194a.p619d.C11714j.C11716b.C11717a.C11718a.C11719a) r0
                        r12 = r0
                        r0 = r12
                        int r0 = r0.f34412e
                        r13 = r0
                        r0 = r13
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L35
                        r0 = r12
                        r1 = r13
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f34412e = r1
                        r0 = r12
                        r9 = r0
                        goto L3f
                    L35:
                        e.a.d.j$b$a$a$a r0 = new e.a.d.j$b$a$a$a
                        r1 = r0
                        r2 = r7
                        r3 = r9
                        r1.<init>(r3)
                        r9 = r0
                    L3f:
                        r0 = r9
                        java.lang.Object r0 = r0.f34411d
                        r12 = r0
                        r0 = r9
                        int r0 = r0.f34412e
                        r13 = r0
                        r0 = r13
                        if (r0 == 0) goto L68
                        r0 = r13
                        r1 = 1
                        if (r0 != r1) goto L5e
                        r0 = r12
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto Lc9
                    L5e:
                        java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                        r1 = r0
                        java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                        r1.<init>(r2)
                        throw r0
                    L68:
                        r0 = r12
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        r0 = r8
                        e.a.d.v.h r0 = (p193e.p194a.p619d.p657v.AbstractC11840h) r0
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11840h.C11851c
                        if (r0 == 0) goto Lc9
                        q3.a.x2.d1 r0 = new q3.a.x2.d1
                        r1 = r0
                        e.a.d.j$b$a$a$b r2 = new e.a.d.j$b$a$a$b
                        r3 = r2
                        r4 = 0
                        r5 = r7
                        r3.<init>(r4, r5)
                        r1.<init>(r2)
                        r12 = r0
                        r0 = r7
                        e.a.d.v.b r0 = r0.f34410c
                        q3.a.x2.i1 r0 = r0.mo23704f()
                        r8 = r0
                        e.a.d.j$b$a$a$c r0 = new e.a.d.j$b$a$a$c
                        r1 = r0
                        r2 = r12
                        r3 = r7
                        r1.<init>(r2, r3)
                        r12 = r0
                        r0 = r9
                        r1 = 1
                        r0.f34412e = r1
                        r0 = r8
                        q3.a.x2.t0$a r1 = new q3.a.x2.t0$a
                        r2 = r1
                        r3 = r12
                        r2.<init>(r3)
                        r2 = r9
                        java.lang.Object r0 = r0.c(r1, r2)
                        r8 = r0
                        r0 = r8
                        r1 = r11
                        if (r0 != r1) goto Lbe
                        goto Lc0
                    Lbe:
                        r0 = r10
                        r8 = r0
                    Lc0:
                        r0 = r8
                        r1 = r11
                        if (r0 != r1) goto Lc9
                        r0 = r11
                        return r0
                    Lc9:
                        r0 = r10
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11714j.C11716b.C11717a.C11718a.m24158a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11717a(k kVar, d dVar, C11716b c11716b) {
                super(2, dVar);
                this.f34406h = kVar;
                this.f34407i = c11716b;
            }

            /* renamed from: i */
            public final d<s> m24161i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C11717a c11717a = new C11717a(this.f34406h, dVar, this.f34407i);
                c11717a.f34403e = obj;
                return c11717a;
            }

            /* renamed from: k */
            public final Object m24160k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C11717a c11717a = new C11717a(this.f34406h, dVar, this.f34407i);
                c11717a.f34403e = obj;
                return c11717a.m24159s(s.a);
            }

            /* renamed from: s */
            public final Object m24159s(Object obj) {
                AbstractC11822b abstractC11822b;
                q3.a.x2.g gVar;
                s1.w.j.a aVar = s1.w.j.a.a;
                int i = this.f34405g;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    gVar = (q3.a.x2.g) this.f34403e;
                    Object obj2 = this.f34406h.a;
                    Objects.requireNonNull(obj2, "null cannot be cast to non-null type com.truecaller.voip.groupcall.GroupCallManagerState.Active");
                    abstractC11822b = ((AbstractC11835f.C11836a) obj2).f34807a;
                    AbstractC11708i.C11709a c11709a = new AbstractC11708i.C11709a(abstractC11822b.mo23963m() == CallDirection.OUTGOING);
                    this.f34403e = gVar;
                    this.f34404f = abstractC11822b;
                    this.f34405g = 1;
                    if (gVar.a(c11709a, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C25225a.m3932a3(obj);
                    return s.a;
                } else {
                    abstractC11822b = (AbstractC11822b) this.f34404f;
                    C25225a.m3932a3(obj);
                    gVar = (q3.a.x2.g) this.f34403e;
                }
                i1<AbstractC11840h> state = abstractC11822b.getState();
                C11718a c11718a = new C11718a(gVar, abstractC11822b);
                this.f34403e = null;
                this.f34404f = null;
                this.f34405g = 2;
                if (state.c(c11718a, this) == aVar) {
                    return aVar;
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11716b(d dVar, C11714j c11714j, int i) {
            super(3, dVar);
            this.f34401h = c11714j;
            this.f34402i = i;
        }

        /* renamed from: h */
        public final Object m24163h(Object obj, Object obj2, Object obj3) {
            C11716b c11716b = new C11716b((d) obj3, this.f34401h, this.f34402i);
            c11716b.f34398e = (q3.a.x2.g) obj;
            c11716b.f34399f = obj2;
            return c11716b.m24162s(s.a);
        }

        /* renamed from: s */
        public final Object m24162s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34400g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                q3.a.x2.g gVar = (q3.a.x2.g) this.f34398e;
                k kVar = (k) this.f34399f;
                Object obj2 = kVar.a;
                q3.a.x2.f kVar2 = obj2 instanceof AbstractC11835f.C11838c ? new q3.a.x2.k(AbstractC11708i.C11713e.f34369a) : obj2 instanceof AbstractC11835f.C11836a ? new d1(new C11717a(kVar, null, this)) : kVar.b instanceof AbstractC12111g.C12112a ? new q3.a.x2.k(AbstractC11708i.C11711c.f34366a) : new q3.a.x2.k(AbstractC11708i.C11710b.f34365a);
                this.f34400g = 1;
                if (kVar2.c(gVar, this) == aVar) {
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

    @e(c = "com.truecaller.voip.VoipImpl$getGroupCallState$1", f = "Voip.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.j$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/j$c.class */
    public static final class C11724c extends i implements q<AbstractC11835f, AbstractC12111g, d<? super k<? extends AbstractC11835f, ? extends AbstractC12111g>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f34423e;

        /* renamed from: f */
        public /* synthetic */ Object f34424f;

        public C11724c(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m24150h(Object obj, Object obj2, Object obj3) {
            AbstractC11835f abstractC11835f = (AbstractC11835f) obj;
            AbstractC12111g abstractC12111g = (AbstractC12111g) obj2;
            d dVar = (d) obj3;
            l.e(abstractC11835f, "groupCallState");
            l.e(abstractC12111g, "invitationState");
            l.e(dVar, "continuation");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return new k(abstractC11835f, abstractC12111g);
        }

        /* renamed from: s */
        public final Object m24149s(Object obj) {
            C25225a.m3932a3(obj);
            return new k((AbstractC11835f) this.f34423e, (AbstractC12111g) this.f34424f);
        }
    }

    @e(c = "com.truecaller.voip.VoipImpl$onLogout$1", f = "Voip.kt", l = {455}, m = "invokeSuspend")
    /* renamed from: e.a.d.j$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/j$d.class */
    public static final class C11725d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f34425e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11725d(d dVar) {
            super(2, dVar);
            C11714j.this = r5;
        }

        /* renamed from: i */
        public final d<s> m24148i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11725d(dVar);
        }

        /* renamed from: k */
        public final Object m24147k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11725d(dVar).m24146s(s.a);
        }

        /* renamed from: s */
        public final Object m24146s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f34425e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC11556y0 abstractC11556y0 = C11714j.this.f34384o;
                this.f34425e = 1;
                if (abstractC11556y0.mo24452d(this) == aVar) {
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

    @e(c = "com.truecaller.voip.VoipImpl$startCall$$inlined$startCallInternal$1", f = "Voip.kt", l = {718, 322}, m = "invokeSuspend")
    /* renamed from: e.a.d.j$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/j$e.class */
    public static final class C11726e extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34427e;

        /* renamed from: f */
        public int f34428f;

        /* renamed from: h */
        public final /* synthetic */ String f34430h;

        /* renamed from: i */
        public final /* synthetic */ C11714j f34431i;

        /* renamed from: j */
        public final /* synthetic */ String f34432j;

        /* renamed from: k */
        public final /* synthetic */ VoipCallOptions f34433k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11726e(String str, d dVar, C11714j c11714j, String str2, VoipCallOptions voipCallOptions) {
            super(2, dVar);
            C11714j.this = r5;
            this.f34430h = str;
            this.f34431i = c11714j;
            this.f34432j = str2;
            this.f34433k = voipCallOptions;
        }

        /* renamed from: i */
        public final d<s> m24145i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11726e(this.f34430h, dVar, this.f34431i, this.f34432j, this.f34433k);
        }

        /* renamed from: k */
        public final Object m24144k(Object obj, Object obj2) {
            return m24145i(obj, (d) obj2).m24143s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x00de  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24143s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 401
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11714j.C11726e.m24143s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.voip.VoipImpl$startGroupCall$$inlined$startCallInternal$1", f = "Voip.kt", l = {718, 322}, m = "invokeSuspend")
    /* renamed from: e.a.d.j$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/j$f.class */
    public static final class C11727f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f34434e;

        /* renamed from: f */
        public int f34435f;

        /* renamed from: h */
        public final /* synthetic */ String f34437h;

        /* renamed from: i */
        public final /* synthetic */ C11714j f34438i;

        /* renamed from: j */
        public final /* synthetic */ Set f34439j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11727f(String str, d dVar, C11714j c11714j, Set set) {
            super(2, dVar);
            C11714j.this = r5;
            this.f34437h = str;
            this.f34438i = c11714j;
            this.f34439j = set;
        }

        /* renamed from: i */
        public final d<s> m24142i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11727f(this.f34437h, dVar, this.f34438i, this.f34439j);
        }

        /* renamed from: k */
        public final Object m24141k(Object obj, Object obj2) {
            return m24142i(obj, (d) obj2).m24140s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x00dd  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m24140s(java.lang.Object r13) {
            /*
                Method dump skipped, instructions count: 360
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.C11714j.C11727f.m24140s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C11714j(@Named("UI") f fVar, @Named("IO") f fVar2, Context context, AbstractC14965w abstractC14965w, a<AbstractC14967y> aVar, AbstractC11706g abstractC11706g, AbstractC12217m abstractC12217m, a<AbstractC12284n> aVar2, a<AbstractC12285o> aVar3, a<AbstractC11421j1> aVar4, a<AbstractC11796a> aVar5, a<AbstractC11440o1> aVar6, AbstractC11405f0 abstractC11405f0, AbstractC11556y0 abstractC11556y0, a<AbstractC11434m1> aVar7, a<AbstractC11409g1> aVar8, a<AbstractC11369a> aVar9, AbstractC11440o1 abstractC11440o1, a<AbstractC11558b> aVar10, AbstractC19222c abstractC19222c, AbstractC11824d abstractC11824d, AbstractC12095d abstractC12095d, a<AbstractC11432m> aVar11, AbstractC19223c0 abstractC19223c0, AbstractC19219a0 abstractC19219a0) {
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC14965w, "tcPermissionUtil");
        l.e(aVar, "tcPermissionsView");
        l.e(abstractC11706g, "voipConfig");
        l.e(abstractC12217m, "voipPresenceManager");
        l.e(aVar2, "rtmLoginManager");
        l.e(aVar3, "rtmManager");
        l.e(aVar4, "support");
        l.e(aVar5, "voipDao");
        l.e(aVar6, "voipTokenProvider");
        l.e(abstractC11405f0, "voipAnalyticsUtil");
        l.e(abstractC11556y0, "voipIdProvider");
        l.e(aVar7, "voipTelecomUtil");
        l.e(aVar8, "voipSettings");
        l.e(aVar9, "targetDomainResolver");
        l.e(abstractC11440o1, "tokenProvider");
        l.e(aVar10, "availabilityUtil");
        l.e(abstractC19222c, "clock");
        l.e(abstractC11824d, "groupCallManager");
        l.e(abstractC12095d, "invitationManager");
        l.e(aVar11, "groupVoicePromoManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19219a0, "permissionUtil");
        this.f34371b = fVar;
        this.f34372c = fVar2;
        this.f34373d = context;
        this.f34374e = abstractC14965w;
        this.f34375f = aVar;
        this.f34376g = abstractC11706g;
        this.f34377h = abstractC12217m;
        this.f34378i = aVar2;
        this.f34379j = aVar3;
        this.f34380k = aVar4;
        this.f34381l = aVar5;
        this.f34382m = aVar6;
        this.f34383n = abstractC11405f0;
        this.f34384o = abstractC11556y0;
        this.f34385p = aVar7;
        this.f34386q = aVar8;
        this.f34387r = aVar9;
        this.f34388s = abstractC11440o1;
        this.f34389t = aVar10;
        this.f34390u = abstractC19222c;
        this.f34391v = abstractC11824d;
        this.f34392w = abstractC12095d;
        this.f34393x = aVar11;
        this.f34394y = abstractC19223c0;
        this.f34395z = abstractC19219a0;
    }

    /* renamed from: C */
    public static final void m24193C(C11714j c11714j, VoipPushNotification voipPushNotification) {
        Objects.requireNonNull(c11714j);
        String str = voipPushNotification.f16273d;
        if (str == null || r.p(str)) {
            return;
        }
        AbstractC11421j1 abstractC11421j1 = (AbstractC11421j1) c11714j.f34380k.get();
        StringBuilder m8558w = C22128a.m8558w('+');
        m8558w.append(voipPushNotification.f16273d);
        abstractC11421j1.mo24123F(new C11508w0(m8558w.toString(), VoipEventType.MISSED, 0L, Long.valueOf(voipPushNotification.f16270a), 4));
        Context context = c11714j.f34373d;
        l.e(context, AnalyticsConstants.CONTEXT);
        C26842r m1272b = new C26842r.C26843a(MissedVoipCallsWorker.class).m1268f(300L, TimeUnit.MILLISECONDS).m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        C26842r c26842r = m1272b;
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        m1431n.m1279i("com.truecaller.voip.incoming.missed.MissedVoipCallsWorker", EnumC26832h.REPLACE, c26842r);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: A */
    public void mo24195A(boolean z) {
        ((AbstractC11409g1) this.f34386q.get()).putBoolean("qaForceEncryption", z);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: B */
    public q3.a.x2.f<AbstractC11708i> mo24194B(int i) {
        return s1.a.a.a.v0.f.d.F0(s1.a.a.a.v0.f.d.P3(new w0(this.f34391v.getState(), this.f34392w.getState(), new C11724c(null)), new C11716b(null, this, i)));
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: a */
    public boolean mo24192a() {
        return ((AbstractC11432m) this.f34393x.get()).mo24696a();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: b */
    public void mo24191b() {
        ((AbstractC11432m) this.f34393x.get()).mo24695b();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: c */
    public void mo24190c() {
        this.f34377h.mo23436c();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: d */
    public Object mo24189d(d<? super Set<String>> dVar) {
        return ((AbstractC11558b) this.f34389t.get()).mo24488d(dVar);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: e */
    public void mo24188e(String str, boolean z) {
        l.e(str, "number");
        Intent m34333f = LegacyVoipService.m34333f(this.f34373d, str);
        m34333f.putExtra("com.truecaller.voip.incoming.EXTRA_FROM_MISSED_CALL", true);
        C26467a.m1796f(this.f34373d, m34333f);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: f */
    public void mo24187f() {
        this.f34377h.mo23437a();
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11725d(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: g */
    public void mo24186g(Set<String> set) {
        l.e(set, "numbers");
        s1.a.a.a.v0.f.d.w2(this, this.f34372c, (j0) null, new C11715a(set, null), 2, (Object) null);
    }

    public f getCoroutineContext() {
        return this.f34371b;
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: h */
    public Object mo24185h(List<String> list, d<? super List<VoipAvailability>> dVar) {
        return ((AbstractC11558b) this.f34389t.get()).mo24484h(list, dVar);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: i */
    public boolean mo24184i(String str) {
        return ((AbstractC11434m1) this.f34385p.get()).mo24689i(str);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    public boolean isEnabled() {
        return ((C11704e) this.f34376g).m24197a();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: j */
    public Object mo24183j(d<? super Set<String>> dVar) {
        return ((AbstractC11558b) this.f34389t.get()).mo24482j(dVar);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: k */
    public void mo24182k(String str, String str2, VoipCallOptions voipCallOptions) {
        l.e(str, "number");
        l.e(str2, "analyticsContext");
        l.e(voipCallOptions, "callOptions");
        if (isEnabled()) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11726e(str2, null, this, str, voipCallOptions), 3, (Object) null);
            return;
        }
        Context context = this.f34373d;
        Toast.makeText(context, context.getString(C4781R.string.voip_not_supported, context.getString(C4781R.string.voip_text)), 0).show();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: l */
    public void mo24181l(Set<String> set, String str) {
        l.e(set, "peersToCall");
        l.e(str, "analyticsContext");
        if (!((C11704e) this.f34376g).m24196b()) {
            return;
        }
        this.f34383n.mo24711h(str, set.size() == 1 ? (String) s1.u.i.A(set) : null, VoipSearchDirection.OUTGOING);
        if (isEnabled()) {
            s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C11727f(str, null, this, set), 3, (Object) null);
            return;
        }
        Context context = this.f34373d;
        Toast.makeText(context, context.getString(C4781R.string.voip_not_supported, context.getString(C4781R.string.voip_text)), 0).show();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: m */
    public void mo24180m(boolean z) {
        ((AbstractC11409g1) this.f34386q.get()).putBoolean("qaShowDebugUI", z);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: n */
    public void mo24179n() {
        Context context = this.f34373d;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, InvitationService.class);
        intent.setAction("DebugInvitation");
        C26467a.m1796f(context, intent);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: o */
    public void mo24178o(VoipAssistantPushNotification voipAssistantPushNotification) {
        l.e(voipAssistantPushNotification, "voipAssistantPushNotification");
        Context context = this.f34373d;
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(voipAssistantPushNotification, "voipAssistantPushNotification");
        Intent intent = new Intent(context, InvitationService.class);
        intent.setAction("DebugAssistant");
        intent.putExtra("AssistantInvitation", voipAssistantPushNotification);
        C26467a.m1796f(context, intent);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: p */
    public void mo24177p() {
        VoipActivity.C4839b c4839b = VoipActivity.f16434m;
        Context context = this.f34373d;
        l.e(context, AnalyticsConstants.CONTEXT);
        context.startActivity(c4839b.m34293a(context, false));
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: q */
    public boolean mo24176q() {
        return ((AbstractC11409g1) this.f34386q.get()).getBoolean("qaShowDebugUI", false);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: r */
    public boolean mo24175r() {
        return ((C11704e) this.f34376g).m24196b();
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: s */
    public void mo24174s(Long l) {
        if (l == null) {
            ((AbstractC11409g1) this.f34386q.get()).remove("qaOwnIdExpirationEpochSeconds");
        } else {
            ((AbstractC11409g1) this.f34386q.get()).putLong("qaOwnIdExpirationEpochSeconds", l.longValue());
        }
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: t */
    public void mo24173t() {
        if (!isEnabled()) {
            return;
        }
        Context context = this.f34373d;
        l.e(context, AnalyticsConstants.CONTEXT);
        C26842r m1272b = new C26842r.C26843a(MissedVoipCallsWorker.class).m1268f(300L, TimeUnit.MILLISECONDS).m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…\n                .build()");
        C26842r c26842r = m1272b;
        C26702l m1431n = C26702l.m1431n(context);
        l.d(m1431n, "WorkManager.getInstance(context)");
        m1431n.m1279i("com.truecaller.voip.incoming.missed.MissedVoipCallsWorker", EnumC26832h.REPLACE, c26842r);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: u */
    public void mo24172u() {
        Context context = this.f34373d;
        CallService.C4816a c4816a = CallService.f16392j;
        l.e(context, AnalyticsConstants.CONTEXT);
        Intent intent = new Intent(context, CallService.class);
        intent.setAction("DebugOutgoingCall");
        C26467a.m1796f(context, intent);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: v */
    public void mo24171v(VoipPushNotification voipPushNotification) {
        l.e(voipPushNotification, RemoteMessageConst.NOTIFICATION);
        String str = "New voip push notification is received. Sender id " + voipPushNotification;
        if (!isEnabled()) {
            return;
        }
        if (voipPushNotification.f16272c == null) {
            AssertionUtil.reportThrowableButNeverCrash(new UnmutedException.C4147f(C22128a.m8630e(C22128a.m8728C("Invalid voip notification. Sender id is null. Action: "), voipPushNotification.f16271b, '.')));
            return;
        }
        String str2 = voipPushNotification.f16271b;
        if (str2 == null || str2.hashCode() != 3625376 || !str2.equals("voip")) {
            return;
        }
        String str3 = voipPushNotification.f16279j;
        if (str3 != null) {
            this.f34383n.mo24715d(new C11395e0(VoipAnalyticsCallDirection.INCOMING, str3, null, null, null, null, null, false, 252), VoipAnalyticsState.WAKE_UP_RECEIVED, null);
        }
        s1.a.a.a.v0.f.d.w2(this, this.f34372c, (j0) null, new C11728k(this, voipPushNotification, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: w */
    public Long mo24170w() {
        Long valueOf = Long.valueOf(((AbstractC11409g1) this.f34386q.get()).getLong("qaOwnIdExpirationEpochSeconds", -1L));
        if (!(valueOf.longValue() > 0)) {
            valueOf = null;
        }
        return valueOf;
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: x */
    public void mo24169x(VoipGroupPushNotification voipGroupPushNotification) {
        l.e(voipGroupPushNotification, RemoteMessageConst.NOTIFICATION);
        String str = "On new voip group push notification. " + voipGroupPushNotification;
        if (!((C11704e) this.f34376g).m24196b()) {
            return;
        }
        C10480a.m26045M1("Starting service InvitationService");
        if (Build.VERSION.SDK_INT < 31) {
            Context context = this.f34373d;
            C26467a.m1796f(context, InvitationService.m34302k(context, voipGroupPushNotification));
            return;
        }
        try {
            Context context2 = this.f34373d;
            C26467a.m1796f(context2, InvitationService.m34302k(context2, voipGroupPushNotification));
        } catch (ForegroundServiceStartNotAllowedException e) {
            String str2 = voipGroupPushNotification.f16267b;
            if (str2 == null) {
                return;
            }
            this.f34383n.mo24717b(str2);
        }
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: y */
    public boolean mo24168y() {
        return ((AbstractC11409g1) this.f34386q.get()).getBoolean("qaForceEncryption", false);
    }

    @Override // p193e.p194a.p619d.AbstractC11705f
    /* renamed from: z */
    public int mo24167z() {
        return ((C11704e) this.f34376g).m24196b() ? 4 : 3;
    }
}
