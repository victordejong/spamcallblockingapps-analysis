package p193e.p194a.p437c.p523a0;

import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import com.truecaller.insights.models.smartcards.ActionStateEntity;
import com.truecaller.insights.utils.DateFormat;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9846g;
import p193e.p194a.p437c.p526c.p528d.AbstractC9894k;
import p193e.p194a.p437c.p579q.C10509f;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
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
/* renamed from: e.a.c.a0.q */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/q.class */
public final class C9656q implements AbstractC9655p {

    /* renamed from: a */
    public final AbstractC9894k f29170a;

    /* renamed from: b */
    public final AbstractC9846g f29171b;

    /* renamed from: c */
    public final AbstractC10821g f29172c;

    @e(c = "com.truecaller.insights.source.BillDataSourceImpl$getBillsFlow$1", f = "BillDataSource.kt", l = {53}, m = "invokeSuspend")
    /* renamed from: e.a.c.a0.q$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/q$a.class */
    public static final class C9657a extends i implements p<List<? extends ExtendedPdo>, d<? super f<? extends List<? extends InsightsDomain.Bill>>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f29173e;

        /* renamed from: f */
        public Object f29174f;

        /* renamed from: g */
        public Object f29175g;

        /* renamed from: h */
        public int f29176h;

        /* renamed from: e.a.c.a0.q$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a0/q$a$a.class */
        public static final class C9658a implements f<List<? extends InsightsDomain.Bill>> {

            /* renamed from: a */
            public final /* synthetic */ f f29178a;

            /* renamed from: b */
            public final /* synthetic */ List f29179b;

            /* renamed from: e.a.c.a0.q$a$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a0/q$a$a$a.class */
            public static final class C9659a implements g<List<? extends ActionStateEntity>> {

                /* renamed from: a */
                public final /* synthetic */ g f29180a;

                /* renamed from: b */
                public final /* synthetic */ List f29181b;

                @e(c = "com.truecaller.insights.source.BillDataSourceImpl$getBillsFlow$1$invokeSuspend$$inlined$map$1$2", f = "BillDataSource.kt", l = {145}, m = "emit")
                /* renamed from: e.a.c.a0.q$a$a$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a0/q$a$a$a$a.class */
                public static final class C9660a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f29182d;

                    /* renamed from: e */
                    public int f29183e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C9660a(d dVar) {
                        super(dVar);
                        C9659a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27335s(Object obj) {
                        this.f29182d = obj;
                        this.f29183e |= Integer.MIN_VALUE;
                        return C9659a.this.m27336a(null, this);
                    }
                }

                public C9659a(g gVar, List list) {
                    this.f29180a = gVar;
                    this.f29181b = list;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27336a(java.lang.Object r7, s1.w.d r8) {
                    /*
                        Method dump skipped, instructions count: 297
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9656q.C9657a.C9658a.C9659a.m27336a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C9658a(f fVar, List list) {
                this.f29178a = fVar;
                this.f29179b = list;
            }

            /* renamed from: c */
            public Object m27337c(g gVar, d dVar) {
                Object c = this.f29178a.c(new C9659a(gVar, this.f29179b), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9657a(d dVar) {
            super(2, dVar);
            C9656q.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27340i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9657a c9657a = new C9657a(dVar);
            c9657a.f29173e = obj;
            return c9657a;
        }

        /* renamed from: k */
        public final Object m27339k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9657a c9657a = new C9657a(dVar);
            c9657a.f29173e = obj;
            return c9657a.m27338s(s.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x011c  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0141  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00e5 -> B:17:0x010c). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m27338s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 464
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9656q.C9657a.m27338s(java.lang.Object):java.lang.Object");
        }
    }

    @e(c = "com.truecaller.insights.source.BillDataSourceImpl", f = "BillDataSource.kt", l = {44}, m = "getDataBetween")
    /* renamed from: e.a.c.a0.q$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/q$b.class */
    public static final class C9661b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29185d;

        /* renamed from: e */
        public int f29186e;

        /* renamed from: g */
        public Object f29188g;

        /* renamed from: h */
        public Object f29189h;

        /* renamed from: i */
        public Object f29190i;

        /* renamed from: j */
        public Object f29191j;

        /* renamed from: k */
        public Object f29192k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9661b(d dVar) {
            super(dVar);
            C9656q.this = r4;
        }

        /* renamed from: s */
        public final Object m27334s(Object obj) {
            this.f29185d = obj;
            this.f29186e |= Integer.MIN_VALUE;
            return C9656q.this.mo27341b(0L, 0L, this);
        }
    }

    @Inject
    public C9656q(AbstractC9894k abstractC9894k, AbstractC9846g abstractC9846g, AbstractC10821g abstractC10821g) {
        l.e(abstractC9894k, "billDao");
        l.e(abstractC9846g, "actionStateDao");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        this.f29170a = abstractC9894k;
        this.f29171b = abstractC9846g;
        this.f29172c = abstractC10821g;
    }

    @Override // p193e.p194a.p437c.p523a0.AbstractC9655p
    /* renamed from: a */
    public f<List<InsightsDomain.Bill>> mo27342a(C10509f c10509f) {
        f<List<ExtendedPdo>> fVar;
        l.e(c10509f, "input");
        DateFormat dateFormat = DateFormat.yyyy_MM_dd;
        String e = dateFormat.formatter().e(c10509f.f31242b);
        String e2 = dateFormat.formatter().e(c10509f.f31243c);
        if (c10509f.f31241a) {
            AbstractC9894k abstractC9894k = this.f29170a;
            l.d(e, "startDateString");
            l.d(e2, "endDateString");
            fVar = abstractC9894k.mo27029c(e, e2, c10509f.f31242b, c10509f.f31243c, "Bill");
        } else {
            int ordinal = c10509f.f31244d.ordinal();
            if (ordinal == 0) {
                AbstractC9894k abstractC9894k2 = this.f29170a;
                l.d(e, "startDateString");
                l.d(e2, "endDateString");
                fVar = abstractC9894k2.mo27030b(e, e2, c10509f.f31242b, c10509f.f31243c, "Bill");
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                AbstractC9894k abstractC9894k3 = this.f29170a;
                l.d(e, "startDateString");
                l.d(e2, "endDateString");
                fVar = abstractC9894k3.mo27031a(e, e2, c10509f.f31242b, c10509f.f31243c, "Bill");
            }
        }
        return s1.a.a.a.v0.f.d.S0(fVar, 0, new C9657a(null), 1, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x01f4  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x01a8 -> B:26:0x01ae). Please submit an issue!!! */
    @Override // p193e.p194a.p437c.p523a0.AbstractC9655p
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo27341b(long r9, long r11, s1.w.d<? super java.util.List<com.truecaller.insights.models.InsightsDomain.Bill>> r13) {
        /*
            Method dump skipped, instructions count: 669
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9656q.mo27341b(long, long, s1.w.d):java.lang.Object");
    }
}
