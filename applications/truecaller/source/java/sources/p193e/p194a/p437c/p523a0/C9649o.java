package p193e.p194a.p437c.p523a0;

import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.a0.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/o.class */
public final class C9649o implements AbstractC9630h {

    /* renamed from: a */
    public final AbstractC9800d0 f29143a;

    /* renamed from: b */
    public final AbstractC10821g f29144b;

    @e(c = "com.truecaller.insights.source.BankDataSourceImpl", f = "BankDataSource.kt", l = {106}, m = "filterAndMapBankDomainSchema")
    /* renamed from: e.a.c.a0.o$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/o$a.class */
    public static final class C9650a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29145d;

        /* renamed from: e */
        public int f29146e;

        /* renamed from: g */
        public Object f29148g;

        /* renamed from: h */
        public Object f29149h;

        /* renamed from: i */
        public Object f29150i;

        /* renamed from: j */
        public Object f29151j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9650a(d dVar) {
            super(dVar);
            C9649o.this = r4;
        }

        /* renamed from: s */
        public final Object m27347s(Object obj) {
            this.f29145d = obj;
            this.f29146e |= Integer.MIN_VALUE;
            return C9649o.this.m27349e(null, this);
        }
    }

    @e(c = "com.truecaller.insights.source.BankDataSourceImpl", f = "BankDataSource.kt", l = {101, 102}, m = "filterAndMapBankDomainSchemaExtended")
    /* renamed from: e.a.c.a0.o$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/o$b.class */
    public static final class C9651b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29152d;

        /* renamed from: e */
        public int f29153e;

        /* renamed from: g */
        public Object f29155g;

        /* renamed from: h */
        public Object f29156h;

        /* renamed from: i */
        public Object f29157i;

        /* renamed from: j */
        public Object f29158j;

        /* renamed from: k */
        public Object f29159k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9651b(d dVar) {
            super(dVar);
            C9649o.this = r4;
        }

        /* renamed from: s */
        public final Object m27346s(Object obj) {
            this.f29152d = obj;
            this.f29153e |= Integer.MIN_VALUE;
            return C9649o.this.m27348f(null, this);
        }
    }

    @e(c = "com.truecaller.insights.source.BankDataSourceImpl", f = "BankDataSource.kt", l = {131, 131}, m = "getAllTransactionAfter")
    /* renamed from: e.a.c.a0.o$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/o$c.class */
    public static final class C9652c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29160d;

        /* renamed from: e */
        public int f29161e;

        /* renamed from: g */
        public Object f29163g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9652c(d dVar) {
            super(dVar);
            C9649o.this = r4;
        }

        /* renamed from: s */
        public final Object m27345s(Object obj) {
            this.f29160d = obj;
            this.f29161e |= Integer.MIN_VALUE;
            return C9649o.this.mo27350d(0L, this);
        }
    }

    @e(c = "com.truecaller.insights.source.BankDataSourceImpl", f = "BankDataSource.kt", l = {125}, m = "getLatestBankTs")
    /* renamed from: e.a.c.a0.o$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/o$d.class */
    public static final class C9653d extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29164d;

        /* renamed from: e */
        public int f29165e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9653d(d dVar) {
            super(dVar);
            C9649o.this = r4;
        }

        /* renamed from: s */
        public final Object m27344s(Object obj) {
            this.f29164d = obj;
            this.f29165e |= Integer.MIN_VALUE;
            return C9649o.this.mo27352b(this);
        }
    }

    @e(c = "com.truecaller.insights.source.BankDataSourceImpl", f = "BankDataSource.kt", l = {120}, m = "getOldestBankTs")
    /* renamed from: e.a.c.a0.o$e */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/o$e.class */
    public static final class C9654e extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29167d;

        /* renamed from: e */
        public int f29168e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9654e(d dVar) {
            super(dVar);
            C9649o.this = r4;
        }

        /* renamed from: s */
        public final Object m27343s(Object obj) {
            this.f29167d = obj;
            this.f29168e |= Integer.MIN_VALUE;
            return C9649o.this.mo27353a(this);
        }
    }

    @Inject
    public C9649o(AbstractC9800d0 abstractC9800d0, AbstractC10821g abstractC10821g) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        this.f29143a = abstractC9800d0;
        this.f29144b = abstractC10821g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
    @Override // p193e.p194a.p437c.p523a0.AbstractC9630h
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27353a(s1.w.d<? super java.lang.Long> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p523a0.C9649o.C9654e
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.a0.o$e r0 = (p193e.p194a.p437c.p523a0.C9649o.C9654e) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29168e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29168e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.a0.o$e r0 = new e.a.c.a0.o$e
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29167d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29168e
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
            goto L79
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
            e.a.c.c.d.d0 r0 = r0.f29143a
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f29168e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo27086y(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L79
            r0 = r9
            return r0
        L79:
            r0 = r6
            java.util.Date r0 = (java.util.Date) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L8e
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = r6
            long r2 = r2.getTime()
            r1.<init>(r2)
            return r0
        L8e:
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9649o.mo27353a(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
    @Override // p193e.p194a.p437c.p523a0.AbstractC9630h
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27352b(s1.w.d<? super java.lang.Long> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p523a0.C9649o.C9653d
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.a0.o$d r0 = (p193e.p194a.p437c.p523a0.C9649o.C9653d) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f29165e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29165e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.a0.o$d r0 = new e.a.c.a0.o$d
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f29164d
            r7 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r9 = r0
            r0 = r6
            int r0 = r0.f29165e
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
            goto L79
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
            e.a.c.c.d.d0 r0 = r0.f29143a
            r7 = r0
            r0 = r6
            r1 = 1
            r0.f29165e = r1
            r0 = r7
            r1 = r6
            java.lang.Object r0 = r0.mo27089v(r1)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r9
            if (r0 != r1) goto L79
            r0 = r9
            return r0
        L79:
            r0 = r6
            java.util.Date r0 = (java.util.Date) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L8e
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = r6
            long r2 = r2.getTime()
            r1.<init>(r2)
            return r0
        L8e:
            java.lang.Long r0 = new java.lang.Long
            r1 = r0
            r2 = 0
            r1.<init>(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9649o.mo27352b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x00fe, code lost:
        if (r0.length() == 0) goto L36;
     */
    @Override // p193e.p194a.p437c.p523a0.AbstractC9630h
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public q3.a.x2.f<java.util.List<com.truecaller.insights.models.InsightsDomain.C4057a>> mo27351c(p193e.p194a.p437c.p579q.C10509f r10) {
        /*
            Method dump skipped, instructions count: 402
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9649o.mo27351c(e.a.c.q.f):q3.a.x2.f");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e4  */
    @Override // p193e.p194a.p437c.p523a0.AbstractC9630h
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27350d(long r7, s1.w.d<? super java.util.List<com.truecaller.insights.models.InsightsDomain.C4057a>> r9) {
        /*
            Method dump skipped, instructions count: 234
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9649o.mo27350d(long, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0137  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00f9 -> B:22:0x00ff). Please submit an issue!!! */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27349e(java.util.List<? extends com.truecaller.insights.models.pdo.ParsedDataObject> r6, s1.w.d<? super java.util.List<com.truecaller.insights.models.InsightsDomain.C4057a>> r7) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9649o.m27349e(java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0226  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x012f -> B:25:0x0135). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x01f3 -> B:36:0x0207). Please submit an issue!!! */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27348f(java.util.List<com.truecaller.insights.models.pdo.ExtendedPdo> r6, s1.w.d<? super java.util.List<com.truecaller.insights.models.InsightsDomain.C4057a>> r7) {
        /*
            Method dump skipped, instructions count: 555
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9649o.m27348f(java.util.List, s1.w.d):java.lang.Object");
    }
}
