package p193e.p194a.p619d.p628c.p629a.p631p.p632a;

import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11592d;
import p193e.p194a.p619d.p657v.AbstractC11835f;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import q3.a.i0;
import q3.a.x2.a0;
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
@e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$updateTiles$1", f = "VoipContactTileGroupPresenter.kt", l = {373}, m = "invokeSuspend")
/* renamed from: e.a.d.c.a.p.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l.class */
public final class C11220l extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33131e;

    /* renamed from: f */
    public final /* synthetic */ C11206h f33132f;

    /* renamed from: e.a.d.c.a.p.a.l$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$a.class */
    public static final class C11221a implements g<AbstractC11592d> {
        public C11221a() {
            C11220l.this = r4;
        }

        /* renamed from: a */
        public Object m25011a(Object obj, d dVar) {
            f m13539k;
            Object obj2 = s.a;
            C11206h c11206h = C11220l.this.f33132f;
            Objects.requireNonNull(c11206h);
            m13539k = C19291g.m13539k(((AbstractC11592d) obj).mo24405a(), (r5 & 1) != 0 ? u.a : null);
            Object c = s1.a.a.a.v0.f.d.X0(m13539k, c11206h.f33106m).c(new C11219k(c11206h), dVar);
            Object obj3 = a.a;
            if (c != obj3) {
                c = obj2;
            }
            return c == obj3 ? c : obj2;
        }
    }

    /* renamed from: e.a.d.c.a.p.a.l$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$b.class */
    public static final class C11222b implements f<AbstractC11592d> {

        /* renamed from: a */
        public final /* synthetic */ f f33134a;

        /* renamed from: e.a.d.c.a.p.a.l$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$b$a.class */
        public static final class C11223a implements g<AbstractC11835f> {

            /* renamed from: a */
            public final /* synthetic */ g f33135a;

            @e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$updateTiles$1$invokeSuspend$$inlined$mapNotNull$1$2", f = "VoipContactTileGroupPresenter.kt", l = {139}, m = "emit")
            /* renamed from: e.a.d.c.a.p.a.l$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$b$a$a.class */
            public static final class C11224a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33136d;

                /* renamed from: e */
                public int f33137e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11224a(d dVar) {
                    super(dVar);
                    C11223a.this = r4;
                }

                /* renamed from: s */
                public final Object m25008s(Object obj) {
                    this.f33136d = obj;
                    this.f33137e |= Integer.MIN_VALUE;
                    return C11223a.this.m25009a(null, this);
                }
            }

            public C11223a(g gVar, C11222b c11222b) {
                this.f33135a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25009a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11220l.C11222b.C11223a.C11224a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.c.a.p.a.l$b$a$a r0 = (p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11220l.C11222b.C11223a.C11224a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f33137e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33137e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.c.a.p.a.l$b$a$a r0 = new e.a.d.c.a.p.a.l$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f33136d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f33137e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto Lb8
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
                    q3.a.x2.g r0 = r0.f33135a
                    r11 = r0
                    r0 = r6
                    e.a.d.v.f r0 = (p193e.p194a.p619d.p657v.AbstractC11835f) r0
                    r6 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11838c
                    if (r0 == 0) goto L8a
                    r0 = r6
                    e.a.d.v.f$c r0 = (p193e.p194a.p619d.p657v.AbstractC11835f.C11838c) r0
                    e.a.d.c0.z1.d r0 = r0.f34810a
                    r6 = r0
                    goto L9e
                L8a:
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L9c
                    r0 = r6
                    e.a.d.v.f$a r0 = (p193e.p194a.p619d.p657v.AbstractC11835f.C11836a) r0
                    e.a.d.c0.z1.d r0 = r0.f34808b
                    r6 = r0
                    goto L9e
                L9c:
                    r0 = 0
                    r6 = r0
                L9e:
                    r0 = r6
                    if (r0 == 0) goto Lb8
                    r0 = r7
                    r1 = 1
                    r0.f33137e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto Lb8
                    r0 = r9
                    return r0
                Lb8:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11220l.C11222b.C11223a.m25009a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11222b(f fVar) {
            this.f33134a = fVar;
        }

        /* renamed from: c */
        public Object m25010c(g gVar, d dVar) {
            Object c = this.f33134a.c(new C11223a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.c.a.p.a.l$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$c.class */
    public static final class C11225c implements f<AbstractC11592d> {

        /* renamed from: a */
        public final /* synthetic */ f f33139a;

        /* renamed from: e.a.d.c.a.p.a.l$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$c$a.class */
        public static final class C11226a implements g<AbstractC12111g> {

            /* renamed from: a */
            public final /* synthetic */ g f33140a;

            @e(c = "com.truecaller.voip.ui.util.view.tile.VoipContactTileGroupPresenter$updateTiles$1$invokeSuspend$$inlined$mapNotNull$2$2", f = "VoipContactTileGroupPresenter.kt", l = {138}, m = "emit")
            /* renamed from: e.a.d.c.a.p.a.l$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/a/p/a/l$c$a$a.class */
            public static final class C11227a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33141d;

                /* renamed from: e */
                public int f33142e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11227a(d dVar) {
                    super(dVar);
                    C11226a.this = r4;
                }

                /* renamed from: s */
                public final Object m25005s(Object obj) {
                    this.f33141d = obj;
                    this.f33142e |= Integer.MIN_VALUE;
                    return C11226a.this.m25006a(null, this);
                }
            }

            public C11226a(g gVar, C11225c c11225c) {
                this.f33140a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25006a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11220l.C11225c.C11226a.C11227a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.c.a.p.a.l$c$a$a r0 = (p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11220l.C11225c.C11226a.C11227a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f33142e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33142e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.c.a.p.a.l$c$a$a r0 = new e.a.d.c.a.p.a.l$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f33141d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f33142e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto La6
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
                    q3.a.x2.g r0 = r0.f33140a
                    r11 = r0
                    r0 = r6
                    e.a.d.w.g r0 = (p193e.p194a.p619d.p661w.AbstractC12111g) r0
                    r6 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.AbstractC12111g.C12112a
                    if (r0 == 0) goto L8a
                    r0 = r6
                    e.a.d.w.g$a r0 = (p193e.p194a.p619d.p661w.AbstractC12111g.C12112a) r0
                    e.a.d.c0.z1.d r0 = r0.f35450b
                    r6 = r0
                    goto L8c
                L8a:
                    r0 = 0
                    r6 = r0
                L8c:
                    r0 = r6
                    if (r0 == 0) goto La6
                    r0 = r7
                    r1 = 1
                    r0.f33142e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto La6
                    r0 = r9
                    return r0
                La6:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p629a.p631p.p632a.C11220l.C11225c.C11226a.m25006a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11225c(f fVar) {
            this.f33139a = fVar;
        }

        /* renamed from: c */
        public Object m25007c(g gVar, d dVar) {
            Object c = this.f33139a.c(new C11226a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11220l(C11206h c11206h, d dVar) {
        super(2, dVar);
        this.f33132f = c11206h;
    }

    /* renamed from: i */
    public final d<s> m25014i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11220l(this.f33132f, dVar);
    }

    /* renamed from: k */
    public final Object m25013k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11220l(this.f33132f, dVar).m25012s(s.a);
    }

    /* renamed from: s */
    public final Object m25012s(Object obj) {
        a aVar = a.a;
        int i = this.f33131e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            a0 G3 = s1.a.a.a.v0.f.d.G3(s1.a.a.a.v0.f.d.F2(new f[]{new C11222b(this.f33132f.f33107n.getState()), new C11225c(this.f33132f.f33108o.getState())}), 1);
            C11221a c11221a = new C11221a();
            this.f33131e = 1;
            if (G3.c(c11221a, this) == aVar) {
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
