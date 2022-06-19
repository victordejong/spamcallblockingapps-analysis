package p193e.p194a.p619d.p657v.p658k;

import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12020a;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
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
import s1.z.b.q;
import s1.z.c.l;
@e(c = "com.truecaller.voip.groupcall.action.ProvideConnectedTimeImpl$setElapsedTimeOnFirstOngoingPeer$1", f = "ProvideConnectedTime.kt", l = {41}, m = "invokeSuspend")
/* renamed from: e.a.d.v.k.x0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0.class */
public final class C12006x0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f35214e;

    /* renamed from: f */
    public final /* synthetic */ C12014y0 f35215f;

    @e(c = "com.truecaller.voip.groupcall.action.ProvideConnectedTimeImpl$setElapsedTimeOnFirstOngoingPeer$1$3", f = "ProvideConnectedTime.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.x0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0$a.class */
    public static final class C12007a extends i implements p<AbstractC12022c, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35216e;

        public C12007a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23715i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12007a c12007a = new C12007a(dVar);
            c12007a.f35216e = obj;
            return c12007a;
        }

        /* renamed from: k */
        public final Object m23714k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(l.a((AbstractC12022c) obj, AbstractC12022c.C12033c.f35254b));
        }

        /* renamed from: s */
        public final Object m23713s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(l.a((AbstractC12022c) this.f35216e, AbstractC12022c.C12033c.f35254b));
        }
    }

    @e(c = "com.truecaller.voip.groupcall.action.ProvideConnectedTimeImpl$setElapsedTimeOnFirstOngoingPeer$1$invokeSuspend$$inlined$flatMapLatest$1", f = "ProvideConnectedTime.kt", l = {217}, m = "invokeSuspend")
    /* renamed from: e.a.d.v.k.x0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0$b.class */
    public static final class C12008b extends i implements q<g<? super AbstractC12022c>, f<? extends AbstractC12022c>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f35217e;

        /* renamed from: f */
        public /* synthetic */ Object f35218f;

        /* renamed from: g */
        public int f35219g;

        public C12008b(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m23712h(Object obj, Object obj2, Object obj3) {
            C12008b c12008b = new C12008b((d) obj3);
            c12008b.f35217e = (g) obj;
            c12008b.f35218f = obj2;
            return c12008b.m23711s(s.a);
        }

        /* renamed from: s */
        public final Object m23711s(Object obj) {
            a aVar = a.a;
            int i = this.f35219g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                g gVar = (g) this.f35217e;
                this.f35219g = 1;
                if (((f) this.f35218f).c(gVar, this) == aVar) {
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

    /* renamed from: e.a.d.v.k.x0$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0$c.class */
    public static final class C12009c implements f<f<? extends AbstractC12022c>> {

        /* renamed from: a */
        public final /* synthetic */ f f35220a;

        /* renamed from: e.a.d.v.k.x0$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0$c$a.class */
        public static final class C12010a implements g<Set<? extends AbstractC12020a>> {

            /* renamed from: a */
            public final /* synthetic */ g f35221a;

            @e(c = "com.truecaller.voip.groupcall.action.ProvideConnectedTimeImpl$setElapsedTimeOnFirstOngoingPeer$1$invokeSuspend$$inlined$map$1$2", f = "ProvideConnectedTime.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.v.k.x0$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0$c$a$a.class */
            public static final class C12011a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f35222d;

                /* renamed from: e */
                public int f35223e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12011a(d dVar) {
                    super(dVar);
                    C12010a.this = r4;
                }

                /* renamed from: s */
                public final Object m23708s(Object obj) {
                    this.f35222d = obj;
                    this.f35223e |= Integer.MIN_VALUE;
                    return C12010a.this.m23709a(null, this);
                }
            }

            @e(c = "com.truecaller.voip.groupcall.action.ProvideConnectedTimeImpl$setElapsedTimeOnFirstOngoingPeer$1$1$1", f = "ProvideConnectedTime.kt", l = {}, m = "invokeSuspend")
            /* renamed from: e.a.d.v.k.x0$c$a$b */
            /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/x0$c$a$b.class */
            public static final class C12012b extends i implements p<AbstractC12020a, d<? super f<? extends AbstractC12022c>>, Object> {

                /* renamed from: e */
                public /* synthetic */ Object f35225e;

                public C12012b(d dVar) {
                    super(2, dVar);
                }

                /* renamed from: i */
                public final d<s> m23707i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    C12012b c12012b = new C12012b(dVar);
                    c12012b.f35225e = obj;
                    return c12012b;
                }

                /* renamed from: k */
                public final Object m23706k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    dVar.getContext();
                    C25225a.m3932a3(s.a);
                    return ((AbstractC12020a) obj).getState();
                }

                /* renamed from: s */
                public final Object m23705s(Object obj) {
                    C25225a.m3932a3(obj);
                    return ((AbstractC12020a) this.f35225e).getState();
                }
            }

            public C12010a(g gVar, C12009c c12009c) {
                this.f35221a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23709a(java.lang.Object r7, s1.w.d r8) {
                /*
                    r6 = this;
                    r0 = r8
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p658k.C12006x0.C12009c.C12010a.C12011a
                    if (r0 == 0) goto L28
                    r0 = r8
                    e.a.d.v.k.x0$c$a$a r0 = (p193e.p194a.p619d.p657v.p658k.C12006x0.C12009c.C12010a.C12011a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f35223e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f35223e = r1
                    r0 = r9
                    r8 = r0
                    goto L32
                L28:
                    e.a.d.v.k.x0$c$a$a r0 = new e.a.d.v.k.x0$c$a$a
                    r1 = r0
                    r2 = r6
                    r3 = r8
                    r1.<init>(r3)
                    r8 = r0
                L32:
                    r0 = r8
                    java.lang.Object r0 = r0.f35222d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r8
                    int r0 = r0.f35223e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L5f
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L55
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L98
                L55:
                    java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                    r1 = r0
                    java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                    r1.<init>(r2)
                    throw r0
                L5f:
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    r0 = r6
                    q3.a.x2.g r0 = r0.f35221a
                    r11 = r0
                    q3.a.x2.h r0 = new q3.a.x2.h
                    r1 = r0
                    r2 = r7
                    java.util.Set r2 = (java.util.Set) r2
                    r1.<init>(r2)
                    r1 = 0
                    e.a.d.v.k.x0$c$a$b r2 = new e.a.d.v.k.x0$c$a$b
                    r3 = r2
                    r4 = 0
                    r3.<init>(r4)
                    r3 = 1
                    r4 = 0
                    q3.a.x2.f r0 = s1.a.a.a.v0.f.d.S0(r0, r1, r2, r3, r4)
                    r7 = r0
                    r0 = r8
                    r1 = 1
                    r0.f35223e = r1
                    r0 = r11
                    r1 = r7
                    r2 = r8
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L98
                    r0 = r9
                    return r0
                L98:
                    s1.s r0 = s1.s.a
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C12006x0.C12009c.C12010a.m23709a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12009c(f fVar) {
            this.f35220a = fVar;
        }

        /* renamed from: c */
        public Object m23710c(g gVar, d dVar) {
            Object c = this.f35220a.c(new C12010a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12006x0(C12014y0 c12014y0, d dVar) {
        super(2, dVar);
        this.f35215f = c12014y0;
    }

    /* renamed from: i */
    public final d<s> m23718i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12006x0(this.f35215f, dVar);
    }

    /* renamed from: k */
    public final Object m23717k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12006x0(this.f35215f, dVar).m23716s(s.a);
    }

    /* renamed from: s */
    public final Object m23716s(Object obj) {
        a aVar = a.a;
        int i = this.f35214e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f P3 = s1.a.a.a.v0.f.d.P3(new C12009c(this.f35215f.f35230b), new C12008b(null));
            C12007a c12007a = new C12007a(null);
            this.f35214e = 1;
            if (s1.a.a.a.v0.f.d.N0(P3, c12007a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        C12014y0 c12014y0 = this.f35215f;
        c12014y0.f35229a.setValue(new Long(c12014y0.f35231c.mo13821a()));
        return s.a;
    }
}
