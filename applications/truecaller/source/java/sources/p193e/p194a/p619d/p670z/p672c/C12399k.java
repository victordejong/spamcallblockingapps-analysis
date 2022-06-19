package p193e.p194a.p619d.p670z.p672c;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p619d.p661w.AbstractC12111g;
import p193e.p194a.p619d.p661w.AbstractC12114h;
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
@e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showVoipScreenOnWaitingAnswer$1", f = "InvitationServicePresenter.kt", l = {331}, m = "invokeSuspend")
/* renamed from: e.a.d.z.c.k */
/* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k.class */
public final class C12399k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f36180e;

    /* renamed from: f */
    public final /* synthetic */ C12382e f36181f;

    @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showVoipScreenOnWaitingAnswer$1$1", f = "InvitationServicePresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.d.z.c.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$a.class */
    public static final class C12400a extends i implements p<AbstractC12111g.C12112a, d<? super f<? extends AbstractC12114h>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f36182e;

        public C12400a(d dVar) {
            super(2, dVar);
        }

        /* renamed from: i */
        public final d<s> m23108i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C12400a c12400a = new C12400a(dVar);
            c12400a.f36182e = obj;
            return c12400a;
        }

        /* renamed from: k */
        public final Object m23107k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return ((AbstractC12111g.C12112a) obj).f35449a.getState();
        }

        /* renamed from: s */
        public final Object m23106s(Object obj) {
            C25225a.m3932a3(obj);
            return ((AbstractC12111g.C12112a) this.f36182e).f35449a.getState();
        }
    }

    /* renamed from: e.a.d.z.c.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$b.class */
    public static final class C12401b implements g<AbstractC12114h> {
        public C12401b() {
            C12399k.this = r4;
        }

        /* renamed from: a */
        public Object m23105a(Object obj, d dVar) {
            a aVar;
            a aVar2 = s.a;
            AbstractC12114h abstractC12114h = (AbstractC12114h) obj;
            AbstractC12377c abstractC12377c = (AbstractC12377c) C12399k.this.f36181f.f57683a;
            if (abstractC12377c != null) {
                abstractC12377c.mo23162d();
                aVar = aVar2;
            } else {
                aVar = null;
            }
            return aVar == a.a ? aVar : aVar2;
        }
    }

    /* renamed from: e.a.d.z.c.k$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$c.class */
    public static final class C12402c implements f<AbstractC12114h> {

        /* renamed from: a */
        public final /* synthetic */ f f36184a;

        /* renamed from: e.a.d.z.c.k$c$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$c$a.class */
        public static final class C12403a implements g<AbstractC12114h> {

            /* renamed from: a */
            public final /* synthetic */ g f36185a;

            @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showVoipScreenOnWaitingAnswer$1$invokeSuspend$$inlined$filter$1$2", f = "InvitationServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.c.k$c$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$c$a$a.class */
            public static final class C12404a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36186d;

                /* renamed from: e */
                public int f36187e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12404a(d dVar) {
                    super(dVar);
                    C12403a.this = r4;
                }

                /* renamed from: s */
                public final Object m23102s(Object obj) {
                    this.f36186d = obj;
                    this.f36187e |= Integer.MIN_VALUE;
                    return C12403a.this.m23103a(null, this);
                }
            }

            public C12403a(g gVar, C12402c c12402c) {
                this.f36185a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23103a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p672c.C12399k.C12402c.C12403a.C12404a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.z.c.k$c$a$a r0 = (p193e.p194a.p619d.p670z.p672c.C12399k.C12402c.C12403a.C12404a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f36187e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36187e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.z.c.k$c$a$a r0 = new e.a.d.z.c.k$c$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f36186d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f36187e
                    r10 = r0
                    r0 = r10
                    if (r0 == 0) goto L68
                    r0 = r10
                    r1 = 1
                    if (r0 != r1) goto L5e
                    r0 = r11
                    p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                    goto L9c
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
                    q3.a.x2.g r0 = r0.f36185a
                    r11 = r0
                    r0 = r6
                    e.a.d.w.h r0 = (p193e.p194a.p619d.p661w.AbstractC12114h) r0
                    e.a.d.w.h$c r1 = p193e.p194a.p619d.p661w.AbstractC12114h.C12129c.f35465b
                    boolean r0 = s1.z.c.l.a(r0, r1)
                    java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                    boolean r0 = r0.booleanValue()
                    if (r0 == 0) goto L9c
                    r0 = r7
                    r1 = 1
                    r0.f36187e = r1
                    r0 = r11
                    r1 = r6
                    r2 = r7
                    java.lang.Object r0 = r0.a(r1, r2)
                    r1 = r9
                    if (r0 != r1) goto L9c
                    r0 = r9
                    return r0
                L9c:
                    r0 = r8
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12399k.C12402c.C12403a.m23103a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12402c(f fVar) {
            this.f36184a = fVar;
        }

        /* renamed from: c */
        public Object m23104c(g gVar, d dVar) {
            Object c = this.f36184a.c(new C12403a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* renamed from: e.a.d.z.c.k$d */
    /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$d.class */
    public static final class C12405d implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f36189a;

        /* renamed from: e.a.d.z.c.k$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$d$a.class */
        public static final class C12406a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f36190a;

            @e(c = "com.truecaller.voip.service.invitation.InvitationServicePresenter$showVoipScreenOnWaitingAnswer$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "InvitationServicePresenter.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.z.c.k$d$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/z/c/k$d$a$a.class */
            public static final class C12407a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f36191d;

                /* renamed from: e */
                public int f36192e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C12407a(d dVar) {
                    super(dVar);
                    C12406a.this = r4;
                }

                /* renamed from: s */
                public final Object m23099s(Object obj) {
                    this.f36191d = obj;
                    this.f36192e |= Integer.MIN_VALUE;
                    return C12406a.this.m23100a(null, this);
                }
            }

            public C12406a(g gVar, C12405d c12405d) {
                this.f36190a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m23100a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p670z.p672c.C12399k.C12405d.C12406a.C12407a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.z.c.k$d$a$a r0 = (p193e.p194a.p619d.p670z.p672c.C12399k.C12405d.C12406a.C12407a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f36192e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f36192e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.z.c.k$d$a$a r0 = new e.a.d.z.c.k$d$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f36191d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f36192e
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
                    q3.a.x2.g r0 = r0.f36190a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.AbstractC12111g.C12112a
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f36192e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p670z.p672c.C12399k.C12405d.C12406a.m23100a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C12405d(f fVar) {
            this.f36189a = fVar;
        }

        /* renamed from: c */
        public Object m23101c(g gVar, d dVar) {
            Object c = this.f36189a.c(new C12406a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12399k(C12382e c12382e, d dVar) {
        super(2, dVar);
        this.f36181f = c12382e;
    }

    /* renamed from: i */
    public final d<s> m23111i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C12399k(this.f36181f, dVar);
    }

    /* renamed from: k */
    public final Object m23110k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C12399k(this.f36181f, dVar).m23109s(s.a);
    }

    /* renamed from: s */
    public final Object m23109s(Object obj) {
        a aVar = a.a;
        int i = this.f36180e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f F0 = s1.a.a.a.v0.f.d.F0(new C12402c(s1.a.a.a.v0.f.d.S0(new C12405d(this.f36181f.f36121g.getState()), 0, new C12400a(null), 1, (Object) null)));
            C12401b c12401b = new C12401b();
            this.f36180e = 1;
            if (F0.c(c12401b, this) == aVar) {
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
