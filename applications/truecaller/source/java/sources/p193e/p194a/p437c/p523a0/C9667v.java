package p193e.p194a.p437c.p523a0;

import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9846g;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.a0.v */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/v.class */
public final class C9667v implements AbstractC9666u {

    /* renamed from: a */
    public final AbstractC9800d0 f29207a;

    /* renamed from: b */
    public final AbstractC9846g f29208b;

    /* renamed from: c */
    public final AbstractC10821g f29209c;

    @e(c = "com.truecaller.insights.source.OtpDataSourceImpl", f = "OtpDataSource.kt", l = {45, 46}, m = "applyFiltersOnOTPPdo")
    /* renamed from: e.a.c.a0.v$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/v$a.class */
    public static final class C9668a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29210d;

        /* renamed from: e */
        public int f29211e;

        /* renamed from: g */
        public Object f29213g;

        /* renamed from: h */
        public Object f29214h;

        /* renamed from: i */
        public boolean f29215i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9668a(d dVar) {
            super(dVar);
            C9667v.this = r4;
        }

        /* renamed from: s */
        public final Object m27329s(Object obj) {
            this.f29210d = obj;
            this.f29211e |= Integer.MIN_VALUE;
            return C9667v.this.m27331a(null, this);
        }
    }

    @e(c = "com.truecaller.insights.source.OtpDataSourceImpl", f = "OtpDataSource.kt", l = {31}, m = "getOtpNumbersSince")
    /* renamed from: e.a.c.a0.v$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/v$b.class */
    public static final class C9669b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29216d;

        /* renamed from: e */
        public int f29217e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9669b(d dVar) {
            super(dVar);
            C9667v.this = r4;
        }

        /* renamed from: s */
        public final Object m27328s(Object obj) {
            this.f29216d = obj;
            this.f29217e |= Integer.MIN_VALUE;
            return C9667v.this.m27330b(null, this);
        }
    }

    @Inject
    public C9667v(AbstractC9800d0 abstractC9800d0, AbstractC9846g abstractC9846g, AbstractC10821g abstractC10821g) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC9846g, "actionStateDao");
        l.e(abstractC10821g, "smartSmsFilter");
        this.f29207a = abstractC9800d0;
        this.f29208b = abstractC9846g;
        this.f29209c = abstractC10821g;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0100  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27331a(com.truecaller.insights.models.pdo.ExtendedPdo r6, s1.w.d<? super java.lang.Boolean> r7) {
        /*
            Method dump skipped, instructions count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9667v.m27331a(com.truecaller.insights.models.pdo.ExtendedPdo, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m27330b(java.util.Date r6, s1.w.d<? super java.util.Set<java.lang.String>> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p523a0.C9667v.C9669b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.a0.v$b r0 = (p193e.p194a.p437c.p523a0.C9667v.C9669b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f29217e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f29217e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.a0.v$b r0 = new e.a.c.a0.v$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f29216d
            r8 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r10 = r0
            r0 = r7
            int r0 = r0.f29217e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            r6 = r0
            goto L80
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r8
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            e.a.c.c.d.d0 r0 = r0.f29207a
            r8 = r0
            r0 = r7
            r1 = 1
            r0.f29217e = r1
            r0 = r8
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo27085z(r1, r2)
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            r1 = r10
            if (r0 != r1) goto L80
            r0 = r10
            return r0
        L80:
            r0 = r6
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            java.util.Set r0 = s1.u.i.d1(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9667v.m27330b(java.util.Date, s1.w.d):java.lang.Object");
    }
}
