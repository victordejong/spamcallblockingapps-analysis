package p193e.p194a.p619d.p657v.p658k;

import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.d.v.k.w */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/w.class */
public final class C12001w implements f<Boolean> {

    /* renamed from: a */
    public final /* synthetic */ f f35208a;

    /* renamed from: e.a.d.v.k.w$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/w$a.class */
    public static final class C12002a implements g<Boolean> {

        /* renamed from: a */
        public final /* synthetic */ g f35209a;

        @e(c = "com.truecaller.voip.groupcall.action.EndWhenDeletedOnRemoteImpl$end$$inlined$filter$1$2", f = "EndWhenDeletedOnRemote.kt", l = {135}, m = "emit")
        /* renamed from: e.a.d.v.k.w$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/w$a$a.class */
        public static final class C12003a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f35210d;

            /* renamed from: e */
            public int f35211e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12003a(d dVar) {
                super(dVar);
                C12002a.this = r4;
            }

            /* renamed from: s */
            public final Object m23722s(Object obj) {
                this.f35210d = obj;
                this.f35211e |= Integer.MIN_VALUE;
                return C12002a.this.m23723a(null, this);
            }
        }

        public C12002a(g gVar, C12001w c12001w) {
            this.f35209a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23723a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                s1.s r0 = s1.s.a
                r8 = r0
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p658k.C12001w.C12002a.C12003a
                if (r0 == 0) goto L30
                r0 = r7
                e.a.d.v.k.w$a$a r0 = (p193e.p194a.p619d.p657v.p658k.C12001w.C12002a.C12003a) r0
                r9 = r0
                r0 = r9
                int r0 = r0.f35211e
                r10 = r0
                r0 = r10
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L30
                r0 = r9
                r1 = r10
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f35211e = r1
                r0 = r9
                r7 = r0
                goto L3a
            L30:
                e.a.d.v.k.w$a$a r0 = new e.a.d.v.k.w$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L3a:
                r0 = r7
                java.lang.Object r0 = r0.f35210d
                r11 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r9 = r0
                r0 = r7
                int r0 = r0.f35211e
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L68
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L5e
                r0 = r11
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L99
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
                q3.a.x2.g r0 = r0.f35209a
                r11 = r0
                r0 = r6
                java.lang.Boolean r0 = (java.lang.Boolean) r0
                boolean r0 = r0.booleanValue()
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                boolean r0 = r0.booleanValue()
                if (r0 == 0) goto L99
                r0 = r7
                r1 = 1
                r0.f35211e = r1
                r0 = r11
                r1 = r6
                r2 = r7
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r9
                if (r0 != r1) goto L99
                r0 = r9
                return r0
            L99:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C12001w.C12002a.m23723a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C12001w(f fVar) {
        this.f35208a = fVar;
    }

    /* renamed from: c */
    public Object m23724c(g gVar, d dVar) {
        Object c = this.f35208a.c(new C12002a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
