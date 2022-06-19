package p193e.p194a.p619d.p656u;

import com.truecaller.voip.manager.VoipMsg;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
/* renamed from: e.a.d.u.e */
/* loaded from: classes15-dex2jar.jar:e/a/d/u/e.class */
public final class C11813e implements f<VoipMsg> {

    /* renamed from: a */
    public final /* synthetic */ f f34725a;

    /* renamed from: e.a.d.u.e$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/u/e$a.class */
    public static final class C11814a implements g<VoipMsg> {

        /* renamed from: a */
        public final /* synthetic */ g f34726a;

        @e(c = "com.truecaller.voip.di.CallModule$Companion$provideRtcMessagesFlow$$inlined$filterNot$1$2", f = "CallComponent.kt", l = {135}, m = "emit")
        /* renamed from: e.a.d.u.e$a$a */
        /* loaded from: classes15-dex2jar.jar:e/a/d/u/e$a$a.class */
        public static final class C11815a extends c {

            /* renamed from: d */
            public /* synthetic */ Object f34727d;

            /* renamed from: e */
            public int f34728e;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C11815a(d dVar) {
                super(dVar);
                C11814a.this = r4;
            }

            /* renamed from: s */
            public final Object m23971s(Object obj) {
                this.f34727d = obj;
                this.f34728e |= Integer.MIN_VALUE;
                return C11814a.this.m23972a(null, this);
            }
        }

        public C11814a(g gVar, C11813e c11813e) {
            this.f34726a = gVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
        /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Object m23972a(java.lang.Object r6, s1.w.d r7) {
            /*
                r5 = this;
                s1.s r0 = s1.s.a
                r8 = r0
                r0 = r7
                boolean r0 = r0 instanceof p193e.p194a.p619d.p656u.C11813e.C11814a.C11815a
                if (r0 == 0) goto L30
                r0 = r7
                e.a.d.u.e$a$a r0 = (p193e.p194a.p619d.p656u.C11813e.C11814a.C11815a) r0
                r9 = r0
                r0 = r9
                int r0 = r0.f34728e
                r10 = r0
                r0 = r10
                r1 = -2147483648(0xffffffff80000000, float:-0.0)
                r0 = r0 & r1
                if (r0 == 0) goto L30
                r0 = r9
                r1 = r10
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                int r1 = r1 + r2
                r0.f34728e = r1
                r0 = r9
                r7 = r0
                goto L3a
            L30:
                e.a.d.u.e$a$a r0 = new e.a.d.u.e$a$a
                r1 = r0
                r2 = r5
                r3 = r7
                r1.<init>(r3)
                r7 = r0
            L3a:
                r0 = r7
                java.lang.Object r0 = r0.f34727d
                r11 = r0
                s1.w.j.a r0 = s1.w.j.a.a
                r9 = r0
                r0 = r7
                int r0 = r0.f34728e
                r10 = r0
                r0 = r10
                if (r0 == 0) goto L68
                r0 = r10
                r1 = 1
                if (r0 != r1) goto L5e
                r0 = r11
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Laa
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
                q3.a.x2.g r0 = r0.f34726a
                r11 = r0
                r0 = r6
                com.truecaller.voip.manager.VoipMsg r0 = (com.truecaller.voip.manager.VoipMsg) r0
                com.truecaller.voip.manager.VoipMsgAction r0 = r0.getAction()
                com.truecaller.voip.manager.VoipMsgAction r1 = com.truecaller.voip.manager.VoipMsgAction.STATS_RECEIVED
                if (r0 != r1) goto L86
                r0 = 1
                r12 = r0
                goto L89
            L86:
                r0 = 0
                r12 = r0
            L89:
                r0 = r12
                java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
                boolean r0 = r0.booleanValue()
                if (r0 != 0) goto Laa
                r0 = r7
                r1 = 1
                r0.f34728e = r1
                r0 = r11
                r1 = r6
                r2 = r7
                java.lang.Object r0 = r0.a(r1, r2)
                r1 = r9
                if (r0 != r1) goto Laa
                r0 = r9
                return r0
            Laa:
                r0 = r8
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p656u.C11813e.C11814a.m23972a(java.lang.Object, s1.w.d):java.lang.Object");
        }
    }

    public C11813e(f fVar) {
        this.f34725a = fVar;
    }

    /* renamed from: c */
    public Object m23973c(g gVar, d dVar) {
        Object c = this.f34725a.c(new C11814a(gVar, this), dVar);
        return c == a.a ? c : s.a;
    }
}
