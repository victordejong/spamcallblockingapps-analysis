package p193e.p194a.p619d.p637c0;

import java.util.Set;
import p193e.p194a.p619d.p637c0.p642z1.C11593e;
import q3.a.x2.f;
import q3.a.x2.g;
import q3.a.x2.i1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.d.c0.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/a.class */
public final class C11362a implements f<Set<? extends i1<? extends AbstractC11416j>>> {

    /* renamed from: a */
    public final /* synthetic */ f f33402a;

    /* renamed from: e.a.d.c0.a$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/a$a.class */
    public static final class C11363a implements g<Set<? extends C11593e>> {

        /* renamed from: a */
        public final /* synthetic */ g f33403a;

        @e(c = "com.truecaller.voip.util.CallInfosKt$notificationUserInfo$$inlined$map$1$2", f = "CallInfos.kt", l = {135}, m = "emit")
        /* renamed from: e.a.d.c0.a$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/c0/a$a$a.class */
        public static final class C11364a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f33404d;

            /* renamed from: e */
            public int f33405e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11364a(d dVar) {
                super(dVar);
                C11363a.this = r4;
            }

            /* renamed from: s */
            public final Object m24779s(Object obj) {
                this.f33404d = obj;
                this.f33405e |= Integer.MIN_VALUE;
                return C11363a.this.m24780a(null, this);
            }
        }

        public C11363a(g gVar, C11362a c11362a) {
            this.f33403a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m24780a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.C11362a.C11363a.C11364a
                if (r0 == 0) goto L28
                r0 = r7
                e.a.d.c0.a$a$a r0 = (p193e.p194a.p619d.p637c0.C11362a.C11363a.C11364a) r0
                r8 = r0
                r0 = r8
                int r0 = r0.f33405e
                r9 = r0
                r0 = r9
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L28
                r0 = r8
                r1 = r9
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f33405e = r1
                r0 = r8
                r7 = r0
                goto L32
            L28:
                e.a.d.c0.a$a$a r0 = new e.a.d.c0.a$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L32:
                r0 = r7
                java.lang.Object r0 = r0.f33404d
                r10 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r8 = r0
                r0 = r7
                int r0 = r0.f33405e
                r9 = r0
                r0 = r9
                if (r0 == 0) goto L5f
                r0 = r9
                r1 = 1
                if (r0 != r1) goto L55
                r0 = r10
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lc2
            L55:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L5f:
                r0 = r10
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                q3.a.x2.g r0 = r0.f33403a
                r10 = r0
                r0 = r6
                java.util.Set r0 = (java.util.Set) r0
                r11 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r11
                r3 = 10
                int r2 = p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m4004J(r2, r3)
                r1.<init>(r2)
                r6 = r0
                r0 = r11
                java.util.Iterator r0 = r0.iterator()
                r11 = r0
            L88:
                r0 = r11
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto La9
                r0 = r6
                r1 = r11
                java.lang.Object r1 = r1.next()
                e.a.d.c0.z1.e r1 = (p193e.p194a.p619d.p637c0.p642z1.C11593e) r1
                q3.a.x2.i1<e.a.d.c0.j> r1 = r1.f33991b
                boolean r0 = r0.add(r1)
                goto L88
            La9:
                r0 = r6
                java.util.Set r0 = s1.u.i.d1(r0)
                r6 = r0
                r0 = r7
                r1 = 1
                r0.f33405e = r1
                r0 = r10
                r1 = r6
                r2 = r7
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r8
                if (r0 != r1) goto Lc2
                r0 = r8
                return r0
            Lc2:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11362a.C11363a.m24780a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C11362a(f fVar) {
        this.f33402a = fVar;
    }

    /* renamed from: c */
    public Object m24781c(g gVar, d dVar) {
        Object c = this.f33402a.c(new C11363a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
