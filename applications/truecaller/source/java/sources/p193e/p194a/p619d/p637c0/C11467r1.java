package p193e.p194a.p619d.p637c0;

import javax.inject.Inject;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d.c0.r1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/r1.class */
public final class C11467r1 implements AbstractC11463q1 {

    /* renamed from: a */
    public final AbstractC11556y0 f33669a;

    /* renamed from: b */
    public final AbstractC11421j1 f33670b;

    @e(c = "com.truecaller.voip.util.VoipUserResolverImpl", f = "VoipUserResolver.kt", l = {21, 26}, m = "fromId")
    /* renamed from: e.a.d.c0.r1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/r1$a.class */
    public static final class C11468a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33671d;

        /* renamed from: e */
        public int f33672e;

        /* renamed from: g */
        public Object f33674g;

        /* renamed from: h */
        public Object f33675h;

        /* renamed from: i */
        public Object f33676i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11468a(d dVar) {
            super(dVar);
            C11467r1.this = r4;
        }

        /* renamed from: s */
        public final Object m24632s(Object obj) {
            this.f33671d = obj;
            this.f33672e |= Integer.MIN_VALUE;
            return C11467r1.this.m24635a(null, null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUserResolverImpl", f = "VoipUserResolver.kt", l = {31}, m = "fromSearchResult")
    /* renamed from: e.a.d.c0.r1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/r1$b.class */
    public static final class C11469b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33677d;

        /* renamed from: e */
        public int f33678e;

        /* renamed from: g */
        public Object f33680g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11469b(d dVar) {
            super(dVar);
            C11467r1.this = r4;
        }

        /* renamed from: s */
        public final Object m24631s(Object obj) {
            this.f33677d = obj;
            this.f33678e |= Integer.MIN_VALUE;
            return C11467r1.this.m24634b(null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.VoipUserResolverImpl", f = "VoipUserResolver.kt", l = {40}, m = "searchAndCreateVoipUser")
    /* renamed from: e.a.d.c0.r1$c */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/r1$c.class */
    public static final class C11470c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33681d;

        /* renamed from: e */
        public int f33682e;

        /* renamed from: g */
        public Object f33684g;

        /* renamed from: h */
        public Object f33685h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11470c(d dVar) {
            super(dVar);
            C11467r1.this = r4;
        }

        /* renamed from: s */
        public final Object m24630s(Object obj) {
            this.f33681d = obj;
            this.f33682e |= Integer.MIN_VALUE;
            return C11467r1.this.m24633c(null, null, null, this);
        }
    }

    @Inject
    public C11467r1(AbstractC11556y0 abstractC11556y0, AbstractC11421j1 abstractC11421j1) {
        l.e(abstractC11556y0, "voipIdProvider");
        l.e(abstractC11421j1, "support");
        this.f33669a = abstractC11556y0;
        this.f33670b = abstractC11421j1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00da  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m24635a(java.lang.String r7, com.truecaller.voip.util.VoipSearchDirection r8, s1.w.d<? super com.truecaller.voip.VoipUser> r9) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11467r1.m24635a(java.lang.String, com.truecaller.voip.util.VoipSearchDirection, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00a6  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m24634b(p193e.p194a.p619d.p637c0.C11406f1 r6, s1.w.d<? super com.truecaller.voip.VoipUser> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.C11467r1.C11469b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.d.c0.r1$b r0 = (p193e.p194a.p619d.p637c0.C11467r1.C11469b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f33678e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33678e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.d.c0.r1$b r0 = new e.a.d.c0.r1$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f33677d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f33678e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L68
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L5e
            r0 = r7
            java.lang.Object r0 = r0.f33680g
            e.a.d.c0.f1 r0 = (p193e.p194a.p619d.p637c0.C11406f1) r0
            r6 = r0
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r7 = r0
            goto L96
        L5e:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L68:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r6
            java.lang.String r0 = r0.f33503e
            r11 = r0
            r0 = r5
            e.a.d.c0.y0 r0 = r0.f33669a
            r8 = r0
            r0 = r7
            r1 = r6
            r0.f33680g = r1
            r0 = r7
            r1 = 1
            r0.f33678e = r1
            r0 = r8
            r1 = r11
            r2 = r7
            java.lang.Object r0 = r0.mo24454b(r1, r2)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r10
            if (r0 != r1) goto L96
            r0 = r10
            return r0
        L96:
            r0 = r7
            java.lang.String r0 = (java.lang.String) r0
            r7 = r0
            r0 = r7
            if (r0 != 0) goto La6
            r0 = r6
            java.lang.String r0 = r0.f33503e
            r6 = r0
            r0 = 0
            return r0
        La6:
            r0 = r6
            r1 = r7
            com.truecaller.voip.VoipUser r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13595Q1(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11467r1.m24634b(e.a.d.c0.f1, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00bf  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m24633c(java.lang.String r6, java.lang.String r7, com.truecaller.voip.util.VoipSearchDirection r8, s1.w.d<? super com.truecaller.voip.VoipUser> r9) {
        /*
            r5 = this;
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.C11467r1.C11470c
            if (r0 == 0) goto L2f
            r0 = r9
            e.a.d.c0.r1$c r0 = (p193e.p194a.p619d.p637c0.C11467r1.C11470c) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f33682e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33682e = r1
            r0 = r10
            r9 = r0
            goto L3b
        L2f:
            e.a.d.c0.r1$c r0 = new e.a.d.c0.r1$c
            r1 = r0
            r2 = r5
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L3b:
            r0 = r9
            java.lang.Object r0 = r0.f33681d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f33682e
            r11 = r0
            r0 = r11
            if (r0 == 0) goto L80
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L76
            r0 = r9
            java.lang.Object r0 = r0.f33685h
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r9
            java.lang.Object r0 = r0.f33684g
            java.lang.String r0 = (java.lang.String) r0
            r6 = r0
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r10
            r7 = r0
            goto Lb4
        L76:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L80:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.d.c0.j1 r0 = r0.f33670b
            r10 = r0
            r0 = r9
            r1 = r6
            r0.f33684g = r1
            r0 = r9
            r1 = r7
            r0.f33685h = r1
            r0 = r9
            r1 = 1
            r0.f33682e = r1
            r0 = r10
            r1 = r7
            r2 = r8
            r3 = r9
            java.lang.Object r0 = r0.mo24124E(r1, r2, r3)
            r8 = r0
            r0 = r8
            r7 = r0
            r0 = r8
            r1 = r12
            if (r0 != r1) goto Lb4
            r0 = r12
            return r0
        Lb4:
            r0 = r7
            e.a.d.c0.f1 r0 = (p193e.p194a.p619d.p637c0.C11406f1) r0
            r7 = r0
            r0 = r7
            if (r0 != 0) goto Lbf
            r0 = 0
            return r0
        Lbf:
            r0 = r7
            r1 = r6
            com.truecaller.voip.VoipUser r0 = p193e.p194a.p1129p5.p1132s0.C19291g.m13595Q1(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11467r1.m24633c(java.lang.String, java.lang.String, com.truecaller.voip.util.VoipSearchDirection, s1.w.d):java.lang.Object");
    }
}
