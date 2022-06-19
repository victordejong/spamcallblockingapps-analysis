package p193e.p194a.p619d.p620a;

import android.os.SystemClock;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
@e(c = "com.truecaller.voip.debug.MockGroupCall$setElapsedTimeOnFirstOngoingPeer$1", f = "MockGroupCall.kt", l = {119}, m = "invokeSuspend")
/* renamed from: e.a.d.a.x */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/x.class */
public final class C11052x extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f32685e;

    /* renamed from: f */
    public final /* synthetic */ C11041v f32686f;

    @e(c = "com.truecaller.voip.debug.MockGroupCall$setElapsedTimeOnFirstOngoingPeer$1$3", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.x$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/x$a.class */
    public static final class C11053a extends i implements p<AbstractC12022c, d<? super Boolean>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f32687e;

        public C11053a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m25342i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C11053a c11053a = new C11053a(dVar);
            c11053a.f32687e = obj;
            return c11053a;
        }

        /* renamed from: k */
        public final Object m25341k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return Boolean.valueOf(((AbstractC12022c) obj).m25331a(AbstractC12022c.C12033c.f35254b));
        }

        /* renamed from: s */
        public final Object m25340s(Object obj) {
            C25225a.m3932a3(obj);
            return Boolean.valueOf(((AbstractC12022c) this.f32687e).m25331a(AbstractC12022c.C12033c.f35254b));
        }
    }

    @e(c = "com.truecaller.voip.debug.MockGroupCall$setElapsedTimeOnFirstOngoingPeer$1$invokeSuspend$$inlined$flatMapLatest$1", f = "MockGroupCall.kt", l = {217}, m = "invokeSuspend")
    /* renamed from: e.a.d.a.x$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/x$b.class */
    public static final class C11054b extends i implements q<g<? super AbstractC12022c>, f<? extends AbstractC12022c>, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f32688e;

        /* renamed from: f */
        public /* synthetic */ Object f32689f;

        /* renamed from: g */
        public int f32690g;

        public C11054b(d dVar) {
            super(3, dVar);
        }

        /* renamed from: h */
        public final Object m25339h(Object obj, Object obj2, Object obj3) {
            C11054b c11054b = new C11054b((d) obj3);
            c11054b.f32688e = (g) obj;
            c11054b.f32689f = obj2;
            return c11054b.m25338s(s.a);
        }

        /* renamed from: s */
        public final Object m25338s(Object obj) {
            a aVar = a.a;
            int i = this.f32690g;
            if (i == 0) {
                C25225a.m3932a3(obj);
                g gVar = (g) this.f32688e;
                this.f32690g = 1;
                if (((f) this.f32689f).c(gVar, this) == aVar) {
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

    /* renamed from: e.a.d.a.x$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/x$c.class */
    public static final class C11055c implements f<f<? extends AbstractC12022c>> {

        /* renamed from: a */
        public final /* synthetic */ f f32691a;

        /* renamed from: e.a.d.a.x$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/x$c$a.class */
        public static final class C11056a implements g<Set<? extends C11029o>> {

            /* renamed from: a */
            public final /* synthetic */ g f32692a;

            @e(c = "com.truecaller.voip.debug.MockGroupCall$setElapsedTimeOnFirstOngoingPeer$1$invokeSuspend$$inlined$map$1$2", f = "MockGroupCall.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.x$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/x$c$a$a.class */
            public static final class C11057a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32693d;

                /* renamed from: e */
                public int f32694e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C11057a(d dVar) {
                    super(dVar);
                    C11056a.this = r4;
                }

                /* renamed from: s */
                public final Object m25335s(Object obj) {
                    this.f32693d = obj;
                    this.f32694e |= Integer.MIN_VALUE;
                    return C11056a.this.m25336a(null, this);
                }
            }

            @e(c = "com.truecaller.voip.debug.MockGroupCall$setElapsedTimeOnFirstOngoingPeer$1$1$1", f = "MockGroupCall.kt", l = {}, m = "invokeSuspend")
            /* renamed from: e.a.d.a.x$c$a$b */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/x$c$a$b.class */
            public static final class C11058b extends i implements p<C11029o, d<? super f<? extends AbstractC12022c>>, Object> {

                /* renamed from: e */
                public /* synthetic */ Object f32696e;

                public C11058b(d dVar) {
                    super(2, dVar);
                }

                /* renamed from: i */
                public final d<s> m25334i(Object obj, d<?> dVar) {
                    l.e(dVar, "completion");
                    C11058b c11058b = new C11058b(dVar);
                    c11058b.f32696e = obj;
                    return c11058b;
                }

                /* renamed from: k */
                public final Object m25333k(Object obj, Object obj2) {
                    d dVar = (d) obj2;
                    l.e(dVar, "completion");
                    dVar.getContext();
                    C25225a.m3932a3(s.a);
                    return ((C11029o) obj).f32619b;
                }

                /* renamed from: s */
                public final Object m25332s(Object obj) {
                    C25225a.m3932a3(obj);
                    return ((C11029o) this.f32696e).f32619b;
                }
            }

            public C11056a(g gVar, C11055c c11055c) {
                this.f32692a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25336a(java.lang.Object r7, s1.w.d r8) {
                /*
                    r6 = this;
                    r0 = r8
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C11052x.C11055c.C11056a.C11057a
                    if (r0 == 0) goto L28
                    r0 = r8
                    e.a.d.a.x$c$a$a r0 = (p193e.p194a.p619d.p620a.C11052x.C11055c.C11056a.C11057a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f32694e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L28
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32694e = r1
                    r0 = r9
                    r8 = r0
                    goto L32
                L28:
                    e.a.d.a.x$c$a$a r0 = new e.a.d.a.x$c$a$a
                    r1 = r0
                    r2 = r6
                    r3 = r8
                    r1.<init>(r3)
                    r8 = r0
                L32:
                    r0 = r8
                    java.lang.Object r0 = r0.f32693d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r8
                    int r0 = r0.f32694e
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
                    q3.a.x2.g r0 = r0.f32692a
                    r11 = r0
                    q3.a.x2.h r0 = new q3.a.x2.h
                    r1 = r0
                    r2 = r7
                    java.util.Set r2 = (java.util.Set) r2
                    r1.<init>(r2)
                    r1 = 0
                    e.a.d.a.x$c$a$b r2 = new e.a.d.a.x$c$a$b
                    r3 = r2
                    r4 = 0
                    r3.<init>(r4)
                    r3 = 1
                    r4 = 0
                    q3.a.x2.f r0 = s1.a.a.a.v0.f.d.S0(r0, r1, r2, r3, r4)
                    r7 = r0
                    r0 = r8
                    r1 = 1
                    r0.f32694e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C11052x.C11055c.C11056a.m25336a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C11055c(f fVar) {
            this.f32691a = fVar;
        }

        /* renamed from: c */
        public Object m25337c(g gVar, d dVar) {
            Object c = this.f32691a.c(new C11056a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C11052x(C11041v c11041v, d dVar) {
        super(2, dVar);
        this.f32686f = c11041v;
    }

    /* renamed from: i */
    public final d<s> m25345i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C11052x(this.f32686f, dVar);
    }

    /* renamed from: k */
    public final Object m25344k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C11052x(this.f32686f, dVar).m25343s(s.a);
    }

    /* renamed from: s */
    public final Object m25343s(Object obj) {
        a aVar = a.a;
        int i = this.f32685e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f P3 = s1.a.a.a.v0.f.d.P3(new C11055c(this.f32686f.f32664f), new C11054b(null));
            C11053a c11053a = new C11053a(null);
            this.f32685e = 1;
            if (s1.a.a.a.v0.f.d.N0(P3, c11053a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        this.f32686f.f32665g.setValue(new Long(SystemClock.elapsedRealtime()));
        return s.a;
    }
}
