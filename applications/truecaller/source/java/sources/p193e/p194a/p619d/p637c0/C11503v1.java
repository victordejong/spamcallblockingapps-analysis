package p193e.p194a.p619d.p637c0;

import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p619d.p637c0.p638a2.AbstractC11369a;
import p193e.p194a.p619d.p651p.AbstractC11744a;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d.c0.v1 */
/* loaded from: classes15-dex2jar.jar:e/a/d/c0/v1.class */
public final class C11503v1 implements AbstractC11500u1 {

    /* renamed from: a */
    public final f f33773a;

    /* renamed from: b */
    public final AbstractC11744a f33774b;

    /* renamed from: c */
    public final AbstractC11556y0 f33775c;

    /* renamed from: d */
    public final AbstractC11369a f33776d;

    /* renamed from: e */
    public final AbstractC11440o1 f33777e;

    @e(c = "com.truecaller.voip.util.VoipWakeUpPushManagerImpl", f = "VoipWakeUpPushManager.kt", l = {72, 79}, m = "sendCrossDcWakeUp")
    /* renamed from: e.a.d.c0.v1$a */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/v1$a.class */
    public static final class C11504a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33778d;

        /* renamed from: e */
        public int f33779e;

        /* renamed from: g */
        public Object f33781g;

        /* renamed from: h */
        public Object f33782h;

        /* renamed from: i */
        public Object f33783i;

        /* renamed from: j */
        public long f33784j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11504a(d dVar) {
            super(dVar);
            C11503v1.this = r4;
        }

        /* renamed from: s */
        public final Object m24568s(Object obj) {
            this.f33778d = obj;
            this.f33779e |= Integer.MIN_VALUE;
            return C11503v1.this.m24570a(null, 0L, null, this);
        }
    }

    @e(c = "com.truecaller.voip.util.VoipWakeUpPushManagerImpl", f = "VoipWakeUpPushManager.kt", l = {58}, m = "sendNativeWakeUp")
    /* renamed from: e.a.d.c0.v1$b */
    /* loaded from: classes15-dex2jar.jar:e/a/d/c0/v1$b.class */
    public static final class C11505b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f33785d;

        /* renamed from: e */
        public int f33786e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11505b(d dVar) {
            super(dVar);
            C11503v1.this = r4;
        }

        /* renamed from: s */
        public final Object m24567s(Object obj) {
            this.f33785d = obj;
            this.f33786e |= Integer.MIN_VALUE;
            return C11503v1.this.m24569b(0L, null, this);
        }
    }

    @Inject
    public C11503v1(@Named("IO") f fVar, AbstractC11744a abstractC11744a, AbstractC11556y0 abstractC11556y0, AbstractC11369a abstractC11369a, AbstractC11440o1 abstractC11440o1) {
        l.e(fVar, "ioContext");
        l.e(abstractC11744a, "restApi");
        l.e(abstractC11556y0, "idProvider");
        l.e(abstractC11369a, "targetDomainResolver");
        l.e(abstractC11440o1, "tokenProvider");
        this.f33773a = fVar;
        this.f33774b = abstractC11744a;
        this.f33775c = abstractC11556y0;
        this.f33776d = abstractC11369a;
        this.f33777e = abstractC11440o1;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(8:2|(2:4|(6:6|8|40|(2:10|(2:12|(5:14|31|(1:33)(2:34|35)|36|37)(2:15|16))(1:17))(2:18|(2:20|21)(1:22))|23|(1:25)(7:26|27|(2:29|30)|31|(0)(0)|36|37)))|7|8|40|(0)(0)|23|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x015d, code lost:
        r7 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ed A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ef A[Catch: IOException -> 0x015c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x015c, blocks: (B:14:0x0062, B:26:0x00ef, B:31:0x0136, B:33:0x0143, B:34:0x014e), top: B:40:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0143 A[Catch: IOException -> 0x015c, TRY_LEAVE, TryCatch #0 {IOException -> 0x015c, blocks: (B:14:0x0062, B:26:0x00ef, B:31:0x0136, B:33:0x0143, B:34:0x014e), top: B:40:0x0053 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x014e A[Catch: IOException -> 0x015c, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x015c, blocks: (B:14:0x0062, B:26:0x00ef, B:31:0x0136, B:33:0x0143, B:34:0x014e), top: B:40:0x0053 }] */
    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24570a(p193e.p194a.p372b0.p394b.AbstractC8371e r7, long r8, java.lang.String r10, s1.w.d<? super com.truecaller.voip.api.CrossDcWakeUpDto> r11) {
        /*
            Method dump skipped, instructions count: 355
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11503v1.m24570a(e.a.b0.b.e, long, java.lang.String, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:2|(2:4|(9:6|8|31|(2:10|(2:12|13)(2:14|15))(4:16|17|18|(2:20|21))|22|(2:24|25)(1:26)|27|28|29))|7|8|31|(0)(0)|22|(0)(0)|27|28|29) */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00ba A[Catch: IOException -> 0x00c9, TRY_ENTER, TryCatch #0 {IOException -> 0x00c9, blocks: (B:12:0x005c, B:17:0x0076, B:22:0x00a8, B:26:0x00ba), top: B:31:0x0053 }] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m24569b(long r6, java.lang.String r8, s1.w.d<? super java.lang.Boolean> r9) {
        /*
            r5 = this;
            r0 = r9
            boolean r0 = r0 instanceof p193e.p194a.p619d.p637c0.C11503v1.C11505b
            if (r0 == 0) goto L2f
            r0 = r9
            e.a.d.c0.v1$b r0 = (p193e.p194a.p619d.p637c0.C11503v1.C11505b) r0
            r10 = r0
            r0 = r10
            int r0 = r0.f33786e
            r11 = r0
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L2f
            r0 = r10
            r1 = r11
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f33786e = r1
            r0 = r10
            r9 = r0
            goto L3b
        L2f:
            e.a.d.c0.v1$b r0 = new e.a.d.c0.v1$b
            r1 = r0
            r2 = r5
            r3 = r9
            r1.<init>(r3)
            r9 = r0
        L3b:
            r0 = r9
            java.lang.Object r0 = r0.f33785d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r12 = r0
            r0 = r9
            int r0 = r0.f33786e
            r11 = r0
            r0 = 0
            r13 = r0
            r0 = r11
            if (r0 == 0) goto L71
            r0 = r11
            r1 = 1
            if (r0 != r1) goto L67
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.io.IOException -> Lc9
            r0 = r10
            r8 = r0
            goto La8
        L67:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L71:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.d.p.a r0 = r0.f33774b     // Catch: java.io.IOException -> Lc9
            r14 = r0
            com.truecaller.voip.api.WakeUpRequestDto r0 = new com.truecaller.voip.api.WakeUpRequestDto     // Catch: java.io.IOException -> Lc9
            r10 = r0
            r0 = r10
            r1 = r6
            r2 = r8
            r0.<init>(r1, r2)     // Catch: java.io.IOException -> Lc9
            r0 = r9
            r1 = 1
            r0.f33786e = r1     // Catch: java.io.IOException -> Lc9
            r0 = r14
            r1 = r10
            r2 = r9
            java.lang.Object r0 = r0.m24061k(r1, r2)     // Catch: java.io.IOException -> Lc9
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            r1 = r12
            if (r0 != r1) goto La8
            r0 = r12
            return r0
        La8:
            r0 = r8
            x3.a0 r0 = (x3.a0) r0     // Catch: java.io.IOException -> Lc9
            r8 = r0
            r0 = r8
            boolean r0 = r0.b()     // Catch: java.io.IOException -> Lc9
            if (r0 == 0) goto Lba
            r0 = 1
            r13 = r0
            goto Lc3
        Lba:
            r0 = r8
            u3.k0 r0 = r0.a     // Catch: java.io.IOException -> Lc9
            int r0 = r0.e     // Catch: java.io.IOException -> Lc9
            r11 = r0
        Lc3:
            r0 = r13
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        Lc9:
            r8 = move-exception
            goto Lc3
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p619d.p637c0.C11503v1.m24569b(long, java.lang.String, s1.w.d):java.lang.Object");
    }
}
