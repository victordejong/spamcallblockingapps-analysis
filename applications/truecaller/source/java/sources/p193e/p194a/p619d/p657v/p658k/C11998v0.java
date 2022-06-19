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
/* renamed from: e.a.d.v.k.v0 */
/* loaded from: classes15-dex2jar.jar:e/a/d/v/k/v0.class */
public final class C11998v0 implements f<VoipTone> {

    /* renamed from: a */
    public final /* synthetic */ f f35203a;

    /* renamed from: e.a.d.v.k.v0$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/v0$a.class */
    public static final class C11999a implements g<AbstractC12022c> {

        /* renamed from: a */
        public final /* synthetic */ g f35204a;

        @e(c = "com.truecaller.voip.groupcall.action.PlayTonesOnGroupCallImpl$toSingleCallTones$$inlined$mapNotNull$1$2", f = "PlayTonesOnGroupCall.kt", l = {140}, m = "emit")
        /* renamed from: e.a.d.v.k.v0$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/v/k/v0$a$a.class */
        public static final class C12000a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f35205d;

            /* renamed from: e */
            public int f35206e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C12000a(d dVar) {
                super(dVar);
                C11999a.this = r4;
            }

            /* renamed from: s */
            public final Object m23725s(Object obj) {
                this.f35205d = obj;
                this.f35206e |= Integer.MIN_VALUE;
                return C11999a.this.m23726a(null, this);
            }
        }

        public C11999a(g gVar, C11998v0 c11998v0) {
            this.f35204a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23726a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                s1.s r0 = s1.s.a
                r8 = r0
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p658k.C11998v0.C11999a.C12000a
                if (r0 == 0) goto L30
                r0 = r7
                e.a.d.v.k.v0$a$a r0 = (p193e.p194a.p619d.p657v.p658k.C11998v0.C11999a.C12000a) r0
                r9 = r0
                r0 = r9
                int r0 = r0.f35206e
                r10 = r0
                r0 = r10
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L30
                r0 = r9
                r1 = r10
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f35206e = r1
                r0 = r9
                r7 = r0
                goto L3a
            L30:
                e.a.d.v.k.v0$a$a r0 = new e.a.d.v.k.v0$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L3a:
                r0 = r7
                java.lang.Object r0 = r0.f35205d
                r11 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r9 = r0
                r0 = r7
                int r0 = r0.f35206e
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L68
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L5e
                r0 = r11
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lbe
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
                q3.a.x2.g r0 = r0.f35204a
                r11 = r0
                r0 = r6
                e.a.d.v.l.c r0 = (p193e.p194a.p619d.p657v.p659l.AbstractC12022c) r0
                r6 = r0
                r0 = r6
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.AbstractC12022c.C12023a
                if (r0 == 0) goto L86
                com.truecaller.voip.util.VoipTone r0 = com.truecaller.voip.util.VoipTone.WAITING
                r6 = r0
                goto La4
            L86:
                r0 = r6
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.AbstractC12022c.C12033c
                if (r0 == 0) goto L94
                com.truecaller.voip.util.VoipTone r0 = com.truecaller.voip.util.VoipTone.ACK
                r6 = r0
                goto La4
            L94:
                r0 = r6
                boolean r0 = r0 instanceof p193e.p194a.p619d.p657v.p659l.AbstractC12022c.C12034d
                if (r0 == 0) goto La2
                com.truecaller.voip.util.VoipTone r0 = com.truecaller.voip.util.VoipTone.RINGING
                r6 = r0
                goto La4
            La2:
                r0 = 0
                r6 = r0
            La4:
                r0 = r6
                if (r0 == 0) goto Lbe
                r0 = r7
                r1 = 1
                r0.f35206e = r1
                r0 = r11
                r1 = r6
                r2 = r7
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r9
                if (r0 != r1) goto Lbe
                r0 = r9
                return r0
            Lbe:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p657v.p658k.C11998v0.C11999a.m23726a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C11998v0(f fVar) {
        this.f35203a = fVar;
    }

    /* renamed from: c */
    public Object m23727c(g gVar, d dVar) {
        Object c = this.f35203a.c(new C11999a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
