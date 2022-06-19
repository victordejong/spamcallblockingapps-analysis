package p193e.p194a.p619d.p670z.p672c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12093b;
import p193e.p194a.p619d.p661w.AbstractC12111g;
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
@e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$exitWhenIdle$1", f = "InvitationServicePresenter.kt", l = {320, 256}, m = "invokeSuspend")
/* renamed from: e.a.d.z.c.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/d.class */
public final class C12378d extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36111e;

    /* renamed from: f */
    public final /* synthetic */ C12382e f36112f;

    /* renamed from: e.a.d.z.c.d$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/d$a.class */
    public static final class C12379a implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f36113a;

        /* renamed from: e.a.d.z.c.d$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/d$a$a.class */
        public static final class C12380a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f36114a;

            @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$exitWhenIdle$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "InvitationServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.c.d$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/d$a$a$a.class */
            public static final class C12381a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36115d;

                /* renamed from: e */
                public int f36116e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12381a(d dVar) {
                    super(dVar);
                    C12380a.this = r4;
                }

                /* renamed from: s */
                public final Object m23151s(Object obj) {
                    this.f36115d = obj;
                    this.f36116e |= Integer.MIN_VALUE;
                    return C12380a.this.m23152a(null, this);
                }
            }

            public C12380a(g gVar, C12379a c12379a) {
                this.f36114a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23152a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p672c.C12378d.C12379a.C12380a.C12381a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.z.c.d$a$a$a r0 = (p193e.p194a.p619d.p670z.p672c.C12378d.C12379a.C12380a.C12381a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f36116e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36116e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.z.c.d$a$a$a r0 = new e.a.d.z.c.d$a$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f36115d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f36116e
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
                    q3.a.x2.g r0 = r0.f36114a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.AbstractC12111g.C12112a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f36116e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12378d.C12379a.C12380a.m23152a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12379a(f fVar) {
            this.f36113a = fVar;
        }

        /* renamed from: c */
        public Object m23153c(g gVar, d dVar) {
            Object c = this.f36113a.c(new C12380a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12378d(C12382e c12382e, d dVar) {
        super(2, dVar);
        this.f36112f = c12382e;
    }

    /* renamed from: i */
    public final d<s> m23156i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12378d(this.f36112f, dVar);
    }

    /* renamed from: k */
    public final Object m23155k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12378d(this.f36112f, dVar).m23154s(s.a);
    }

    /* renamed from: s */
    public final Object m23154s(Object obj) {
        a aVar = a.a;
        int i = this.f36111e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C12379a c12379a = new C12379a(this.f36112f.f36121g.getState());
            this.f36111e = 1;
            Object M0 = s1.a.a.a.v0.f.d.M0(c12379a, this);
            obj = M0;
            if (M0 == aVar) {
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
        AbstractC12093b abstractC12093b = ((AbstractC12111g.C12112a) obj).f35449a;
        C12382e c12382e = this.f36112f;
        this.f36111e = 2;
        if (c12382e.m23147Lj(abstractC12093b, this) == aVar) {
            return aVar;
        }
        return s.a;
    }
}
