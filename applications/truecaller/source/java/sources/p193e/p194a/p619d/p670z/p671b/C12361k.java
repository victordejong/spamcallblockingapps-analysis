package p193e.p194a.p619d.p670z.p671b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import q3.a.i0;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$showVoipScreenOnActiveCall$1", f = "CallServicePresenter.kt", l = {341}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k.class */
public final class C12361k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36084e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36085f;

    /* renamed from: e.a.d.z.b.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$a.class */
    public static final class C12362a implements g<Boolean> {
        public C12362a() {
            C12361k.this = r4;
        }

        /* renamed from: a */
        public Object m23182a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            ((Boolean) obj).booleanValue();
            AbstractC12333b abstractC12333b = (AbstractC12333b) C12361k.this.f36085f.f57683a;
            if (abstractC12333b != null) {
                abstractC12333b.mo23252d();
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* renamed from: e.a.d.z.b.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$b.class */
    public static final class C12363b implements f<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ f f36087a;

        /* renamed from: e.a.d.z.b.k$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$b$a.class */
        public static final class C12364a implements g<Boolean> {

            /* renamed from: a */
            public final /* synthetic */ g f36088a;

            @e(c = "com.truecaller.voip.service.call.CallServicePresenter$showVoipScreenOnActiveCall$1$invokeSuspend$$inlined$filter$1$2", f = "CallServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.b.k$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$b$a$a.class */
            public static final class C12365a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36089d;

                /* renamed from: e */
                public int f36090e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12365a(d dVar) {
                    super(dVar);
                    C12364a.this = r4;
                }

                /* renamed from: s */
                public final Object m23179s(Object obj) {
                    this.f36089d = obj;
                    this.f36090e |= Integer.MIN_VALUE;
                    return C12364a.this.m23180a(null, this);
                }
            }

            public C12364a(g gVar, C12363b c12363b) {
                this.f36088a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23180a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p671b.C12361k.C12363b.C12364a.C12365a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.z.b.k$b$a$a r0 = (p193e.p194a.p619d.p670z.p671b.C12361k.C12363b.C12364a.C12365a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f36090e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36090e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.z.b.k$b$a$a r0 = new e.a.d.z.b.k$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f36089d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f36090e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L99
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
                    q3.a.x2.g r0 = r0.f36088a
                    r11 = r0
                    r0 = r6
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                    boolean r0 = r0.booleanValue()
                    if (r0 == 0) goto L99
                    r0 = r7
                    r1 = 1
                    r0.f36090e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L99
                    r0 = r9
                    return r0
                L99:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12361k.C12363b.C12364a.m23180a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12363b(f fVar) {
            this.f36087a = fVar;
        }

        /* renamed from: c */
        public Object m23181c(g gVar, d dVar) {
            Object c = this.f36087a.c(new C12364a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.z.b.k$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$c.class */
    public static final class C12366c implements f<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ f f36092a;

        /* renamed from: e.a.d.z.b.k$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$c$a.class */
        public static final class C12367a implements g<AbstractC11835f> {

            /* renamed from: a */
            public final /* synthetic */ g f36093a;

            @e(c = "com.truecaller.voip.service.call.CallServicePresenter$showVoipScreenOnActiveCall$1$invokeSuspend$$inlined$map$1$2", f = "CallServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.b.k$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/k$c$a$a.class */
            public static final class C12368a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36094d;

                /* renamed from: e */
                public int f36095e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12368a(d dVar) {
                    super(dVar);
                    C12367a.this = r4;
                }

                /* renamed from: s */
                public final Object m23176s(Object obj) {
                    this.f36094d = obj;
                    this.f36095e |= Integer.MIN_VALUE;
                    return C12367a.this.m23177a(null, this);
                }
            }

            public C12367a(g gVar, C12366c c12366c) {
                this.f36093a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23177a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p671b.C12361k.C12366c.C12367a.C12368a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.d.z.b.k$c$a$a r0 = (p193e.p194a.p619d.p670z.p671b.C12361k.C12366c.C12367a.C12368a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f36095e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36095e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.d.z.b.k$c$a$a r0 = new e.a.d.z.b.k$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f36094d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f36095e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto La1
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
                    q3.a.x2.g r0 = r0.f36093a
                    r10 = r0
                    r0 = r6
                    e.a.d.v.f r0 = (p193e.p194a.p619d.p657v.AbstractC11835f) r0
                    r6 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11838c
                    if (r0 != 0) goto L86
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L80
                    goto L86
                L80:
                    r0 = 0
                    r11 = r0
                    goto L89
                L86:
                    r0 = 1
                    r11 = r0
                L89:
                    r0 = r7
                    r1 = 1
                    r0.f36095e = r1
                    r0 = r10
                    r1 = r11
                    java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r8
                    if (r0 != r1) goto La1
                    r0 = r8
                    return r0
                La1:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12361k.C12366c.C12367a.m23177a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12366c(f fVar) {
            this.f36092a = fVar;
        }

        /* renamed from: c */
        public Object m23178c(g gVar, d dVar) {
            Object c = this.f36092a.c(new C12367a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12361k(C12334c c12334c, d dVar) {
        super(2, dVar);
        this.f36085f = c12334c;
    }

    /* renamed from: i */
    public final d<s> m23185i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12361k(this.f36085f, dVar);
    }

    /* renamed from: k */
    public final Object m23184k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12361k(this.f36085f, dVar).m23183s(s.a);
    }

    /* renamed from: s */
    public final Object m23183s(Object obj) {
        a aVar = a.a;
        int i = this.f36084e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12363b c12363b = new C12363b(s1.a.a.a.v0.f.d.F0(new C12366c(this.f36085f.f36019f.getState())));
            C12362a c12362a = new C12362a();
            this.f36084e = 1;
            if (c12363b.c(c12362a, this) == aVar) {
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
