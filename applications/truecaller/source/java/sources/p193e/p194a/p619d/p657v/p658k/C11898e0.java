package p193e.p194a.p619d.p657v.p658k;

import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.d.v.k.e0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/e0.class */
public final class C11898e0 implements f<Object> {

    /* renamed from: a */
    public final /* synthetic */ f f34958a;

    /* renamed from: e.a.d.v.k.e0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/e0$a.class */
    public static final class C11899a implements g<Object> {

        /* renamed from: a */
        public final /* synthetic */ g f34959a;

        @e(c = "com.truecaller.voip.groupcall.action.LogCallFinishedEventImpl$collectMaxPeerSizeInRtc$$inlined$filterIsInstance$1$2", f = "LogCallFinishedEvent.kt", l = {135}, m = "emit")
        /* renamed from: e.a.d.v.k.e0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/e0$a$a.class */
        public static final class C11900a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f34960d;

            /* renamed from: e */
            public int f34961e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11900a(d dVar) {
                super(dVar);
                C11899a.this = r4;
            }

            /* renamed from: s */
            public final Object m23859s(Object obj) {
                this.f34960d = obj;
                this.f34961e |= Integer.MIN_VALUE;
                return C11899a.this.m23860a(null, this);
            }
        }

        public C11899a(g gVar, C11898e0 c11898e0) {
            this.f34959a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23860a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                s1.s r0 = s1.s.a
                r8 = r0
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p658k.C11898e0.C11899a.C11900a
                if (r0 == 0) goto L30
                r0 = r7
                e.a.d.v.k.e0$a$a r0 = (p193e.p194a.p619d.p657v.p658k.C11898e0.C11899a.C11900a) r0
                r9 = r0
                r0 = r9
                int r0 = r0.f34961e
                r10 = r0
                r0 = r10
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L30
                r0 = r9
                r1 = r10
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f34961e = r1
                r0 = r9
                r7 = r0
                goto L3a
            L30:
                e.a.d.v.k.e0$a$a r0 = new e.a.d.v.k.e0$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L3a:
                r0 = r7
                java.lang.Object r0 = r0.f34960d
                r11 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r9 = r0
                r0 = r7
                int r0 = r0.f34961e
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
                q3.a.x2.g r0 = r0.f34959a
                r11 = r0
                r0 = r6
                boolean r0 = r0 instanceof p193e.p194a.p619d.p663x.p664q.AbstractC12237i.C12239b
                if (r0 == 0) goto L90
                r0 = r7
                r1 = 1
                r0.f34961e = r1
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
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11898e0.C11899a.m23860a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C11898e0(f fVar) {
        this.f34958a = fVar;
    }

    /* renamed from: c */
    public Object m23861c(g gVar, d dVar) {
        Object c = this.f34958a.c(new C11899a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
