package p193e.p194a.p437c.p523a0;

import com.truecaller.insights.models.InsightsDomain;
import com.truecaller.insights.models.pdo.ExtendedPdo;
import com.truecaller.insights.models.smartcards.ActionStateEntity;
import com.truecaller.insights.utils.DateFormat;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9846g;
import p193e.p194a.p437c.p526c.p528d.AbstractC9929o0;
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
/* renamed from: e.a.c.a0.d0 */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/d0.class */
public final class C9620d0 implements AbstractC9617c0 {

    /* renamed from: a */
    public final AbstractC9929o0 f29070a;

    /* renamed from: b */
    public final AbstractC9846g f29071b;

    /* renamed from: c */
    public final AbstractC10821g f29072c;

    @e(c = "com.truecaller.insights.source.TravelDataSourceImpl$getTripsFor$1", f = "TravelDataSourceImpl.kt", l = {35}, m = "invokeSuspend")
    /* renamed from: e.a.c.a0.d0$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/d0$a.class */
    public static final class C9621a extends i implements p<List<? extends ExtendedPdo>, d<? super f<? extends List<? extends InsightsDomain.C4062f>>>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f29073e;

        /* renamed from: f */
        public Object f29074f;

        /* renamed from: g */
        public Object f29075g;

        /* renamed from: h */
        public int f29076h;

        /* renamed from: e.a.c.a0.d0$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/a0/d0$a$a.class */
        public static final class C9622a implements f<List<? extends InsightsDomain.C4062f>> {

            /* renamed from: a */
            public final /* synthetic */ f f29078a;

            /* renamed from: b */
            public final /* synthetic */ List f29079b;

            /* renamed from: e.a.c.a0.d0$a$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/a0/d0$a$a$a.class */
            public static final class C9623a implements g<List<? extends ActionStateEntity>> {

                /* renamed from: a */
                public final /* synthetic */ g f29080a;

                /* renamed from: b */
                public final /* synthetic */ List f29081b;

                @e(c = "com.truecaller.insights.source.TravelDataSourceImpl$getTripsFor$1$invokeSuspend$$inlined$map$1$2", f = "TravelDataSourceImpl.kt", l = {145}, m = "emit")
                /* renamed from: e.a.c.a0.d0$a$a$a$a */
                /* loaded from: classes10-dex2jar.jar:e/a/c/a0/d0$a$a$a$a.class */
                public static final class C9624a extends c {

                    /* renamed from: d */
                    public /* synthetic */ Object f29082d;

                    /* renamed from: e */
                    public int f29083e;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    public C9624a(d dVar) {
                        super(dVar);
                        C9623a.this = r4;
                    }

                    /* renamed from: s */
                    public final Object m27377s(Object obj) {
                        this.f29082d = obj;
                        this.f29083e |= Integer.MIN_VALUE;
                        return C9623a.this.m27378a(null, this);
                    }
                }

                public C9623a(g gVar, List list) {
                    this.f29080a = gVar;
                    this.f29081b = list;
                }

                /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
                /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
                /* renamed from: a */
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public java.lang.Object m27378a(java.lang.Object r7, s1.w.d r8) {
                    /*
                        Method dump skipped, instructions count: 297
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9620d0.C9621a.C9622a.C9623a.m27378a(java.lang.Object, s1.w.d):java.lang.Object");
                }
            }

            public C9622a(f fVar, List list) {
                this.f29078a = fVar;
                this.f29079b = list;
            }

            /* renamed from: c */
            public Object m27379c(g gVar, d dVar) {
                Object c = this.f29078a.c(new C9623a(gVar, this.f29079b), dVar);
                return c == a.a ? c : s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9621a(d dVar) {
            super(2, dVar);
            C9620d0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m27382i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C9621a c9621a = new C9621a(dVar);
            c9621a.f29073e = obj;
            return c9621a;
        }

        /* renamed from: k */
        public final Object m27381k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C9621a c9621a = new C9621a(dVar);
            c9621a.f29073e = obj;
            return c9621a.m27380s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x006c  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:21:0x0105  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x00b5 -> B:17:0x00d6). Please submit an issue!!! */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m27380s(java.lang.Object r7) {
            /*
                Method dump skipped, instructions count: 365
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9620d0.C9621a.m27380s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C9620d0(AbstractC9929o0 abstractC9929o0, AbstractC9846g abstractC9846g, AbstractC10821g abstractC10821g) {
        l.e(abstractC9929o0, "travelDao");
        l.e(abstractC9846g, "actionStateDao");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        this.f29070a = abstractC9929o0;
        this.f29071b = abstractC9846g;
        this.f29072c = abstractC10821g;
    }

    /* renamed from: a */
    public f<List<InsightsDomain.C4062f>> m27383a(C10509f c10509f) {
        f<List<ExtendedPdo>> fVar;
        l.e(c10509f, "loadConfig");
        DateFormat dateFormat = DateFormat.yyyy_MM_dd_HH_mm_ss;
        String e = dateFormat.formatter().e(c10509f.f31242b);
        String e2 = dateFormat.formatter().e(c10509f.f31243c);
        if (c10509f.f31241a) {
            AbstractC9929o0 abstractC9929o0 = this.f29070a;
            l.d(e, "startDateString");
            l.d(e2, "endDateString");
            fVar = abstractC9929o0.mo27019b(e, e2);
        } else {
            int ordinal = c10509f.f31244d.ordinal();
            if (ordinal == 0) {
                AbstractC9929o0 abstractC9929o02 = this.f29070a;
                l.d(e, "startDateString");
                l.d(e2, "endDateString");
                fVar = abstractC9929o02.mo27018c(e, e2);
            } else if (ordinal != 1) {
                throw new s1.i();
            } else {
                AbstractC9929o0 abstractC9929o03 = this.f29070a;
                l.d(e, "startDateString");
                l.d(e2, "endDateString");
                fVar = abstractC9929o03.mo27020a(e, e2);
            }
        }
        return s1.a.a.a.v0.f.d.S0(fVar, 0, new C9621a(null), 1, (Object) null);
    }
}
