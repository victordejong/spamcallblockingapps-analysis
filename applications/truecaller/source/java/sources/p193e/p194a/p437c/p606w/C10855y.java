package p193e.p194a.p437c.p606w;

import e.m.e.k;
import javax.inject.Inject;
import p193e.p194a.p437c.p523a0.AbstractC9655p;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.w.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/w/y.class */
public final class C10855y implements AbstractC10854x {

    /* renamed from: a */
    public final k f32233a = new k();

    /* renamed from: b */
    public final AbstractC9655p f32234b;

    /* renamed from: c */
    public final AbstractC10009n f32235c;

    /* renamed from: d */
    public final AbstractC9691j f32236d;

    @e(c = "com.truecaller.insights.repository.InsightsReminderRepositoryImpl", f = "InsightsReminderRepository.kt", l = {30, 30}, m = "getAllBillReminders")
    /* renamed from: e.a.c.w.y$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/y$a.class */
    public static final class C10856a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32237d;

        /* renamed from: e */
        public int f32238e;

        /* renamed from: g */
        public Object f32240g;

        /* renamed from: h */
        public Object f32241h;

        /* renamed from: i */
        public long f32242i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10856a(d dVar) {
            super(dVar);
            C10855y.this = r4;
        }

        /* renamed from: s */
        public final Object m25553s(Object obj) {
            this.f32237d = obj;
            this.f32238e |= Integer.MIN_VALUE;
            return C10855y.this.m25556a(0L, this);
        }
    }

    @e(c = "com.truecaller.insights.repository.InsightsReminderRepositoryImpl", f = "InsightsReminderRepository.kt", l = {40}, m = "getSmsReminderSyncTs")
    /* renamed from: e.a.c.w.y$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/y$b.class */
    public static final class C10857b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32243d;

        /* renamed from: e */
        public int f32244e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10857b(d dVar) {
            super(dVar);
            C10855y.this = r4;
        }

        /* renamed from: s */
        public final Object m25552s(Object obj) {
            this.f32243d = obj;
            this.f32244e |= Integer.MIN_VALUE;
            return C10855y.this.m25555b(this);
        }
    }

    @e(c = "com.truecaller.insights.repository.InsightsReminderRepositoryImpl", f = "InsightsReminderRepository.kt", l = {43, 43, 45, 45}, m = "persistUpdatedStates")
    /* renamed from: e.a.c.w.y$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/w/y$c.class */
    public static final class C10858c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f32246d;

        /* renamed from: e */
        public int f32247e;

        /* renamed from: g */
        public Object f32249g;

        /* renamed from: h */
        public Object f32250h;

        /* renamed from: i */
        public Object f32251i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10858c(d dVar) {
            super(dVar);
            C10855y.this = r4;
        }

        /* renamed from: s */
        public final Object m25551s(Object obj) {
            this.f32246d = obj;
            this.f32247e |= Integer.MIN_VALUE;
            return C10855y.this.m25554c(null, this);
        }
    }

    @Inject
    public C10855y(AbstractC9655p abstractC9655p, AbstractC10009n abstractC10009n, AbstractC9691j abstractC9691j) {
        l.e(abstractC9655p, "billDataSource");
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f32234b = abstractC9655p;
        this.f32235c = abstractC10009n;
        this.f32236d = abstractC9691j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:102:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x019f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0124 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0458 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0106  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0109  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x012e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x034c  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x0352  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x035a  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x037f  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0390  */
    /* JADX WARN: Type inference failed for: r0v202, types: [long] */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m25556a(long r17, s1.w.d<? super java.util.List<p193e.p194a.p437c.p580r.C10517a>> r19) {
        /*
            Method dump skipped, instructions count: 1134
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.C10855y.m25556a(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m25555b(s1.w.d<? super java.lang.Long> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p606w.C10855y.C10857b
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.w.y$b r0 = (p193e.p194a.p437c.p606w.C10855y.C10857b) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f32244e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f32244e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.w.y$b r0 = new e.a.c.w.y$b
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f32243d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f32244e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L5a
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L50
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r6 = r0
            goto L7b
        L50:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5a:
            r0 = r7
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.c.f.n r0 = r0.f32235c
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f32244e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo26928d(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L7b
            r0 = r9
            return r0
        L7b:
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = r6
            com.truecaller.insights.models.states.InsightState r2 = (com.truecaller.insights.models.states.InsightState) r2
            java.util.Date r2 = r2.getLastUpdatedAt()
            long r2 = r2.getTime()
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.C10855y.m25555b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0182  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m25554c(java.util.Date r6, s1.w.d<? super s1.s> r7) {
        /*
            Method dump skipped, instructions count: 393
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p606w.C10855y.m25554c(java.util.Date, s1.w.d):java.lang.Object");
    }
}
