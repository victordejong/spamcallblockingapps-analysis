package p193e.p194a.p619d.p657v.p658k;

import com.truecaller.voip.util.VoipTone;
import p193e.p194a.p619d.p657v.p659l.AbstractC12022c;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.d.v.k.t0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/t0.class */
public final class C11992t0 implements f<VoipTone> {

    /* renamed from: a */
    public final /* synthetic */ f f35194a;

    /* renamed from: e.a.d.v.k.t0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/t0$a.class */
    public static final class C11993a implements g<AbstractC12022c> {

        /* renamed from: a */
        public final /* synthetic */ g f35195a;

        @e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$toMultipleCallTones$$inlined$mapNotNull$1$2", f = "PlayTonesOnGroupCall.kt", l = {145}, m = "emit")
        /* renamed from: e.a.d.v.k.t0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/t0$a$a.class */
        public static final class C11994a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f35196d;

            /* renamed from: e */
            public int f35197e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11994a(d dVar) {
                super(dVar);
                C11993a.this = r4;
            }

            /* renamed from: s */
            public final Object m23731s(Object obj) {
                this.f35196d = obj;
                this.f35197e |= Integer.MIN_VALUE;
                return C11993a.this.m23732a(null, this);
            }
        }

        public C11993a(g gVar, C11992t0 c11992t0) {
            this.f35195a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23732a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                s1.s r0 = s1.s.a
                r8 = r0
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p658k.C11992t0.C11993a.C11994a
                if (r0 == 0) goto L30
                r0 = r7
                e.a.d.v.k.t0$a$a r0 = (p193e.p194a.p619d.p657v.p658k.C11992t0.C11993a.C11994a) r0
                r9 = r0
                r0 = r9
                int r0 = r0.f35197e
                r10 = r0
                r0 = r10
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L30
                r0 = r9
                r1 = r10
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f35197e = r1
                r0 = r9
                r7 = r0
                goto L3a
            L30:
                e.a.d.v.k.t0$a$a r0 = new e.a.d.v.k.t0$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L3a:
                r0 = r7
                java.lang.Object r0 = r0.f35196d
                r9 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r11 = r0
                r0 = r7
                int r0 = r0.f35197e
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L68
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L5e
                r0 = r9
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lc3
            L5e:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L68:
                r0 = r9
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                q3.a.x2.g r0 = r0.f35195a
                r12 = r0
                r0 = r6
                e.a.d.v.l.c r0 = (p193e.p194a.p619d.p657v.p659l.AbstractC12022c) r0
                r13 = r0
                r0 = r13
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.AbstractC12022c.C12033c
                r14 = r0
                r0 = 0
                r9 = r0
                r0 = r14
                if (r0 == 0) goto L8f
                com.truecaller.voip.util.VoipTone r0 = com.truecaller.voip.util.VoipTone.ACK
                r6 = r0
                goto La9
            L8f:
                r0 = r9
                r6 = r0
                r0 = r13
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.AbstractC12022c.AbstractC12024b
                if (r0 == 0) goto La9
                r0 = r9
                r6 = r0
                r0 = r13
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.AbstractC12022c.AbstractC12024b.C12027c
                if (r0 != 0) goto La9
                com.truecaller.voip.util.VoipTone r0 = com.truecaller.voip.util.VoipTone.ACK
                r6 = r0
            La9:
                r0 = r6
                if (r0 == 0) goto Lc3
                r0 = r7
                r1 = 1
                r0.f35197e = r1
                r0 = r12
                r1 = r6
                r2 = r7
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r11
                if (r0 != r1) goto Lc3
                r0 = r11
                return r0
            Lc3:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11992t0.C11993a.m23732a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C11992t0(f fVar) {
        this.f35194a = fVar;
    }

    /* renamed from: c */
    public Object m23733c(g gVar, d dVar) {
        Object c = this.f35194a.c(new C11993a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
