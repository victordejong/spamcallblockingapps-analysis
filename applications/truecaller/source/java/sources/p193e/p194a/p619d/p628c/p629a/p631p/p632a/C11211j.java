package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import q3.a.i0;
import q3.a.x2.a0;
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
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$updateGroupCallPeers$1", f = "VoipContactTileGroupPresenter.kt", l = {374}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.j */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j.class */
public final class C11211j extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33117e;

    /* renamed from: f */
    public final /* synthetic */ C11206h f33118f;

    /* renamed from: e.a.d.c.a.p.a.j$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$a.class */
    public static final class C11212a implements g<AbstractC11822b> {
        public C11212a() {
            C11211j.this = r4;
        }

        /* renamed from: a */
        public Object m25022a(Object obj, d dVar) {
            Object obj2 = s.a;
            C11206h c11206h = C11211j.this.f33118f;
            Objects.requireNonNull(c11206h);
            Object c = ((AbstractC11822b) obj).mo23965a().c(new C11210i(c11206h), dVar);
            Object obj3 = a.a;
            if (c != obj3) {
                c = obj2;
            }
            return c == obj3 ? c : obj2;
        }
    }

    /* renamed from: e.a.d.c.a.p.a.j$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$b.class */
    public static final class C11213b implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f33120a;

        /* renamed from: e.a.d.c.a.p.a.j$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$b$a.class */
        public static final class C11214a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f33121a;

            @e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$updateGroupCallPeers$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "VoipContactTileGroupPresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.c.a.p.a.j$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$b$a$a.class */
            public static final class C11215a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33122d;

                /* renamed from: e */
                public int f33123e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11215a(d dVar) {
                    super(dVar);
                    C11214a.this = r4;
                }

                /* renamed from: s */
                public final Object m25019s(Object obj) {
                    this.f33122d = obj;
                    this.f33123e |= Integer.MIN_VALUE;
                    return C11214a.this.m25020a(null, this);
                }
            }

            public C11214a(g gVar, C11213b c11213b) {
                this.f33121a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25020a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11211j.C11213b.C11214a.C11215a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.c.a.p.a.j$b$a$a r0 = (p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11211j.C11213b.C11214a.C11215a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f33123e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33123e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.c.a.p.a.j$b$a$a r0 = new e.a.d.c.a.p.a.j$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f33122d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f33123e
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
                    q3.a.x2.g r0 = r0.f33121a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f33123e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11211j.C11213b.C11214a.m25020a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11213b(f fVar) {
            this.f33120a = fVar;
        }

        /* renamed from: c */
        public Object m25021c(g gVar, d dVar) {
            Object c = this.f33120a.c(new C11214a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.c.a.p.a.j$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$c.class */
    public static final class C11216c implements f<AbstractC11822b> {

        /* renamed from: a */
        public final /* synthetic */ f f33125a;

        /* renamed from: e.a.d.c.a.p.a.j$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$c$a.class */
        public static final class C11217a implements g<AbstractC11835f.C11836a> {

            /* renamed from: a */
            public final /* synthetic */ g f33126a;

            @e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$updateGroupCallPeers$1$invokeSuspend$$inlined$map$1$2", f = "VoipContactTileGroupPresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.c.a.p.a.j$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/j$c$a$a.class */
            public static final class C11218a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33127d;

                /* renamed from: e */
                public int f33128e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11218a(d dVar) {
                    super(dVar);
                    C11217a.this = r4;
                }

                /* renamed from: s */
                public final Object m25016s(Object obj) {
                    this.f33127d = obj;
                    this.f33128e |= Integer.MIN_VALUE;
                    return C11217a.this.m25017a(null, this);
                }
            }

            public C11217a(g gVar, C11216c c11216c) {
                this.f33126a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25017a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11211j.C11216c.C11217a.C11218a
                    if (r0 == 0) goto L28
                    r0 = r7
                    e.a.d.c.a.p.a.j$c$a$a r0 = (p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11211j.C11216c.C11217a.C11218a) r0
                    r8 = r0
                    r0 = r8
                    int r0 = r0.f33128e
                    r9 = r0
                    r0 = r9
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r8
                    r1 = r9
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33128e = r1
                    r0 = r8
                    r7 = r0
                    goto L32
                L28:
                    e.a.d.c.a.p.a.j$c$a$a r0 = new e.a.d.c.a.p.a.j$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L32:
                    r0 = r7
                    java.lang.Object r0 = r0.f33127d
                    r10 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r8 = r0
                    r0 = r7
                    int r0 = r0.f33128e
                    r9 = r0
                    r0 = r9
                    if (r0 == 0) goto L5f
                    r0 = r9
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r10
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L86
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
                    q3.a.x2.g r0 = r0.f33126a
                    r10 = r0
                    r0 = r6
                    e.a.d.v.f$a r0 = (p193e.p194a.p619d.p657v.AbstractC11835f.C11836a) r0
                    e.a.d.v.b r0 = r0.f34807a
                    r6 = r0
                    r0 = r7
                    r1 = 1
                    r0.f33128e = r1
                    r0 = r10
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r8
                    if (r0 != r1) goto L86
                    r0 = r8
                    return r0
                L86:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11211j.C11216c.C11217a.m25017a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11216c(f fVar) {
            this.f33125a = fVar;
        }

        /* renamed from: c */
        public Object m25018c(g gVar, d dVar) {
            Object c = this.f33125a.c(new C11217a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11211j(C11206h c11206h, d dVar) {
        super(2, dVar);
        this.f33118f = c11206h;
    }

    /* renamed from: i */
    public final d<s> m25025i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11211j(this.f33118f, dVar);
    }

    /* renamed from: k */
    public final Object m25024k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11211j(this.f33118f, dVar).m25023s(s.a);
    }

    /* renamed from: s */
    public final Object m25023s(Object obj) {
        a aVar = a.a;
        int i = this.f33117e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            a0 G3 = s1.a.a.a.v0.f.d.G3(new C11216c(new C11213b(this.f33118f.f33107n.getState())), 1);
            C11212a c11212a = new C11212a();
            this.f33117e = 1;
            if (G3.c(c11212a, this) == aVar) {
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
