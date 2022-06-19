package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.util.VoipTone;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.AbstractC11387c0;
import p193e.p194a.p619d.p637c0.AbstractC11438o;
import p193e.p194a.p619d.p657v.C11839g;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.u.u;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.d.v.k.s0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0.class */
public final class C11981s0 implements i0, AbstractC11977r0 {

    /* renamed from: a */
    public final AbstractC11438o f35173a;

    /* renamed from: b */
    public final C11839g f35174b;

    /* renamed from: c */
    public final /* synthetic */ i0 f35175c;

    @e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$playTones$1", f = "PlayTonesOnGroupCall.kt", l = {104}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.s0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a.class */
    public static final class C11982a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f35176e;

        /* renamed from: e.a.d.v.k.s0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$a.class */
        public static final class C11983a implements g<VoipTone> {
            public C11983a() {
                C11982a.this = r4;
            }

            /* renamed from: a */
            public Object m23746a(Object obj, d dVar) {
                Object mo24685c = C11981s0.this.f35173a.mo24685c((VoipTone) obj, dVar);
                return mo24685c == a.a ? mo24685c : s.a;
            }
        }

        /* renamed from: e.a.d.v.k.s0$a$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$b.class */
        public static final class C11984b implements f<Object> {

            /* renamed from: a */
            public final /* synthetic */ f f35179a;

            /* renamed from: e.a.d.v.k.s0$a$b$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$b$a.class */
            public static final class C11985a implements g<Object> {

                /* renamed from: a */
                public final /* synthetic */ g f35180a;

                @e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$playTones$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "PlayTonesOnGroupCall.kt", l = {135}, m = "emit")
                /* renamed from: e.a.d.v.k.s0$a$b$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$b$a$a.class */
                public static final class C11986a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f35181d;

                    /* renamed from: e */
                    public int f35182e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C11986a(d dVar) {
                        super(dVar);
                        C11985a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m23743s(Object obj) {
                        this.f35181d = obj;
                        this.f35182e |= Integer.MIN_VALUE;
                        return C11985a.this.m23744a(null, this);
                    }
                }

                public C11985a(g gVar, C11984b c11984b) {
                    this.f35180a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m23744a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        s1.s r0 = s1.s.a
                        r8 = r0
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p658k.C11981s0.C11982a.C11984b.C11985a.C11986a
                        if (r0 == 0) goto L30
                        r0 = r7
                        e.a.d.v.k.s0$a$b$a$a r0 = (p193e.p194a.p619d.p657v.p658k.C11981s0.C11982a.C11984b.C11985a.C11986a) r0
                        r9 = r0
                        r0 = r9
                        int r0 = r0.f35182e
                        r10 = r0
                        r0 = r10
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L30
                        r0 = r9
                        r1 = r10
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f35182e = r1
                        r0 = r9
                        r7 = r0
                        goto L3a
                    L30:
                        e.a.d.v.k.s0$a$b$a$a r0 = new e.a.d.v.k.s0$a$b$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L3a:
                        r0 = r7
                        java.lang.Object r0 = r0.f35181d
                        r11 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r9 = r0
                        r0 = r7
                        int r0 = r0.f35182e
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
                        q3.a.x2.g r0 = r0.f35180a
                        r11 = r0
                        r0 = r6
                        boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.AbstractC11387c0.C11388a
                        if (r0 == 0) goto L90
                        r0 = r7
                        r1 = 1
                        r0.f35182e = r1
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
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11981s0.C11982a.C11984b.C11985a.m23744a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C11984b(f fVar) {
                this.f35179a = fVar;
            }

            /* renamed from: c */
            public Object m23745c(g gVar, d dVar) {
                Object c = this.f35179a.c(new C11985a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.d.v.k.s0$a$c */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$c.class */
        public static final class C11987c implements f<f<? extends VoipTone>> {

            /* renamed from: a */
            public final /* synthetic */ f f35184a;

            /* renamed from: b */
            public final /* synthetic */ C11982a f35185b;

            /* renamed from: e.a.d.v.k.s0$a$c$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$c$a.class */
            public static final class C11988a implements g<AbstractC11387c0.C11388a<AbstractC12020a>> {

                /* renamed from: a */
                public final /* synthetic */ g f35186a;

                /* renamed from: b */
                public final /* synthetic */ C11987c f35187b;

                @e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$playTones$1$invokeSuspend$$inlined$map$1$2", f = "PlayTonesOnGroupCall.kt", l = {146}, m = "emit")
                /* renamed from: e.a.d.v.k.s0$a$c$a$a */
                /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$c$a$a.class */
                public static final class C11989a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f35188d;

                    /* renamed from: e */
                    public int f35189e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C11989a(d dVar) {
                        super(dVar);
                        C11988a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m23740s(Object obj) {
                        this.f35188d = obj;
                        this.f35189e |= Integer.MIN_VALUE;
                        return C11988a.this.m23741a(null, this);
                    }
                }

                @e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$playTones$1$1$1", f = "PlayTonesOnGroupCall.kt", l = {55}, m = "invokeSuspend")
                /* renamed from: e.a.d.v.k.s0$a$c$a$b */
                /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/s0$a$c$a$b.class */
                public static final class C11990b extends i implements p<g<? super VoipTone>, d<? super s>, Object> {

                    /* renamed from: e */
                    public /* synthetic */ Object f35191e;

                    /* renamed from: f */
                    public int f35192f;

                    public C11990b(d dVar) {
                        super(2, dVar);
                    }

                    /* renamed from: i */
                    public final d<s> m23739i(Object obj, d<?> dVar) {
                        l.e(dVar, "completion");
                        C11990b c11990b = new C11990b(dVar);
                        c11990b.f35191e = obj;
                        return c11990b;
                    }

                    /* renamed from: k */
                    public final Object m23738k(Object obj, Object obj2) {
                        d dVar = (d) obj2;
                        l.e(dVar, "completion");
                        C11990b c11990b = new C11990b(dVar);
                        c11990b.f35191e = obj;
                        return c11990b.m23737s(s.a);
                    }

                    /* renamed from: s */
                    public final Object m23737s(Object obj) {
                        a aVar = a.a;
                        int i = this.f35192f;
                        if (i == 0) {
                            C25225a.m3932a3(obj);
                            g gVar = (g) this.f35191e;
                            VoipTone voipTone = VoipTone.NO_TONE;
                            this.f35192f = 1;
                            if (gVar.a(voipTone, this) == aVar) {
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

                public C11988a(g gVar, C11987c c11987c) {
                    this.f35186a = gVar;
                    this.f35187b = c11987c;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m23741a(java.lang.Object r9, s1.w.d r10) {
                    /*
                        Method dump skipped, instructions count: 284
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11981s0.C11982a.C11987c.C11988a.m23741a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C11987c(f fVar, C11982a c11982a) {
                this.f35184a = fVar;
                this.f35185b = c11982a;
            }

            /* renamed from: c */
            public Object m23742c(g gVar, d dVar) {
                Object c = this.f35184a.c(new C11988a(gVar, this), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11982a(d dVar) {
            super(2, dVar);
            C11981s0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m23749i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C11982a(dVar);
        }

        /* renamed from: k */
        public final Object m23748k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C11982a(dVar).m23747s(s.a);
        }

        /* renamed from: s */
        public final Object m23747s(Object obj) {
            f m13539k;
            a aVar = a.a;
            int i = this.f35176e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                m13539k = C19291g.m13539k(C11981s0.this.f35174b, (r5 & 1) != 0 ? u.a : null);
                f V0 = s1.a.a.a.v0.f.d.V0(new C11987c(new C11984b(m13539k), this), 0, 1, (Object) null);
                C11983a c11983a = new C11983a();
                this.f35176e = 1;
                if (V0.c(c11983a, this) == aVar) {
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
    public C11981s0(i0 i0Var, AbstractC11438o abstractC11438o, C11839g c11839g) {
        l.e(i0Var, "coroutineScope");
        l.e(abstractC11438o, "hapticFeedbackUtil");
        l.e(c11839g, "peers");
        this.f35175c = i0Var;
        this.f35173a = abstractC11438o;
        this.f35174b = c11839g;
    }

    @Override // p193e.p194a.p619d.p657v.p658k.AbstractC11977r0
    /* renamed from: a */
    public p1 mo23750a() {
        return s1.a.a.a.v0.f.d.w2(this, (s1.w.f) null, (j0) null, new C11982a(null), 3, (Object) null);
    }

    public s1.w.f getCoroutineContext() {
        return this.f35175c.getCoroutineContext();
    }
}
