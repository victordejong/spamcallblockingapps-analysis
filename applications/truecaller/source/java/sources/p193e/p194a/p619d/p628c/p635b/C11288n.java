package p193e.p194a.p619d.p628c.p635b;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.AbstractC11822b;
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
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$onGroupCallCreated$1", f = "OngoingVoipPresenter.kt", l = {170}, m = "invokeSuspend")
/* renamed from: e.a.d.c.b.n */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/n.class */
public final class C11288n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f33258e;

    /* renamed from: f */
    public final /* synthetic */ C11292o f33259f;

    /* renamed from: g */
    public final /* synthetic */ l f33260g;

    /* renamed from: e.a.d.c.b.n$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/n$a.class */
    public static final class C11289a implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f33261a;

        /* renamed from: e.a.d.c.b.n$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/n$a$a.class */
        public static final class C11290a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f33262a;

            @e(c = "com.truecaller.voip.ui.ongoing.OngoingVoipPresenter$onGroupCallCreated$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "OngoingVoipPresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.c.b.n$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/c/b/n$a$a$a.class */
            public static final class C11291a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f33263d;

                /* renamed from: e */
                public int f33264e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11291a(d dVar) {
                    super(dVar);
                    C11290a.this = r4;
                }

                /* renamed from: s */
                public final Object m24896s(Object obj) {
                    this.f33263d = obj;
                    this.f33264e |= Integer.MIN_VALUE;
                    return C11290a.this.m24897a(null, this);
                }
            }

            public C11290a(g gVar, C11289a c11289a) {
                this.f33262a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m24897a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p628c.p635b.C11288n.C11289a.C11290a.C11291a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.c.b.n$a$a$a r0 = (p193e.p194a.p619d.p628c.p635b.C11288n.C11289a.C11290a.C11291a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f33264e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f33264e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.c.b.n$a$a$a r0 = new e.a.d.c.b.n$a$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f33263d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f33264e
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
                    q3.a.x2.g r0 = r0.f33262a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f33264e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p628c.p635b.C11288n.C11289a.C11290a.m24897a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11289a(f fVar) {
            this.f33261a = fVar;
        }

        /* renamed from: c */
        public Object m24898c(g gVar, d dVar) {
            Object c = this.f33261a.c(new C11290a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11288n(C11292o c11292o, l lVar, d dVar) {
        super(2, dVar);
        this.f33259f = c11292o;
        this.f33260g = lVar;
    }

    /* renamed from: i */
    public final d<s> m24901i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C11288n(this.f33259f, this.f33260g, dVar);
    }

    /* renamed from: k */
    public final Object m24900k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C11288n(this.f33259f, this.f33260g, dVar).m24899s(s.a);
    }

    /* renamed from: s */
    public final Object m24899s(Object obj) {
        AbstractC11822b abstractC11822b;
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f33258e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C11289a c11289a = new C11289a(this.f33259f.f33267e.getState());
            this.f33258e = 1;
            Object O0 = s1.a.a.a.v0.f.d.O0(c11289a, this);
            obj = O0;
            if (O0 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11835f.C11836a c11836a = (AbstractC11835f.C11836a) obj;
        if (c11836a != null && (abstractC11822b = c11836a.f34807a) != null) {
            this.f33260g.d(abstractC11822b);
        }
        return sVar;
    }
}
