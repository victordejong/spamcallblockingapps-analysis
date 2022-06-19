package p193e.p194a.p437c.p523a0;

import javax.inject.Inject;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p606w.p607o0.AbstractC10821g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.a0.y */
/* loaded from: classes10-dex2jar.jar:e/a/c/a0/y.class */
public final class C9674y implements AbstractC9673x {

    /* renamed from: a */
    public final AbstractC9800d0 f29230a;

    /* renamed from: b */
    public final AbstractC10821g f29231b;

    /* renamed from: c */
    public final AbstractC9686e f29232c;

    @e(c = "com.truecaller.insights.source.PdoDataSourceImpl", f = "PdoDataSource.kt", l = {40, 42, 44, 47}, m = "getDomainsForConversation")
    /* renamed from: e.a.c.a0.y$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/y$a.class */
    public static final class C9675a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29233d;

        /* renamed from: e */
        public int f29234e;

        /* renamed from: g */
        public Object f29236g;

        /* renamed from: h */
        public Object f29237h;

        /* renamed from: i */
        public Object f29238i;

        /* renamed from: j */
        public Object f29239j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9675a(d dVar) {
            super(dVar);
            C9674y.this = r4;
        }

        /* renamed from: s */
        public final Object m27321s(Object obj) {
            this.f29233d = obj;
            this.f29234e |= Integer.MIN_VALUE;
            return C9674y.this.m27324a(null, 0L, 0, null, this);
        }
    }

    @e(c = "com.truecaller.insights.source.PdoDataSourceImpl", f = "PdoDataSource.kt", l = {78, 82}, m = "getParserSmartCardsCount")
    /* renamed from: e.a.c.a0.y$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/y$b.class */
    public static final class C9676b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29240d;

        /* renamed from: e */
        public int f29241e;

        /* renamed from: g */
        public Object f29243g;

        /* renamed from: h */
        public Object f29244h;

        /* renamed from: i */
        public Object f29245i;

        /* renamed from: j */
        public Object f29246j;

        /* renamed from: k */
        public Object f29247k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9676b(d dVar) {
            super(dVar);
            C9674y.this = r4;
        }

        /* renamed from: s */
        public final Object m27320s(Object obj) {
            this.f29240d = obj;
            this.f29241e |= Integer.MIN_VALUE;
            return C9674y.this.m27323b(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.source.PdoDataSourceImpl", f = "PdoDataSource.kt", l = {62, 67}, m = "getTotalParserSmartCardsCount")
    /* renamed from: e.a.c.a0.y$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a0/y$c.class */
    public static final class C9677c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f29248d;

        /* renamed from: e */
        public int f29249e;

        /* renamed from: g */
        public Object f29251g;

        /* renamed from: h */
        public Object f29252h;

        /* renamed from: i */
        public Object f29253i;

        /* renamed from: j */
        public int f29254j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9677c(d dVar) {
            super(dVar);
            C9674y.this = r4;
        }

        /* renamed from: s */
        public final Object m27319s(Object obj) {
            this.f29248d = obj;
            this.f29249e |= Integer.MIN_VALUE;
            return C9674y.this.m27322c(null, this);
        }
    }

    @Inject
    public C9674y(AbstractC9800d0 abstractC9800d0, AbstractC10821g abstractC10821g, AbstractC9686e abstractC9686e) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC10821g, "smartSmsFeatureFilter");
        l.e(abstractC9686e, "environmentHelper");
        this.f29230a = abstractC9800d0;
        this.f29231b = abstractC10821g;
        this.f29232c = abstractC9686e;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01a8  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0252  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0314  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0334  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x0208 -> B:45:0x020e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x02e5 -> B:55:0x02eb). Please submit an issue!!! */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m27324a(java.util.List<java.lang.String> r11, long r12, int r14, p193e.p194a.p437c.p523a0.C9662r r15, s1.w.d<? super java.util.List<? extends com.truecaller.insights.models.InsightsDomain>> r16) {
        /*
            Method dump skipped, instructions count: 826
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9674y.m27324a(java.util.List, long, int, e.a.c.a0.r, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0199  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0174 -> B:35:0x0178). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m27323b(java.util.List<java.lang.String> r8, w3.b.a.b r9, s1.w.d<? super s1.k<java.lang.Integer, w3.b.a.b>> r10) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9674y.m27323b(java.util.List, w3.b.a.b, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x019b  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0158 -> B:30:0x015e). Please submit an issue!!! */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m27322c(w3.b.a.b r6, s1.w.d<? super java.lang.Integer> r7) {
        /*
            Method dump skipped, instructions count: 420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p523a0.C9674y.m27322c(w3.b.a.b, s1.w.d):java.lang.Object");
    }
}
