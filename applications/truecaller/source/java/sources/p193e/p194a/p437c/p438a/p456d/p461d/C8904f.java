package p193e.p194a.p437c.p438a.p456d.p461d;

import com.truecaller.insights.insightsui.LoadDirection;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p520r.C9586c;
import p193e.p194a.p437c.p548h.AbstractC10255e;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.C10496c;
import p193e.p194a.p437c.p579q.C10509f;
import q3.a.x2.d1;
import q3.a.x2.g;
import q3.a.x2.u;
import s1.d0.j;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.a.d.d.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f.class */
public final class C8904f extends AbstractC9107c<C10509f, List<? extends AdapterItem>> {

    /* renamed from: b */
    public final AbstractC10497d f27134b;

    /* renamed from: c */
    public final f f27135c;

    /* renamed from: d */
    public final AbstractC10255e f27136d;

    /* renamed from: e.a.c.a.d.d.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$a.class */
    public static final class C8905a extends Exception {
        public C8905a() {
            super("Collected size is empty");
        }
    }

    @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageFlowUseCase$execute$1", f = "FinancePageFlowUseCase.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.d.d.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b.class */
    public static final class C8906b extends i implements p<Long, d<? super q3.a.x2.f<? extends List<? extends AdapterItem>>>, Object> {

        /* renamed from: e */
        public /* synthetic */ long f27137e;

        /* renamed from: g */
        public final /* synthetic */ C10509f f27139g;

        /* renamed from: e.a.c.a.d.d.f$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$a.class */
        public static final class C8907a implements q3.a.x2.f<List<? extends AdapterItem>> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f27140a;

            /* renamed from: e.a.c.a.d.d.f$b$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$a$a.class */
            public static final class C8908a implements g<List<? extends AdapterItem>> {

                /* renamed from: a */
                public final /* synthetic */ g f27141a;

                @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageFlowUseCase$execute$1$invokeSuspend$$inlined$filter$1$2", f = "FinancePageFlowUseCase.kt", l = {137}, m = "emit")
                /* renamed from: e.a.c.a.d.d.f$b$a$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$a$a$a.class */
                public static final class C8909a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f27142d;

                    /* renamed from: e */
                    public int f27143e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C8909a(d dVar) {
                        super(dVar);
                        C8908a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27950s(Object obj) {
                        this.f27142d = obj;
                        this.f27143e |= Integer.MIN_VALUE;
                        return C8908a.this.m27951a(null, this);
                    }
                }

                public C8908a(g gVar) {
                    this.f27141a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27951a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p456d.p461d.C8904f.C8906b.C8907a.C8908a.C8909a
                        if (r0 == 0) goto L28
                        r0 = r7
                        e.a.c.a.d.d.f$b$a$a$a r0 = (p193e.p194a.p437c.p438a.p456d.p461d.C8904f.C8906b.C8907a.C8908a.C8909a) r0
                        r8 = r0
                        r0 = r8
                        int r0 = r0.f27143e
                        r9 = r0
                        r0 = r9
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L28
                        r0 = r8
                        r1 = r9
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f27143e = r1
                        r0 = r8
                        r7 = r0
                        goto L32
                    L28:
                        e.a.c.a.d.d.f$b$a$a$a r0 = new e.a.c.a.d.d.f$b$a$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L32:
                        r0 = r7
                        java.lang.Object r0 = r0.f27142d
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r8 = r0
                        r0 = r7
                        int r0 = r0.f27143e
                        r9 = r0
                        r0 = r9
                        if (r0 == 0) goto L5f
                        r0 = r9
                        r1 = 1
                        if (r0 != r1) goto L55
                        r0 = r10
                        p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                        goto L92
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
                        q3.a.x2.g r0 = r0.f27141a
                        r10 = r0
                        r0 = r6
                        java.util.List r0 = (java.util.List) r0
                        boolean r0 = r0.isEmpty()
                        r1 = 1
                        r0 = r0 ^ r1
                        java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                        boolean r0 = r0.booleanValue()
                        if (r0 == 0) goto L92
                        r0 = r7
                        r1 = 1
                        r0.f27143e = r1
                        r0 = r10
                        r1 = r6
                        r2 = r7
                        java.lang.Object r0 = r0.a(r1, r2)
                        r1 = r8
                        if (r0 != r1) goto L92
                        r0 = r8
                        return r0
                    L92:
                        s1.s r0 = s1.s.a
                        return r0
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8904f.C8906b.C8907a.C8908a.m27951a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C8907a(q3.a.x2.f fVar) {
                this.f27140a = fVar;
            }

            /* renamed from: c */
            public Object m27952c(g gVar, d dVar) {
                Object c = this.f27140a.c(new C8908a(gVar), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.c.a.d.d.f$b$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$b.class */
        public static final class C8910b implements q3.a.x2.f<List<? extends C10496c>> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f27145a;

            /* renamed from: b */
            public final /* synthetic */ C8906b f27146b;

            /* renamed from: e.a.c.a.d.d.f$b$b$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$b$a.class */
            public static final class C8911a implements g<List<? extends C10496c>> {

                /* renamed from: a */
                public final /* synthetic */ g f27147a;

                /* renamed from: b */
                public final /* synthetic */ C8906b f27148b;

                @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageFlowUseCase$execute$1$invokeSuspend$$inlined$map$1$2", f = "FinancePageFlowUseCase.kt", l = {137}, m = "emit")
                /* renamed from: e.a.c.a.d.d.f$b$b$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$b$a$a.class */
                public static final class C8912a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f27149d;

                    /* renamed from: e */
                    public int f27150e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C8912a(d dVar) {
                        super(dVar);
                        C8911a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27947s(Object obj) {
                        this.f27149d = obj;
                        this.f27150e |= Integer.MIN_VALUE;
                        return C8911a.this.m27948a(null, this);
                    }
                }

                public C8911a(g gVar, C8906b c8906b) {
                    this.f27147a = gVar;
                    this.f27148b = c8906b;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27948a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        Method dump skipped, instructions count: 321
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8904f.C8906b.C8910b.C8911a.m27948a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C8910b(q3.a.x2.f fVar, C8906b c8906b) {
                this.f27145a = fVar;
                this.f27146b = c8906b;
            }

            /* renamed from: c */
            public Object m27949c(g gVar, d dVar) {
                Object c = this.f27145a.c(new C8911a(gVar, this.f27146b), dVar);
                return c == a.a ? c : s.a;
            }
        }

        @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageFlowUseCase$execute$1$invokeSuspend$$inlined$retryWhenThrowAndMap$1", f = "FinancePageFlowUseCase.kt", l = {25}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.d.d.f$b$c */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$c.class */
        public static final class C8913c extends i implements p<g<? super List<? extends AdapterItem>>, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f27152e;

            /* renamed from: f */
            public int f27153f;

            /* renamed from: g */
            public final /* synthetic */ q3.a.x2.f f27154g;

            /* renamed from: h */
            public final /* synthetic */ Throwable f27155h;

            /* renamed from: i */
            public final /* synthetic */ C8906b f27156i;

            /* renamed from: e.a.c.a.d.d.f$b$c$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$c$a.class */
            public static final class C8914a implements g<List<? extends C10496c>> {

                /* renamed from: b */
                public final /* synthetic */ g f27158b;

                @e(c = "com.truecaller.insights.ui.financepage.domain.FinancePageFlowUseCase$execute$1$invokeSuspend$$inlined$retryWhenThrowAndMap$1$1", f = "FinancePageFlowUseCase.kt", l = {145}, m = "emit")
                /* renamed from: e.a.c.a.d.d.f$b$c$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$c$a$a.class */
                public static final class C8915a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f27159d;

                    /* renamed from: e */
                    public int f27160e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C8915a(d dVar) {
                        super(dVar);
                        C8914a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27942s(Object obj) {
                        this.f27159d = obj;
                        this.f27160e |= Integer.MIN_VALUE;
                        return C8914a.this.m27943a(null, this);
                    }
                }

                /* renamed from: e.a.c.a.d.d.f$b$c$a$b */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/d/f$b$c$a$b.class */
                public static final class C8916b implements g<List<? extends AdapterItem>> {
                    public C8916b() {
                        C8914a.this = r4;
                    }

                    /* renamed from: a */
                    public Object m27941a(Object obj, d dVar) {
                        Object a = C8914a.this.f27158b.a(obj, dVar);
                        return a == a.a ? a : s.a;
                    }
                }

                public C8914a(g gVar) {
                    C8913c.this = r4;
                    this.f27158b = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27943a(java.lang.Object r7, s1.w.d r8) {
                    /*
                        Method dump skipped, instructions count: 212
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p456d.p461d.C8904f.C8906b.C8913c.C8914a.m27943a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C8913c(q3.a.x2.f fVar, Throwable th, d dVar, C8906b c8906b) {
                super(2, dVar);
                this.f27154g = fVar;
                this.f27155h = th;
                this.f27156i = c8906b;
            }

            /* renamed from: i */
            public final d<s> m27946i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C8913c c8913c = new C8913c(this.f27154g, this.f27155h, dVar, this.f27156i);
                c8913c.f27152e = obj;
                return c8913c;
            }

            /* renamed from: k */
            public final Object m27945k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C8913c c8913c = new C8913c(this.f27154g, this.f27155h, dVar, this.f27156i);
                c8913c.f27152e = obj;
                return c8913c.m27944s(s.a);
            }

            /* renamed from: s */
            public final Object m27944s(Object obj) {
                a aVar = a.a;
                int i = this.f27153f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    g gVar = (g) this.f27152e;
                    q3.a.x2.f fVar = this.f27154g;
                    C8914a c8914a = new C8914a(gVar);
                    this.f27153f = 1;
                    if (fVar.c(c8914a, this) == aVar) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8906b(C10509f c10509f, d dVar) {
            super(2, dVar);
            C8904f.this = r5;
            this.f27139g = c10509f;
        }

        /* renamed from: i */
        public final d<s> m27955i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C8906b c8906b = new C8906b(this.f27139g, dVar);
            Number number = (Number) obj;
            number.longValue();
            c8906b.f27137e = number.longValue();
            return c8906b;
        }

        /* renamed from: k */
        public final Object m27954k(Object obj, Object obj2) {
            return m27955i(obj, (d) obj2).m27953s(s.a);
        }

        /* renamed from: s */
        public final Object m27953s(Object obj) {
            C25225a.m3932a3(obj);
            long j = this.f27137e;
            C8904f c8904f = C8904f.this;
            C10509f c10509f = this.f27139g;
            Objects.requireNonNull(c8904f);
            l.e(c10509f, "input");
            if (c10509f.f31244d == LoadDirection.AFTER) {
                long j2 = c10509f.f31243c - j;
                c10509f.f31243c = j2;
                c10509f.f31243c = j.a(j2, c10509f.f31245e.f31258a);
            } else {
                long j3 = c10509f.f31243c + j;
                c10509f.f31243c = j3;
                c10509f.f31243c = j.b(j3, c10509f.f31245e.f31259b);
            }
            C8910b c8910b = new C8910b(C8904f.this.f27134b.mo25854D(this.f27139g), this);
            C8905a c8905a = new C8905a();
            return new C8907a(new u(new d1(new C8913c(c8910b, c8905a, null, this)), new C9586c(c8905a, null)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C8904f(AbstractC10497d abstractC10497d, @Named("IO") f fVar, AbstractC10255e abstractC10255e) {
        super(fVar);
        l.e(abstractC10497d, "insightsUiBridge");
        l.e(fVar, "ioContext");
        l.e(abstractC10255e, "insightsFilterFetcher");
        this.f27134b = abstractC10497d;
        this.f27135c = fVar;
        this.f27136d = abstractC10255e;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ List<? extends AdapterItem> mo27441a() {
        return s1.u.s.a;
    }

    /* renamed from: d */
    public q3.a.x2.f<List<AdapterItem>> mo27440b(C10509f c10509f) {
        l.e(c10509f, "input");
        return s1.a.a.a.v0.f.d.R0(new C8917g(new q3.a.x2.i(new s1.d0.i(1, 10))), new C8906b(c10509f, null));
    }
}
