package p193e.p194a.p437c.p438a.p514q.p516b;

import com.truecaller.insights.insightsui.LoadDirection;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p479i.AbstractC9107c;
import p193e.p194a.p437c.p438a.p520r.C9586c;
import p193e.p194a.p437c.p579q.AbstractC10497d;
import p193e.p194a.p437c.p579q.C10509f;
import p193e.p194a.p437c.p579q.C10516k;
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
/* renamed from: e.a.c.a.q.b.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f.class */
public final class C9554f extends AbstractC9107c<C10509f, List<? extends AdapterItem>> {

    /* renamed from: b */
    public final AbstractC10497d f28932b;

    /* renamed from: c */
    public final f f28933c;

    /* renamed from: e.a.c.a.q.b.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$a.class */
    public static final class C9555a extends Exception {
        public C9555a() {
            super("Collected size is empty");
        }
    }

    @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageFlowUseCase$execute$1", f = "UpdatesPageFlowUseCase.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.q.b.f$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b.class */
    public static final class C9556b extends i implements p<Long, d<? super q3.a.x2.f<? extends List<? extends AdapterItem>>>, Object> {

        /* renamed from: e */
        public /* synthetic */ long f28934e;

        /* renamed from: g */
        public final /* synthetic */ C10509f f28936g;

        /* renamed from: e.a.c.a.q.b.f$b$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$a.class */
        public static final class C9557a implements q3.a.x2.f<List<? extends AdapterItem>> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f28937a;

            /* renamed from: e.a.c.a.q.b.f$b$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$a$a.class */
            public static final class C9558a implements g<List<? extends AdapterItem>> {

                /* renamed from: a */
                public final /* synthetic */ g f28938a;

                @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageFlowUseCase$execute$1$invokeSuspend$$inlined$filter$1$2", f = "UpdatesPageFlowUseCase.kt", l = {137}, m = "emit")
                /* renamed from: e.a.c.a.q.b.f$b$a$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$a$a$a.class */
                public static final class C9559a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f28939d;

                    /* renamed from: e */
                    public int f28940e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C9559a(d dVar) {
                        super(dVar);
                        C9558a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27433s(Object obj) {
                        this.f28939d = obj;
                        this.f28940e |= Integer.MIN_VALUE;
                        return C9558a.this.m27434a(null, this);
                    }
                }

                public C9558a(g gVar) {
                    this.f28938a = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27434a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        r5 = this;
                        r0 = r7
                        boolean r0 = r0 instanceof p193e.p194a.p437c.p438a.p514q.p516b.C9554f.C9556b.C9557a.C9558a.C9559a
                        if (r0 == 0) goto L28
                        r0 = r7
                        e.a.c.a.q.b.f$b$a$a$a r0 = (p193e.p194a.p437c.p438a.p514q.p516b.C9554f.C9556b.C9557a.C9558a.C9559a) r0
                        r8 = r0
                        r0 = r8
                        int r0 = r0.f28940e
                        r9 = r0
                        r0 = r9
                        r1 = -2147483648(0xffffffff80000000, float:-0.0)
                        r0 = r0 & r1
                        if (r0 == 0) goto L28
                        r0 = r8
                        r1 = r9
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        int r1 = r1 + r2
                        r0.f28940e = r1
                        r0 = r8
                        r7 = r0
                        goto L32
                    L28:
                        e.a.c.a.q.b.f$b$a$a$a r0 = new e.a.c.a.q.b.f$b$a$a$a
                        r1 = r0
                        r2 = r5
                        r3 = r7
                        r1.<init>(r3)
                        r7 = r0
                    L32:
                        r0 = r7
                        java.lang.Object r0 = r0.f28939d
                        r10 = r0
                        s1.w.j.a r0 = s1.w.j.a.a
                        r8 = r0
                        r0 = r7
                        int r0 = r0.f28940e
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
                        q3.a.x2.g r0 = r0.f28938a
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
                        r0.f28940e = r1
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
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9554f.C9556b.C9557a.C9558a.m27434a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C9557a(q3.a.x2.f fVar) {
                this.f28937a = fVar;
            }

            /* renamed from: c */
            public Object m27435c(g gVar, d dVar) {
                Object c = this.f28937a.c(new C9558a(gVar), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* renamed from: e.a.c.a.q.b.f$b$b */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$b.class */
        public static final class C9560b implements q3.a.x2.f<List<? extends C10516k>> {

            /* renamed from: a */
            public final /* synthetic */ q3.a.x2.f f28942a;

            /* renamed from: b */
            public final /* synthetic */ C9556b f28943b;

            /* renamed from: e.a.c.a.q.b.f$b$b$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$b$a.class */
            public static final class C9561a implements g<List<? extends C10516k>> {

                /* renamed from: a */
                public final /* synthetic */ g f28944a;

                /* renamed from: b */
                public final /* synthetic */ C9556b f28945b;

                @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageFlowUseCase$execute$1$invokeSuspend$$inlined$map$1$2", f = "UpdatesPageFlowUseCase.kt", l = {137}, m = "emit")
                /* renamed from: e.a.c.a.q.b.f$b$b$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$b$a$a.class */
                public static final class C9562a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f28946d;

                    /* renamed from: e */
                    public int f28947e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C9562a(d dVar) {
                        super(dVar);
                        C9561a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27430s(Object obj) {
                        this.f28946d = obj;
                        this.f28947e |= Integer.MIN_VALUE;
                        return C9561a.this.m27431a(null, this);
                    }
                }

                public C9561a(g gVar, C9556b c9556b) {
                    this.f28944a = gVar;
                    this.f28945b = c9556b;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27431a(java.lang.Object r6, s1.w.d r7) {
                    /*
                        Method dump skipped, instructions count: 321
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9554f.C9556b.C9560b.C9561a.m27431a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C9560b(q3.a.x2.f fVar, C9556b c9556b) {
                this.f28942a = fVar;
                this.f28943b = c9556b;
            }

            /* renamed from: c */
            public Object m27432c(g gVar, d dVar) {
                Object c = this.f28942a.c(new C9561a(gVar, this.f28943b), dVar);
                return c == a.a ? c : s.a;
            }
        }

        @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageFlowUseCase$execute$1$invokeSuspend$$inlined$retryWhenThrowAndMap$1", f = "UpdatesPageFlowUseCase.kt", l = {25}, m = "invokeSuspend")
        /* renamed from: e.a.c.a.q.b.f$b$c */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$c.class */
        public static final class C9563c extends i implements p<g<? super List<? extends AdapterItem>>, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f28949e;

            /* renamed from: f */
            public int f28950f;

            /* renamed from: g */
            public final /* synthetic */ q3.a.x2.f f28951g;

            /* renamed from: h */
            public final /* synthetic */ Throwable f28952h;

            /* renamed from: i */
            public final /* synthetic */ C9556b f28953i;

            /* renamed from: e.a.c.a.q.b.f$b$c$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$c$a.class */
            public static final class C9564a implements g<List<? extends C10516k>> {

                /* renamed from: b */
                public final /* synthetic */ g f28955b;

                @e(c = "com.truecaller.insights.ui.updatespage.domain.UpdatesPageFlowUseCase$execute$1$invokeSuspend$$inlined$retryWhenThrowAndMap$1$1", f = "UpdatesPageFlowUseCase.kt", l = {145}, m = "emit")
                /* renamed from: e.a.c.a.q.b.f$b$c$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$c$a$a.class */
                public static final class C9565a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f28956d;

                    /* renamed from: e */
                    public int f28957e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C9565a(d dVar) {
                        super(dVar);
                        C9564a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27425s(Object obj) {
                        this.f28956d = obj;
                        this.f28957e |= Integer.MIN_VALUE;
                        return C9564a.this.m27426a(null, this);
                    }
                }

                /* renamed from: e.a.c.a.q.b.f$b$c$a$b */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a/q/b/f$b$c$a$b.class */
                public static final class C9566b implements g<List<? extends AdapterItem>> {
                    public C9566b() {
                        C9564a.this = r4;
                    }

                    /* renamed from: a */
                    public Object m27424a(Object obj, d dVar) {
                        Object a = C9564a.this.f28955b.a(obj, dVar);
                        return a == a.a ? a : s.a;
                    }
                }

                public C9564a(g gVar) {
                    C9563c.this = r4;
                    this.f28955b = gVar;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27426a(java.lang.Object r7, s1.w.d r8) {
                    /*
                        Method dump skipped, instructions count: 212
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p438a.p514q.p516b.C9554f.C9556b.C9563c.C9564a.m27426a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C9563c(q3.a.x2.f fVar, Throwable th, d dVar, C9556b c9556b) {
                super(2, dVar);
                this.f28951g = fVar;
                this.f28952h = th;
                this.f28953i = c9556b;
            }

            /* renamed from: i */
            public final d<s> m27429i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C9563c c9563c = new C9563c(this.f28951g, this.f28952h, dVar, this.f28953i);
                c9563c.f28949e = obj;
                return c9563c;
            }

            /* renamed from: k */
            public final Object m27428k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C9563c c9563c = new C9563c(this.f28951g, this.f28952h, dVar, this.f28953i);
                c9563c.f28949e = obj;
                return c9563c.m27427s(s.a);
            }

            /* renamed from: s */
            public final Object m27427s(Object obj) {
                a aVar = a.a;
                int i = this.f28950f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    g gVar = (g) this.f28949e;
                    q3.a.x2.f fVar = this.f28951g;
                    C9564a c9564a = new C9564a(gVar);
                    this.f28950f = 1;
                    if (fVar.c(c9564a, this) == aVar) {
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
        public C9556b(C10509f c10509f, d dVar) {
            super(2, dVar);
            C9554f.this = r5;
            this.f28936g = c10509f;
        }

        /* renamed from: i */
        public final d<s> m27438i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9556b c9556b = new C9556b(this.f28936g, dVar);
            Number number = (Number) obj;
            number.longValue();
            c9556b.f28934e = number.longValue();
            return c9556b;
        }

        /* renamed from: k */
        public final Object m27437k(Object obj, Object obj2) {
            return m27438i(obj, (d) obj2).m27436s(s.a);
        }

        /* renamed from: s */
        public final Object m27436s(Object obj) {
            C25225a.m3932a3(obj);
            long j = this.f28934e;
            C9554f c9554f = C9554f.this;
            C10509f c10509f = this.f28936g;
            Objects.requireNonNull(c9554f);
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
            C9560b c9560b = new C9560b(C9554f.this.f28932b.mo25850s(this.f28936g), this);
            C9555a c9555a = new C9555a();
            return new C9557a(new u(new d1(new C9563c(c9560b, c9555a, null, this)), new C9586c(c9555a, null)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C9554f(AbstractC10497d abstractC10497d, @Named("IO") f fVar) {
        super(fVar);
        l.e(abstractC10497d, "insightsUiBridge");
        l.e(fVar, "ioContext");
        this.f28932b = abstractC10497d;
        this.f28933c = fVar;
    }

    @Override // p193e.p194a.p437c.p438a.p479i.AbstractC9107c
    /* renamed from: a */
    public /* bridge */ /* synthetic */ List<? extends AdapterItem> mo27441a() {
        return s1.u.s.a;
    }

    /* renamed from: d */
    public q3.a.x2.f<List<AdapterItem>> mo27440b(C10509f c10509f) {
        l.e(c10509f, "input");
        return s1.a.a.a.v0.f.d.R0(new C9567g(new q3.a.x2.i(new s1.d0.i(1, 10))), new C9556b(c10509f, null));
    }
}
