package p193e.p194a.p619d.p670z.p671b;

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
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.voip.service.call.CallServicePresenter$onNewIncomingCall$1", f = "CallServicePresenter.kt", l = {331, 93}, m = "invokeSuspend")
/* renamed from: e.a.d.z.b.f */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/b/f.class */
public final class C12348f extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36054e;

    /* renamed from: f */
    public final /* synthetic */ C12334c f36055f;

    /* renamed from: e.a.d.z.b.f$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/f$a.class */
    public static final class C12349a implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f36056a;

        /* renamed from: e.a.d.z.b.f$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/f$a$a.class */
        public static final class C12350a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f36057a;

            @e(c = "com.truecaller.voip.service.call.CallServicePresenter$onNewIncomingCall$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "CallServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.b.f$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/b/f$a$a$a.class */
            public static final class C12351a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36058d;

                /* renamed from: e */
                public int f36059e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12351a(d dVar) {
                    super(dVar);
                    C12350a.this = r4;
                }

                /* renamed from: s */
                public final Object m23204s(Object obj) {
                    this.f36058d = obj;
                    this.f36059e |= Integer.MIN_VALUE;
                    return C12350a.this.m23205a(null, this);
                }
            }

            public C12350a(g gVar, C12349a c12349a) {
                this.f36057a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23205a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p671b.C12348f.C12349a.C12350a.C12351a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.z.b.f$a$a$a r0 = (p193e.p194a.p619d.p670z.p671b.C12348f.C12349a.C12350a.C12351a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f36059e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36059e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.z.b.f$a$a$a r0 = new e.a.d.z.b.f$a$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f36058d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f36059e
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
                    q3.a.x2.g r0 = r0.f36057a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.AbstractC11835f.C11836a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f36059e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p671b.C12348f.C12349a.C12350a.m23205a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12349a(f fVar) {
            this.f36056a = fVar;
        }

        /* renamed from: c */
        public Object m23206c(g gVar, d dVar) {
            Object c = this.f36056a.c(new C12350a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12348f(C12334c c12334c, d dVar) {
        super(2, dVar);
        this.f36055f = c12334c;
    }

    /* renamed from: i */
    public final d<s> m23209i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12348f(this.f36055f, dVar);
    }

    /* renamed from: k */
    public final Object m23208k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12348f(this.f36055f, dVar).m23207s(s.a);
    }

    /* renamed from: s */
    public final Object m23207s(Object obj) {
        a aVar = a.a;
        int i = this.f36054e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            this.f36055f.m23237Nj();
            C12349a c12349a = new C12349a(this.f36055f.f36019f.getState());
            this.f36054e = 1;
            Object O0 = s1.a.a.a.v0.f.d.O0(c12349a, this);
            obj = O0;
            if (O0 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            return s.a;
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC11835f.C11836a c11836a = (AbstractC11835f.C11836a) obj;
        if (c11836a != null) {
            C12334c c12334c = this.f36055f;
            AbstractC11822b abstractC11822b = c11836a.f34807a;
            this.f36054e = 2;
            if (c12334c.m23234Qj(abstractC11822b, this) == aVar) {
                return aVar;
            }
        }
        return s.a;
    }
}
