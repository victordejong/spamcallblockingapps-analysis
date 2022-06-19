package p193e.p194a.p294b.p357o.p364e;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.governmentServices.mvp.DistrictListPresenter$checkAndLoadData$1", f = "DistrictListMvp.kt", l = {137}, m = "invokeSuspend")
/* renamed from: e.a.b.o.e.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/e/c.class */
public final class C8149c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f25239e;

    /* renamed from: f */
    public final /* synthetic */ C8151d f25240f;

    @e(c = "com.truecaller.bizmon.governmentServices.mvp.DistrictListPresenter$checkAndLoadData$1$2", f = "DistrictListMvp.kt", l = {138, 138, 139}, m = "invokeSuspend")
    /* renamed from: e.a.b.o.e.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/o/e/c$a.class */
    public static final class C8150a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f25241e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8150a(d dVar) {
            super(2, dVar);
            C8149c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m28870i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C8150a(dVar);
        }

        /* renamed from: k */
        public final Object m28869k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C8150a(dVar).m28868s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x009b  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m28868s(java.lang.Object r6) {
            /*
                r5 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r7 = r0
                r0 = r5
                int r0 = r0.f25241e
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L3b
                r0 = r8
                r1 = 1
                if (r0 == r1) goto L34
                r0 = r8
                r1 = 2
                if (r0 == r1) goto L2d
                r0 = r8
                r1 = 3
                if (r0 != r1) goto L23
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lb3
            L23:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L2d:
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L91
            L34:
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L73
            L3b:
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                e.a.b.o.e.c r0 = p193e.p194a.p294b.p357o.p364e.C8149c.this
                e.a.b.o.e.d r0 = r0.f25240f
                e.a.b.o.b.a r0 = r0.f25247h
                r6 = r0
                r0 = r5
                r1 = 1
                r0.f25241e = r1
                r0 = r6
                e.a.b.o.b.d r0 = (p193e.p194a.p294b.p357o.p359b.C8126d) r0
                r6 = r0
                r0 = r6
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                e.a.b.o.b.b r0 = new e.a.b.o.b.b
                r1 = r0
                r2 = r6
                r3 = 0
                r1.<init>(r2, r3)
                r1 = r5
                java.lang.Object r0 = s1.a.a.a.v0.f.d.o0(r0, r1)
                r9 = r0
                r0 = r9
                r6 = r0
                r0 = r9
                r1 = r7
                if (r0 != r1) goto L73
                r0 = r7
                return r0
            L73:
                r0 = r6
                q3.a.n0 r0 = (q3.a.n0) r0
                r6 = r0
                r0 = r5
                r1 = 2
                r0.f25241e = r1
                r0 = r6
                r1 = r5
                java.lang.Object r0 = r0.s(r1)
                r9 = r0
                r0 = r9
                r6 = r0
                r0 = r9
                r1 = r7
                if (r0 != r1) goto L91
                r0 = r7
                return r0
            L91:
                r0 = r6
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto Lb3
                r0 = r5
                e.a.b.o.e.c r0 = p193e.p194a.p294b.p357o.p364e.C8149c.this
                e.a.b.o.e.d r0 = r0.f25240f
                r6 = r0
                r0 = r5
                r1 = 3
                r0.f25241e = r1
                r0 = r6
                r1 = r5
                java.lang.Object r0 = r0.m28867Ij(r1)
                r1 = r7
                if (r0 != r1) goto Lb3
                r0 = r7
                return r0
            Lb3:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p357o.p364e.C8149c.C8150a.m28868s(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C8149c(C8151d c8151d, d dVar) {
        super(2, dVar);
        this.f25240f = c8151d;
    }

    /* renamed from: i */
    public final d<s> m28873i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C8149c(this.f25240f, dVar);
    }

    /* renamed from: k */
    public final Object m28872k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C8149c(this.f25240f, dVar).m28871s(s.a);
    }

    /* renamed from: s */
    public final Object m28871s(Object obj) {
        a aVar = a.a;
        int i = this.f25239e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC8148b abstractC8148b = (AbstractC8148b) this.f25240f.f57683a;
            if (abstractC8148b != null) {
                abstractC8148b.mo28812w3();
                abstractC8148b.mo28821e6();
            }
            f fVar = this.f25240f.f25252m;
            C8150a c8150a = new C8150a(null);
            this.f25239e = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c8150a, this) == aVar) {
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
