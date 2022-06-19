package p193e.p194a.p437c.p538g.p546y;

import com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel;
import java.io.BufferedReader;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p531c0.AbstractC10011a;
import p193e.p194a.p437c.p531c0.C10013b;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10115f;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.g.y.r */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/r.class */
public final class C10245r implements AbstractC10244q {

    /* renamed from: a */
    public final AbstractC10009n f30383a;

    /* renamed from: b */
    public final AbstractC10011a f30384b;

    @e(c = "com.truecaller.insights.categorizer.datasource.UpdatesModelDataSourceImpl", f = "UpdatesModelDataSource.kt", l = {21, 21}, m = "getLatestUpdatesModel")
    /* renamed from: e.a.c.g.y.r$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/r$a.class */
    public static final class C10246a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30385d;

        /* renamed from: e */
        public int f30386e;

        /* renamed from: g */
        public Object f30388g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10246a(d dVar) {
            super(dVar);
            C10245r.this = r4;
        }

        /* renamed from: s */
        public final Object m26534s(Object obj) {
            this.f30385d = obj;
            this.f30386e |= Integer.MIN_VALUE;
            return C10245r.this.m26537b(this);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.UpdatesModelDataSourceImpl", f = "UpdatesModelDataSource.kt", l = {33, 34}, m = "saveModel")
    /* renamed from: e.a.c.g.y.r$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/r$b.class */
    public static final class C10247b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30389d;

        /* renamed from: e */
        public int f30390e;

        /* renamed from: g */
        public Object f30392g;

        /* renamed from: h */
        public int f30393h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10247b(d dVar) {
            super(dVar);
            C10245r.this = r4;
        }

        /* renamed from: s */
        public final Object m26533s(Object obj) {
            this.f30389d = obj;
            this.f30390e |= Integer.MIN_VALUE;
            return C10245r.this.m26536c(null, 0, this);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.UpdatesModelDataSourceImpl", f = "UpdatesModelDataSource.kt", l = {39}, m = "tryCreateModel")
    /* renamed from: e.a.c.g.y.r$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/r$c.class */
    public static final class C10248c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30394d;

        /* renamed from: e */
        public int f30395e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10248c(d dVar) {
            super(dVar);
            C10245r.this = r4;
        }

        /* renamed from: s */
        public final Object m26532s(Object obj) {
            this.f30394d = obj;
            this.f30395e |= Integer.MIN_VALUE;
            return C10245r.this.m26535d(null, this);
        }
    }

    @Inject
    public C10245r(AbstractC10009n abstractC10009n, AbstractC10011a abstractC10011a) {
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC10011a, "assetsReader");
        this.f30383a = abstractC10009n;
        this.f30384b = abstractC10011a;
    }

    /* renamed from: a */
    public Object m26538a(d<? super AbstractC10115f> dVar) {
        C10013b c10013b = (C10013b) this.f30384b;
        Objects.requireNonNull(c10013b);
        BufferedReader bufferedReader = null;
        BufferedReader bufferedReader2 = null;
        try {
            try {
                BufferedReader mo26890b = c10013b.f29852b.mo26890b("classifier/cls_model_medium.json");
                Object d = c10013b.f29851a.d(mo26890b, AndroidMultiClassClassifierModel.class);
                l.d(d, "gson.fromJson(bufferedRe…ssifierModel::class.java)");
                bufferedReader2 = mo26890b;
                bufferedReader = mo26890b;
                AbstractC10115f abstractC10115f = (AbstractC10115f) d;
                c10013b.f29852b.mo26891a(mo26890b);
                return abstractC10115f;
            } catch (Exception e) {
                bufferedReader2 = bufferedReader;
                throw e;
            }
        } catch (Throwable th) {
            c10013b.f29852b.mo26891a(bufferedReader2);
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00aa  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object m26537b(s1.w.d<? super p193e.p194a.p437c.p538g.p539a0.AbstractC10115f> r6) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10245r.m26537b(s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c8  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m26536c(p193e.p194a.p437c.p538g.p539a0.AbstractC10115f r6, int r7, s1.w.d<? super s1.s> r8) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10245r.m26536c(e.a.c.g.a0.f, int, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|28|(2:10|(1:12)(2:13|14))(6:15|16|17|18|19|(2:21|22))|27|25|26))|7|8|28|(0)(0)|27|25|26) */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x007c, code lost:
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(new com.truecaller.log.UnmutedException.InsightsExceptions(com.truecaller.log.UnmutedException.InsightsExceptions.Cause.MALFORMED_MODEL_RECEIVED), null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final /* synthetic */ java.lang.Object m26535d(s1.z.b.l<? super s1.w.d<? super s1.s>, ? extends java.lang.Object> r6, s1.w.d<? super s1.s> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.p546y.C10245r.C10248c
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.g.y.r$c r0 = (p193e.p194a.p437c.p538g.p546y.C10245r.C10248c) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f30395e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30395e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.g.y.r$c r0 = new e.a.c.g.y.r$c
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f30394d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r8 = r0
            r0 = r7
            int r0 = r0.f30395e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L5f
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L55
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Exception -> L7b
            goto L8d
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5f:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r7
            r1 = 1
            r0.f30395e = r1     // Catch: java.lang.Exception -> L7b
            r0 = r6
            e.a.c.g.y.s r0 = (p193e.p194a.p437c.p538g.p546y.C10249s) r0
            r6 = r0
            r0 = r6
            r1 = r7
            java.lang.Object r0 = r0.m26531d(r1)     // Catch: java.lang.Exception -> L7b
            r6 = r0
            r0 = r6
            r1 = r8
            if (r0 != r1) goto L8d
            r0 = r8
            return r0
        L7b:
            r6 = move-exception
            e.a.c.h.l.b r0 = p193e.p194a.p437c.p548h.p550l.C10263b.f30414d
            com.truecaller.log.UnmutedException$InsightsExceptions r1 = new com.truecaller.log.UnmutedException$InsightsExceptions
            r2 = r1
            com.truecaller.log.UnmutedException$InsightsExceptions$Cause r3 = com.truecaller.log.UnmutedException.InsightsExceptions.Cause.MALFORMED_MODEL_RECEIVED
            r2.<init>(r3)
            r2 = 0
            r0.m26508b(r1, r2)
        L8d:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10245r.m26535d(s1.z.b.l, s1.w.d):java.lang.Object");
    }
}
