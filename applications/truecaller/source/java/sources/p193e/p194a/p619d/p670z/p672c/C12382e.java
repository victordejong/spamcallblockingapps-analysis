package p193e.p194a.p619d.p670z.p672c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.voip.C4781R;
import com.truecaller.voip.VoipGroupPushNotification;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1213s2.AbstractC20194a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p619d.AbstractC11706g;
import p193e.p194a.p619d.p637c0.AbstractC11394e;
import p193e.p194a.p619d.p637c0.AbstractC11405f0;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11589b;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import p193e.p194a.p619d.p661w.AbstractC12114h;
import p193e.p194a.p619d.p666y.p669c.AbstractC12326k;
import q3.a.b3.c;
import q3.a.b3.g;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.z.c.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e.class */
public final class C12382e extends AbstractC20574a<AbstractC12377c> implements AbstractC12376b {

    /* renamed from: d */
    public VoipGroupPushNotification f36118d;

    /* renamed from: e */
    public final c f36119e = g.a(false, 1);

    /* renamed from: f */
    public final f f36120f;

    /* renamed from: g */
    public final AbstractC12095d f36121g;

    /* renamed from: h */
    public final AbstractC11706g f36122h;

    /* renamed from: i */
    public final AbstractC19223c0 f36123i;

    /* renamed from: j */
    public final AbstractC12326k f36124j;

    /* renamed from: k */
    public final AbstractC11394e f36125k;

    /* renamed from: l */
    public final AbstractC11589b f36126l;

    /* renamed from: m */
    public final AbstractC11405f0 f36127m;

    /* renamed from: n */
    public final AbstractC20194a f36128n;

    /* renamed from: e.a.d.z.c.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$a.class */
    public static final class C12383a implements q3.a.x2.f<Object> {

        /* renamed from: a */
        public final /* synthetic */ q3.a.x2.f f36129a;

        /* renamed from: e.a.d.z.c.e$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$a$a.class */
        public static final class C12384a implements q3.a.x2.g<Object> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.g f36130a;

            @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$exitWhenInvitationIsEnded$$inlined$filterIsInstance$1$2", f = "InvitationServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.c.e$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$a$a$a.class */
            public static final class C12385a extends s1.w.k.a.c {

                /* renamed from: d */
                public /* synthetic */ Object f36131d;

                /* renamed from: e */
                public int f36132e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12385a(d dVar) {
                    super(dVar);
                    C12384a.this = r4;
                }

                /* renamed from: s */
                public final Object m23141s(Object obj) {
                    this.f36131d = obj;
                    this.f36132e |= Integer.MIN_VALUE;
                    return C12384a.this.m23142a(null, this);
                }
            }

            public C12384a(q3.a.x2.g gVar, C12383a c12383a) {
                this.f36130a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23142a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p672c.C12382e.C12383a.C12384a.C12385a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.z.c.e$a$a$a r0 = (p193e.p194a.p619d.p670z.p672c.C12382e.C12383a.C12384a.C12385a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f36132e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36132e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.z.c.e$a$a$a r0 = new e.a.d.z.c.e$a$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f36131d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f36132e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L90
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
                    q3.a.x2.g r0 = r0.f36130a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.AbstractC12114h.AbstractC12116b
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f36132e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L90
                    r0 = r9
                    return r0
                L90:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12382e.C12383a.C12384a.m23142a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12383a(q3.a.x2.f fVar) {
            this.f36129a = fVar;
        }

        /* renamed from: c */
        public Object m23143c(q3.a.x2.g gVar, d dVar) {
            Object c = this.f36129a.c(new C12384a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$exitWhenInvitationIsEnded$2$1", f = "InvitationServicePresenter.kt", l = {285}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.c.e$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$b.class */
    public static final class C12386b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36134e;

        /* renamed from: f */
        public final /* synthetic */ C12382e f36135f;

        /* renamed from: g */
        public final /* synthetic */ AbstractC12093b f36136g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12386b(d dVar, C12382e c12382e, AbstractC12093b abstractC12093b) {
            super(2, dVar);
            this.f36135f = c12382e;
            this.f36136g = abstractC12093b;
        }

        /* renamed from: i */
        public final d<s> m23140i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12386b(dVar, this.f36135f, this.f36136g);
        }

        /* renamed from: k */
        public final Object m23139k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12386b(dVar, this.f36135f, this.f36136g).m23138s(s.a);
        }

        /* renamed from: s */
        public final Object m23138s(Object obj) {
            a aVar = a.a;
            int i = this.f36134e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C12382e c12382e = this.f36135f;
                AbstractC12093b abstractC12093b = this.f36136g;
                this.f36134e = 1;
                if (c12382e.m23147Lj(abstractC12093b, this) == aVar) {
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

    @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter", f = "InvitationServicePresenter.kt", l = {325, 270, 336}, m = "exitWhenInvitationIsEnded")
    /* renamed from: e.a.d.z.c.e$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$c.class */
    public static final class C12387c extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f36137d;

        /* renamed from: e */
        public int f36138e;

        /* renamed from: g */
        public Object f36140g;

        /* renamed from: h */
        public Object f36141h;

        /* renamed from: i */
        public Object f36142i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12387c(d dVar) {
            super(dVar);
            C12382e.this = r4;
        }

        /* renamed from: s */
        public final Object m23137s(Object obj) {
            this.f36137d = obj;
            this.f36138e |= Integer.MIN_VALUE;
            return C12382e.this.m23147Lj(null, this);
        }
    }

    @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter", f = "InvitationServicePresenter.kt", l = {137, 141, 145}, m = "handleNewInvitation")
    /* renamed from: e.a.d.z.c.e$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$d.class */
    public static final class C12388d extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f36143d;

        /* renamed from: e */
        public int f36144e;

        /* renamed from: g */
        public Object f36146g;

        /* renamed from: h */
        public Object f36147h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12388d(d dVar) {
            super(dVar);
            C12382e.this = r4;
        }

        /* renamed from: s */
        public final Object m23136s(Object obj) {
            this.f36143d = obj;
            this.f36144e |= Integer.MIN_VALUE;
            return C12382e.this.m23146Mj(null, this);
        }
    }

    @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter", f = "InvitationServicePresenter.kt", l = {180, 189}, m = "showMissedCallNotification")
    /* renamed from: e.a.d.z.c.e$e */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$e.class */
    public static final class C12389e extends s1.w.k.a.c {

        /* renamed from: d */
        public /* synthetic */ Object f36148d;

        /* renamed from: e */
        public int f36149e;

        /* renamed from: g */
        public Object f36151g;

        /* renamed from: h */
        public Object f36152h;

        /* renamed from: i */
        public Object f36153i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12389e(d dVar) {
            super(dVar);
            C12382e.this = r4;
        }

        /* renamed from: s */
        public final Object m23135s(Object obj) {
            this.f36148d = obj;
            this.f36149e |= Integer.MIN_VALUE;
            return C12382e.this.m23145Nj(null, null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$updateNotification$1", f = "InvitationServicePresenter.kt", l = {196}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.c.e$f */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$f.class */
    public static final class C12390f extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f36154e;

        /* renamed from: g */
        public final /* synthetic */ AbstractC12093b f36156g;

        @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$updateNotification$1$1", f = "InvitationServicePresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.d.z.c.e$f$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/e$f$a.class */
        public static final class C12391a extends i implements p<AbstractC12114h, d<? super Boolean>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f36157e;

            public C12391a(d dVar) {
                super(2, dVar);
            }

            /* renamed from: i */
            public final d<s> m23131i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12391a c12391a = new C12391a(dVar);
                c12391a.f36157e = obj;
                return c12391a;
            }

            /* renamed from: k */
            public final Object m23130k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return Boolean.valueOf(l.a((AbstractC12114h) obj, AbstractC12114h.C12129c.f35465b));
            }

            /* renamed from: s */
            public final Object m23129s(Object obj) {
                C25225a.m3932a3(obj);
                return Boolean.valueOf(l.a((AbstractC12114h) this.f36157e, AbstractC12114h.C12129c.f35465b));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12390f(AbstractC12093b abstractC12093b, d dVar) {
            super(2, dVar);
            C12382e.this = r5;
            this.f36156g = abstractC12093b;
        }

        /* renamed from: i */
        public final d<s> m23134i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12390f(this.f36156g, dVar);
        }

        /* renamed from: k */
        public final Object m23133k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C12390f(this.f36156g, dVar).m23132s(s.a);
        }

        /* renamed from: s */
        public final Object m23132s(Object obj) {
            a aVar = a.a;
            int i = this.f36154e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i1<AbstractC12114h> state = this.f36156g.getState();
                C12391a c12391a = new C12391a(null);
                this.f36154e = 1;
                if (s1.a.a.a.v0.f.d.N0(state, c12391a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C12382e c12382e = C12382e.this;
            AbstractC12093b abstractC12093b = this.f36156g;
            Objects.requireNonNull(c12382e);
            s1.a.a.a.v0.f.d.w2(c12382e, (f) null, (j0) null, new C12395i(c12382e, abstractC12093b, null), 3, (Object) null);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12382e(@Named("UI") f fVar, AbstractC12095d abstractC12095d, AbstractC11706g abstractC11706g, AbstractC19223c0 abstractC19223c0, AbstractC12326k abstractC12326k, AbstractC11394e abstractC11394e, AbstractC11589b abstractC11589b, AbstractC11405f0 abstractC11405f0, AbstractC20194a abstractC20194a) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC12095d, "invitationManager");
        l.e(abstractC11706g, DTBMetricsConfiguration.CONFIG_DIR);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC12326k, "missedVoipNotification");
        l.e(abstractC11394e, "callUserResolver");
        l.e(abstractC11589b, "busyCallInvitationHandler");
        l.e(abstractC11405f0, "analyticsUtil");
        l.e(abstractC20194a, "announceCallerId");
        this.f36120f = fVar;
        this.f36121g = abstractC12095d;
        this.f36122h = abstractC11706g;
        this.f36123i = abstractC19223c0;
        this.f36124j = abstractC12326k;
        this.f36125k = abstractC11394e;
        this.f36126l = abstractC11589b;
        this.f36127m = abstractC11405f0;
        this.f36128n = abstractC20194a;
    }

    /* renamed from: Ij */
    public static final void m23150Ij(C12382e c12382e) {
        if (!c12382e.f36121g.mo23617g()) {
            c12382e.m23148Kj();
        }
    }

    /* renamed from: Jj */
    public static final String m23149Jj(C12382e c12382e) {
        AbstractC19223c0 abstractC19223c0 = c12382e.f36123i;
        String mo13768b = abstractC19223c0.mo13768b(C4781R.string.voip_status_incoming_audio_call, abstractC19223c0.mo13768b(C4781R.string.voip_text, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri…ring.voip_text)\n        )");
        return mo13768b;
    }

    /* renamed from: Kj */
    public final void m23148Kj() {
        s1.a.a.a.v0.f.d.T(m11016Hj(), (CancellationException) null, 1, (Object) null);
        AbstractC12377c abstractC12377c = (AbstractC12377c) this.f57683a;
        if (abstractC12377c != null) {
            abstractC12377c.mo23157t();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b7  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00fe  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0204 A[Catch: all -> 0x022f, TRY_LEAVE, TryCatch #0 {all -> 0x022f, blocks: (B:53:0x01f8, B:55:0x0204, B:56:0x020b), top: B:63:0x01f8 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x020b A[Catch: all -> 0x022f, TRY_ENTER, TryCatch #0 {all -> 0x022f, blocks: (B:53:0x01f8, B:55:0x0204, B:56:0x020b), top: B:63:0x01f8 }] */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23147Lj(p193e.p194a.p619d.p661w.AbstractC12093b r9, s1.w.d<? super s1.s> r10) {
        /*
            Method dump skipped, instructions count: 569
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12382e.m23147Lj(e.a.d.w.b, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01cc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0213  */
    /* renamed from: Mj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23146Mj(com.truecaller.voip.VoipGroupPushNotification r14, s1.w.d<? super s1.s> r15) {
        /*
            Method dump skipped, instructions count: 551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12382e.m23146Mj(com.truecaller.voip.VoipGroupPushNotification, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x016c  */
    /* renamed from: Nj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m23145Nj(q3.a.x2.f<? extends java.util.Set<? extends q3.a.x2.i1<? extends p193e.p194a.p619d.p637c0.AbstractC11416j>>> r8, com.truecaller.voip.VoipGroupPushNotification r9, java.util.List<java.lang.String> r10, s1.w.d<? super s1.s> r11) {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12382e.m23145Nj(q3.a.x2.f, com.truecaller.voip.VoipGroupPushNotification, java.util.List, s1.w.d):java.lang.Object");
    }

    /* renamed from: Oj */
    public final p1 m23144Oj(AbstractC12093b abstractC12093b) {
        return s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12390f(abstractC12093b, null), 3, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, e.a.d.z.c.c, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC12377c abstractC12377c) {
        AbstractC12377c abstractC12377c2 = abstractC12377c;
        l.e(abstractC12377c2, "presenterView");
        this.f57683a = abstractC12377c2;
        abstractC12377c2.mo23161f();
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12399k(this, null), 3, (Object) null);
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C12378d(this, null), 3, (Object) null);
    }
}
