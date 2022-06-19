package p193e.p194a.p749f3;

import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.callbubbles.CallBubblesImpl$maybeInitialize$1", f = "CallBubbles.kt", l = {166}, m = "invokeSuspend")
/* renamed from: e.a.f3.r */
/* loaded from: classes6-dex2jar.jar:e/a/f3/r.class */
public final class C13924r extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f40326e;

    /* renamed from: f */
    public final /* synthetic */ C13919o f40327f;

    @e(c = "com.truecaller.callbubbles.CallBubblesImpl$maybeInitialize$1$1", f = "CallBubbles.kt", l = {169}, m = "invokeSuspend")
    /* renamed from: e.a.f3.r$a */
    /* loaded from: classes6-dex2jar.jar:e/a/f3/r$a.class */
    public static final class C13925a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f40328e;

        /* renamed from: f */
        public int f40329f;

        /* renamed from: h */
        public final /* synthetic */ c0 f40331h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13925a(c0 c0Var, d dVar) {
            super(2, dVar);
            C13924r.this = r5;
            this.f40331h = c0Var;
        }

        /* renamed from: i */
        public final d<s> m20958i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C13925a(this.f40331h, dVar);
        }

        /* renamed from: k */
        public final Object m20957k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C13925a(this.f40331h, dVar).m20956s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0076  */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:17:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00ae  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0078 -> B:15:0x0081). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m20956s(java.lang.Object r5) {
            /*
                r4 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r6 = r0
                r0 = r4
                int r0 = r0.f40329f
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L31
                r0 = r7
                r1 = 1
                if (r0 != r1) goto L27
                r0 = r4
                java.lang.Object r0 = r0.f40328e
                q3.a.w2.l r0 = (q3.a.w2.l) r0
                r8 = r0
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r6
                r9 = r0
                r0 = r4
                r6 = r0
                goto L81
            L27:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L31:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                s1.z.c.c0 r0 = r0.f40331h
                java.lang.Object r0 = r0.a
                com.truecaller.callbubbles.CallBubblesContainerView r0 = (com.truecaller.callbubbles.CallBubblesContainerView) r0
                r0.m35787o()
                r0 = r4
                e.a.f3.r r0 = p193e.p194a.p749f3.C13924r.this
                e.a.f3.o r0 = r0.f40327f
                q3.a.w2.j r0 = r0.m20964a()
                q3.a.w2.l r0 = r0.iterator()
                r8 = r0
                r0 = r4
                r9 = r0
                r0 = r6
                r5 = r0
            L58:
                r0 = r9
                r1 = r8
                r0.f40328e = r1
                r0 = r9
                r1 = 1
                r0.f40329f = r1
                r0 = r8
                r1 = r9
                java.lang.Object r0 = r0.a(r1)
                r10 = r0
                r0 = r10
                r1 = r5
                if (r0 != r1) goto L78
                r0 = r5
                return r0
            L78:
                r0 = r9
                r6 = r0
                r0 = r5
                r9 = r0
                r0 = r10
                r5 = r0
            L81:
                r0 = r5
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto Lae
                r0 = r8
                java.lang.Object r0 = r0.next()
                s1.z.b.l r0 = (s1.z.b.l) r0
                r1 = r6
                s1.z.c.c0 r1 = r1.f40331h
                java.lang.Object r1 = r1.a
                com.truecaller.callbubbles.CallBubblesContainerView r1 = (com.truecaller.callbubbles.CallBubblesContainerView) r1
                java.lang.Object r0 = r0.d(r1)
                r0 = r9
                r5 = r0
                r0 = r6
                r9 = r0
                goto L58
            Lae:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p749f3.C13924r.C13925a.m20956s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13924r(C13919o c13919o, d dVar) {
        super(2, dVar);
        this.f40327f = c13919o;
    }

    /* renamed from: i */
    public final d<s> m20961i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C13924r(this.f40327f, dVar);
    }

    /* renamed from: k */
    public final Object m20960k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C13924r(this.f40327f, dVar).m20959s(s.a);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0135, code lost:
        if (r7 == null) goto L41;
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x014d  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m20959s(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 438
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p749f3.C13924r.m20959s(java.lang.Object):java.lang.Object");
    }
}
