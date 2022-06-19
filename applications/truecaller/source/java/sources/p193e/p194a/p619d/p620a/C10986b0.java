package p193e.p194a.p619d.p620a;

import p193e.p194a.p619d.p620a.C10975a0;
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
@e(c = "com.truecaller.voip.debug.MockInvitation$senderVoipId$2$1", f = "MockInvitation.kt", l = {84, 45}, m = "invokeSuspend")
/* renamed from: e.a.d.a.b0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/b0.class */
public final class C10986b0 extends i implements p<i0, d<? super String>, Object> {

    /* renamed from: e */
    public int f32541e;

    /* renamed from: f */
    public final /* synthetic */ C10975a0.C10980e f32542f;

    /* renamed from: e.a.d.a.b0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/a/b0$a.class */
    public static final class C10987a implements f<Object> {

        /* renamed from: a */
        public final /* synthetic */ f f32543a;

        /* renamed from: e.a.d.a.b0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/a/b0$a$a.class */
        public static final class C10988a implements g<Object> {

            /* renamed from: a */
            public final /* synthetic */ g f32544a;

            @e(c = "com.truecaller.voip.debug.MockInvitation$senderVoipId$2$1$invokeSuspend$$inlined$filterIsInstance$1$2", f = "MockInvitation.kt", l = {135}, m = "emit")
            /* renamed from: e.a.d.a.b0$a$a$a */
            /* loaded from: classes15-dex2jar.jar:e/a/d/a/b0$a$a$a.class */
            public static final class C10989a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f32545d;

                /* renamed from: e */
                public int f32546e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C10989a(d dVar) {
                    super(dVar);
                    C10988a.this = r4;
                }

                /* renamed from: s */
                public final Object m25431s(Object obj) {
                    this.f32545d = obj;
                    this.f32546e |= Integer.MIN_VALUE;
                    return C10988a.this.m25432a(null, this);
                }
            }

            public C10988a(g gVar, C10987a c10987a) {
                this.f32544a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m25432a(java.lang.Object r6, s1.w.d r7) {
                /*
                    r5 = this;
                    s1.s r0 = s1.s.a
                    r8 = r0
                    r0 = r7
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p620a.C10986b0.C10987a.C10988a.C10989a
                    if (r0 == 0) goto L30
                    r0 = r7
                    e.a.d.a.b0$a$a$a r0 = (p193e.p194a.p619d.p620a.C10986b0.C10987a.C10988a.C10989a) r0
                    r9 = r0
                    r0 = r9
                    int r0 = r0.f32546e
                    r10 = r0
                    r0 = r10
                    r1 = -2147483648(0xffffffff80000000, float:-0.0)
                    r0 = r0 & r1
                    if (r0 == 0) goto L30
                    r0 = r9
                    r1 = r10
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    int r1 = r1 + r2
                    r0.f32546e = r1
                    r0 = r9
                    r7 = r0
                    goto L3a
                L30:
                    e.a.d.a.b0$a$a$a r0 = new e.a.d.a.b0$a$a$a
                    r1 = r0
                    r2 = r5
                    r3 = r7
                    r1.<init>(r3)
                    r7 = r0
                L3a:
                    r0 = r7
                    java.lang.Object r0 = r0.f32545d
                    r11 = r0
                    s1.w.j.a r0 = s1.w.j.a.a
                    r9 = r0
                    r0 = r7
                    int r0 = r0.f32546e
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
                    q3.a.x2.g r0 = r0.f32544a
                    r11 = r0
                    r0 = r6
                    boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.AbstractC11416j.C11418b
                    if (r0 == 0) goto L90
                    r0 = r7
                    r1 = 1
                    r0.f32546e = r1
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
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C10986b0.C10987a.C10988a.m25432a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C10987a(f fVar) {
            this.f32543a = fVar;
        }

        /* renamed from: c */
        public Object m25433c(g gVar, d dVar) {
            Object c = this.f32543a.c(new C10988a(gVar, this), dVar);
            return c == a.a ? c : s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10986b0(C10975a0.C10980e c10980e, d dVar) {
        super(2, dVar);
        this.f32542f = c10980e;
    }

    /* renamed from: i */
    public final d<s> m25436i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10986b0(this.f32542f, dVar);
    }

    /* renamed from: k */
    public final Object m25435k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10986b0(this.f32542f, dVar).m25434s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ba, code lost:
        if (r5 == null) goto L28;
     */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25434s(java.lang.Object r5) {
        /*
            r4 = this;
            s1.w.j.a r0 = s1.w.j.a.a
            r6 = r0
            r0 = r4
            int r0 = r0.f32541e
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L2f
            r0 = r7
            r1 = 1
            if (r0 == r1) goto L28
            r0 = r7
            r1 = 2
            if (r0 != r1) goto L1e
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto Lb4
        L1e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L28:
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto L7c
        L2f:
            r0 = r5
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r4
            e.a.d.a.a0$e r0 = r0.f32542f
            e.a.d.a.a0 r0 = p193e.p194a.p619d.p620a.C10975a0.this
            e.a.d.a.p r0 = r0.f32515f
            q3.a.x2.a1<java.util.Set<e.a.d.c0.z1.e>> r0 = r0.f32629a
            java.lang.Object r0 = r0.getValue()
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.lang.Object r0 = s1.u.i.C(r0)
            e.a.d.c0.z1.e r0 = (p193e.p194a.p619d.p637c0.p642z1.C11593e) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lc0
            r0 = r5
            q3.a.x2.i1<e.a.d.c0.j> r0 = r0.f33991b
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lc0
            e.a.d.a.b0$a r0 = new e.a.d.a.b0$a
            r1 = r0
            r2 = r5
            r1.<init>(r2)
            r5 = r0
            r0 = r4
            r1 = 1
            r0.f32541e = r1
            r0 = r5
            r1 = r4
            java.lang.Object r0 = s1.a.a.a.v0.f.d.M0(r0, r1)
            r8 = r0
            r0 = r8
            r5 = r0
            r0 = r8
            r1 = r6
            if (r0 != r1) goto L7c
            r0 = r6
            return r0
        L7c:
            r0 = r5
            e.a.d.c0.j$b r0 = (p193e.p194a.p619d.p637c0.AbstractC11416j.C11418b) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lc0
            r0 = r4
            e.a.d.a.a0$e r0 = r0.f32542f
            e.a.d.c0.y0 r0 = r0.f32524c
            r5 = r0
            r0 = r8
            e.a.d.b0.a r0 = r0.f33540a
            java.lang.String r0 = r0.f32996d
            r8 = r0
            r0 = r4
            r1 = 2
            r0.f32541e = r1
            r0 = r5
            r1 = r8
            r2 = r4
            java.lang.Object r0 = r0.mo24454b(r1, r2)
            r8 = r0
            r0 = r8
            r5 = r0
            r0 = r8
            r1 = r6
            if (r0 != r1) goto Lb4
            r0 = r6
            return r0
        Lb4:
            r0 = r5
            java.lang.String r0 = (java.lang.String) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto Lc0
            goto Lc3
        Lc0:
            java.lang.String r0 = ""
            r5 = r0
        Lc3:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p620a.C10986b0.m25434s(java.lang.Object):java.lang.Object");
    }
}
