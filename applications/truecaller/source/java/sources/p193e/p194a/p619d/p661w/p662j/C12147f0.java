package p193e.p194a.p619d.p661w.p662j;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
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
/* renamed from: e.a.d.w.j.f0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/w/j/f0.class */
public final class C12147f0 implements f<f<? extends s>> {

    /* renamed from: a */
    public final /* synthetic */ f f35497a;

    /* renamed from: e.a.d.w.j.f0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/f0$a.class */
    public static final class C12148a implements g<Long> {

        /* renamed from: a */
        public final /* synthetic */ g f35498a;

        @e(c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$triggerUpdateOnTimeouts$$inlined$map$1$2", f = "UpdatePeers.kt", l = {135}, m = "emit")
        /* renamed from: e.a.d.w.j.f0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/f0$a$a.class */
        public static final class C12149a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f35499d;

            /* renamed from: e */
            public int f35500e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12149a(d dVar) {
                super(dVar);
                C12148a.this = r4;
            }

            /* renamed from: s */
            public final Object m23557s(Object obj) {
                this.f35499d = obj;
                this.f35500e |= Integer.MIN_VALUE;
                return C12148a.this.m23558a(null, this);
            }
        }

        @e(c = "com.truecaller.voip.invitation.action.UpdatePeersImpl$triggerUpdateOnTimeouts$1$1", f = "UpdatePeers.kt", l = {82, 83}, m = "invokeSuspend")
        /* renamed from: e.a.d.w.j.f0$a$b */
        /* loaded from: classes15-dex2jar.jar:e/a/d/w/j/f0$a$b.class */
        public static final class C12150b extends i implements p<g<? super s>, d<? super s>, Object> {

            /* renamed from: e */
            public /* synthetic */ Object f35502e;

            /* renamed from: f */
            public int f35503f;

            /* renamed from: g */
            public final /* synthetic */ long f35504g;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12150b(long j, d dVar) {
                super(2, dVar);
                this.f35504g = j;
            }

            /* renamed from: i */
            public final d<s> m23556i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                C12150b c12150b = new C12150b(this.f35504g, dVar);
                c12150b.f35502e = obj;
                return c12150b;
            }

            /* renamed from: k */
            public final Object m23555k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C12150b c12150b = new C12150b(this.f35504g, dVar);
                c12150b.f35502e = obj;
                return c12150b.m23554s(s.a);
            }

            /* renamed from: s */
            public final Object m23554s(Object obj) {
                g gVar;
                s sVar = s.a;
                a aVar = a.a;
                int i = this.f35503f;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    gVar = (g) this.f35502e;
                    long j = this.f35504g;
                    this.f35502e = gVar;
                    this.f35503f = 1;
                    if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
                        return aVar;
                    }
                } else if (i != 1) {
                    if (i != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    C25225a.m3932a3(obj);
                    return sVar;
                } else {
                    C25225a.m3932a3(obj);
                    gVar = (g) this.f35502e;
                }
                this.f35502e = null;
                this.f35503f = 2;
                if (gVar.a(sVar, this) == aVar) {
                    return aVar;
                }
                return sVar;
            }
        }

        public C12148a(g gVar, C12147f0 c12147f0) {
            this.f35498a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23558a(java.lang.Object r9, s1.w.d r10) {
            /*
                r8 = this;
                r0 = r10
                boolean r0 = r0 instanceof p193e.p194a.p619d.p661w.p662j.C12147f0.C12148a.C12149a
                if (r0 == 0) goto L28
                r0 = r10
                e.a.d.w.j.f0$a$a r0 = (p193e.p194a.p619d.p661w.p662j.C12147f0.C12148a.C12149a) r0
                r11 = r0
                r0 = r11
                int r0 = r0.f35500e
                r12 = r0
                r0 = r12
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L28
                r0 = r11
                r1 = r12
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f35500e = r1
                r0 = r11
                r10 = r0
                goto L32
            L28:
                e.a.d.w.j.f0$a$a r0 = new e.a.d.w.j.f0$a$a
                r1 = r0
                r2 = r8
                r3 = r10
                r1.<init>(r3)
                r10 = r0
            L32:
                r0 = r10
                java.lang.Object r0 = r0.f35499d
                r13 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r11 = r0
                r0 = r10
                int r0 = r0.f35500e
                r12 = r0
                r0 = r12
                if (r0 == 0) goto L5f
                r0 = r12
                r1 = 1
                if (r0 != r1) goto L55
                r0 = r13
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L95
            L55:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L5f:
                r0 = r13
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r8
                q3.a.x2.g r0 = r0.f35498a
                r13 = r0
                q3.a.x2.d1 r0 = new q3.a.x2.d1
                r1 = r0
                e.a.d.w.j.f0$a$b r2 = new e.a.d.w.j.f0$a$b
                r3 = r2
                r4 = r9
                java.lang.Number r4 = (java.lang.Number) r4
                long r4 = r4.longValue()
                r5 = 0
                r3.<init>(r4, r5)
                r1.<init>(r2)
                r9 = r0
                r0 = r10
                r1 = 1
                r0.f35500e = r1
                r0 = r13
                r1 = r9
                r2 = r10
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r11
                if (r0 != r1) goto L95
                r0 = r11
                return r0
            L95:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p661w.p662j.C12147f0.C12148a.m23558a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C12147f0(f fVar) {
        this.f35497a = fVar;
    }

    /* renamed from: c */
    public Object m23559c(g gVar, d dVar) {
        Object c = this.f35497a.c(new C12148a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
