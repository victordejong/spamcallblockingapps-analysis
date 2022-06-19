package p193e.p194a.p619d.p657v.p659l.p660e;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p637c0.p642z1.AbstractC11598i;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import p193e.p194a.p619d.p663x.p664q.AbstractC12237i;
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
@e(c = "com.truecaller.voip.groupcall.call.action.ConnectCallImpl$endWhenLeavesRtc$1", f = "ConnectCall.kt", l = {64, 72}, m = "invokeSuspend")
/* renamed from: e.a.d.v.l.e.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/f.class */
public final class C12047f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35285e;

    /* renamed from: f */
    public final /* synthetic */ C12043e f35286f;

    @e(c = "com.truecaller.voip.groupcall.call.action.ConnectCallImpl$endWhenLeavesRtc$1$1", f = "ConnectCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.l.e.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/f$a.class */
    public static final class C12048a extends i implements p<AbstractC12237i.C12239b, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35287e;

        /* renamed from: f */
        public final /* synthetic */ Integer f35288f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12048a(Integer num, d dVar) {
            super(2, dVar);
            this.f35288f = num;
        }

        /* renamed from: i */
        public final d<s> m23685i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12048a c12048a = new C12048a(this.f35288f, dVar);
            c12048a.f35287e = obj;
            return c12048a;
        }

        /* renamed from: k */
        public final Object m23684k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            Integer num = this.f35288f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(!((AbstractC12237i.C12239b) obj).f35744a.contains(num));
        }

        /* renamed from: s */
        public final Object m23683s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(!((AbstractC12237i.C12239b) this.f35287e).f35744a.contains(this.f35288f));
        }
    }

    /* renamed from: e.a.d.v.l.e.f$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/f$b.class */
    public static final class C12049b implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f35289a;

        /* renamed from: e.a.d.v.l.e.f$b$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/f$b$a.class */
        public static final class C12050a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f35290a;

            @e(c = "com.truecaller.voip.groupcall.call.action.ConnectCallImpl$endWhenLeavesRtc$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "ConnectCall.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.v.l.e.f$b$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/l/e/f$b$a$a.class */
            public static final class C12051a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f35291d;

                /* renamed from: e */
                public int f35292e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12051a(d dVar) {
                    super(dVar);
                    C12050a.this = r4;
                }

                /* renamed from: s */
                public final Object m23680s(Object obj) {
                    this.f35291d = obj;
                    this.f35292e |= Integer.MIN_VALUE;
                    return C12050a.this.m23681a(null, this);
                }
            }

            public C12050a(g gVar, C12049b c12049b) {
                this.f35290a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23681a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.p660e.C12047f.C12049b.C12050a.C12051a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.v.l.e.f$b$a$a r0 = (p193e.p194a.p619d.p657v.p659l.p660e.C12047f.C12049b.C12050a.C12051a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f35292e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f35292e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.v.l.e.f$b$a$a r0 = new e.a.d.v.l.e.f$b$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f35291d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f35292e
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
                    q3.a.x2.g r0 = r0.f35290a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p663x.p664q.AbstractC12237i.C12239b
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f35292e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p659l.p660e.C12047f.C12049b.C12050a.m23681a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12049b(f fVar) {
            this.f35289a = fVar;
        }

        /* renamed from: c */
        public Object m23682c(g gVar, d dVar) {
            Object c = this.f35289a.c(new C12050a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12047f(C12043e c12043e, d dVar) {
        super(2, dVar);
        this.f35286f = c12043e;
    }

    /* renamed from: i */
    public final d<s> m23688i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12047f(this.f35286f, dVar);
    }

    /* renamed from: k */
    public final Object m23687k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12047f(this.f35286f, dVar).m23686s(s.a);
    }

    /* renamed from: s */
    public final Object m23686s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f35285e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12043e c12043e = this.f35286f;
            AbstractC11598i abstractC11598i = c12043e.f35268d;
            int i2 = c12043e.f35266b;
            this.f35285e = 1;
            Object mo24386t = abstractC11598i.mo24386t(i2, this);
            obj = mo24386t;
            if (mo24386t == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            this.f35286f.f35273i.mo23679e(AbstractC12022c.AbstractC12024b.C12030f.f35251b);
            return sVar;
        } else {
            C25225a.m3932a3(obj);
        }
        Integer num = (Integer) obj;
        if (num == null) {
            this.f35286f.f35273i.mo23679e(AbstractC12022c.AbstractC12024b.C12026b.f35247b);
            return sVar;
        }
        C12049b c12049b = new C12049b(this.f35286f.f35270f.mo23401a());
        C12048a c12048a = new C12048a(num, null);
        this.f35285e = 2;
        if (s1.a.a.a.v0.f.d.N0(c12049b, c12048a, this) == aVar) {
            return aVar;
        }
        this.f35286f.f35273i.mo23679e(AbstractC12022c.AbstractC12024b.C12030f.f35251b);
        return sVar;
    }
}
