package p193e.p194a.p437c.p576n;

import com.truecaller.insights.models.categorizer.ReclassifiedMessage;
import com.truecaller.insights.models.feedback.FeedbackType;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9893j0;
import p193e.p194a.p437c.p526c.p528d.AbstractC9930p;
import p193e.p194a.p437c.p526c.p528d.AbstractC9956u;
import p193e.p194a.p437c.p538g.AbstractC10105a;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p580r.p585f.C10536a;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.c.n.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/n/b.class */
public final class C10463b implements AbstractC10462a {

    /* renamed from: a */
    public final AbstractC9930p f31124a;

    /* renamed from: b */
    public final AbstractC9956u f31125b;

    /* renamed from: c */
    public final AbstractC9893j0 f31126c;

    @e(c = "com.truecaller.insights.feedback.FeedbackDataSourceImpl", f = "FeedbackDataSource.kt", l = {103}, m = "getConfidenceScoresForMessages")
    /* renamed from: e.a.c.n.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/n/b$a.class */
    public static final class C10464a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31127d;

        /* renamed from: e */
        public int f31128e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10464a(d dVar) {
            super(dVar);
            C10463b.this = r4;
        }

        /* renamed from: s */
        public final Object m26120s(Object obj) {
            this.f31127d = obj;
            this.f31128e |= Integer.MIN_VALUE;
            return C10463b.this.mo26128a(0L, this);
        }
    }

    @e(c = "com.truecaller.insights.feedback.FeedbackDataSourceImpl", f = "FeedbackDataSource.kt", l = {59}, m = "getFeedbackEntities")
    /* renamed from: e.a.c.n.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/n/b$b.class */
    public static final class C10465b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31130d;

        /* renamed from: e */
        public int f31131e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10465b(d dVar) {
            super(dVar);
            C10463b.this = r4;
        }

        /* renamed from: s */
        public final Object m26119s(Object obj) {
            this.f31130d = obj;
            this.f31131e |= Integer.MIN_VALUE;
            return C10463b.this.mo26123f(null, null, this);
        }
    }

    @e(c = "com.truecaller.insights.feedback.FeedbackDataSourceImpl", f = "FeedbackDataSource.kt", l = {71}, m = "getFeedbackEntities")
    /* renamed from: e.a.c.n.b$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/n/b$c.class */
    public static final class C10466c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31133d;

        /* renamed from: e */
        public int f31134e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10466c(d dVar) {
            super(dVar);
            C10463b.this = r4;
        }

        /* renamed from: s */
        public final Object m26118s(Object obj) {
            this.f31133d = obj;
            this.f31134e |= Integer.MIN_VALUE;
            return C10463b.this.mo26122g(0L, null, this);
        }
    }

    /* renamed from: e.a.c.n.b$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/n/b$d.class */
    public static final class C10467d implements f<Map<Long, ? extends C10329b>> {

        /* renamed from: a */
        public final /* synthetic */ f f31136a;

        /* renamed from: e.a.c.n.b$d$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/n/b$d$a.class */
        public static final class C10468a implements g<List<? extends C10536a>> {

            /* renamed from: a */
            public final /* synthetic */ g f31137a;

            @e(c = "com.truecaller.insights.feedback.FeedbackDataSourceImpl$getFeedbackEntitiesFlow$$inlined$map$1$2", f = "FeedbackDataSource.kt", l = {139}, m = "emit")
            /* renamed from: e.a.c.n.b$d$a$a */
            /* loaded from: classes10-dex2jar.jar:e/a/c/n/b$d$a$a.class */
            public static final class C10469a extends c {

                /* renamed from: d */
                public /* synthetic */ Object f31138d;

                /* renamed from: e */
                public int f31139e;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                public C10469a(d dVar) {
                    super(dVar);
                    C10468a.this = r4;
                }

                /* renamed from: s */
                public final Object m26115s(Object obj) {
                    this.f31138d = obj;
                    this.f31139e |= Integer.MIN_VALUE;
                    return C10468a.this.m26116a(null, this);
                }
            }

            public C10468a(g gVar) {
                this.f31137a = gVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
            /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public java.lang.Object m26116a(java.lang.Object r7, s1.w.d r8) {
                /*
                    Method dump skipped, instructions count: 231
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10463b.C10467d.C10468a.m26116a(java.lang.Object, s1.w.d):java.lang.Object");
            }
        }

        public C10467d(f fVar) {
            this.f31136a = fVar;
        }

        /* renamed from: c */
        public Object m26117c(g gVar, d dVar) {
            Object c = this.f31136a.c(new C10468a(gVar), dVar);
            return c == a.a ? c : s.a;
        }
    }

    @Inject
    public C10463b(AbstractC9930p abstractC9930p, AbstractC9800d0 abstractC9800d0, AbstractC9956u abstractC9956u, AbstractC9893j0 abstractC9893j0) {
        l.e(abstractC9930p, "categorizerDao");
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC9956u, "feedbackDao");
        l.e(abstractC9893j0, "smsBackupDao");
        this.f31124a = abstractC9930p;
        this.f31125b = abstractC9956u;
        this.f31126c = abstractC9893j0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00cf A[LOOP:0: B:23:0x00c5->B:25:0x00cf, LOOP_END] */
    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26128a(long r7, s1.w.d<? super java.util.Map<java.lang.Long, java.lang.Float>> r9) {
        /*
            Method dump skipped, instructions count: 255
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10463b.mo26128a(long, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: b */
    public Object mo26127b(long j, FeedbackType feedbackType, d<? super Integer> dVar) {
        return this.f31125b.mo27001b(j, feedbackType, dVar);
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: c */
    public Object mo26126c(long j, C10329b c10329b, long j2, d<? super s> dVar) {
        AbstractC9956u abstractC9956u = this.f31125b;
        l.e(c10329b, "$this$toFeedbackEntity");
        FeedbackType feedbackType = c10329b.f30685g;
        String str = c10329b.f30684f;
        String str2 = c10329b.f30679a;
        String str3 = c10329b.f30680b;
        String str4 = c10329b.f30683e;
        String str5 = c10329b.f30682d;
        Date n = c10329b.f30681c.n();
        l.d(n, "datetime.toDate()");
        Object mo26998e = abstractC9956u.mo26998e(new C10536a(0L, n, feedbackType, str, j, str2, str3, str4, str5, j2), dVar);
        return mo26998e == a.a ? mo26998e : s.a;
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: d */
    public Object mo26125d(long j, String str, FeedbackType feedbackType, d<? super s> dVar) {
        Object mo26999d = this.f31125b.mo26999d(j, str, feedbackType, dVar);
        return mo26999d == a.a ? mo26999d : s.a;
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: e */
    public Object mo26124e(List<C10329b> list, AbstractC10105a abstractC10105a, AbstractC10105a abstractC10105a2, d<? super s> dVar) {
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C10329b c10329b : list) {
            l.e(c10329b, "$this$toReclassifiedMessage");
            l.e(abstractC10105a, "fromCategory");
            l.e(abstractC10105a2, "toCategory");
            arrayList.add(new ReclassifiedMessage(c10329b.f30680b, abstractC10105a.toString(), abstractC10105a2.toString(), 0, 0L, null, 56, null));
        }
        Object mo27010h = this.f31124a.mo27010h(arrayList, dVar);
        return mo27010h == a.a ? mo27010h : s.a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c6 A[LOOP:0: B:23:0x00bd->B:25:0x00c6, LOOP_END] */
    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26123f(java.util.List<java.lang.Long> r7, java.util.List<? extends com.truecaller.insights.models.feedback.FeedbackType> r8, s1.w.d<? super java.util.Map<java.lang.Long, p193e.p194a.p437c.p552i.p557e.C10329b>> r9) {
        /*
            Method dump skipped, instructions count: 235
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10463b.mo26123f(java.util.List, java.util.List, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d7 A[LOOP:0: B:23:0x00cd->B:25:0x00d7, LOOP_END] */
    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26122g(long r7, com.truecaller.insights.models.feedback.FeedbackType r9, s1.w.d<? super java.util.Map<java.lang.Long, p193e.p194a.p437c.p552i.p557e.C10329b>> r10) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p576n.C10463b.mo26122g(long, com.truecaller.insights.models.feedback.FeedbackType, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p576n.AbstractC10462a
    /* renamed from: h */
    public f<Map<Long, C10329b>> mo26121h(List<Long> list, List<? extends FeedbackType> list2) {
        l.e(list, "entities");
        l.e(list2, "feedbackTypes");
        return new C10467d(this.f31125b.mo26997f(list, list2));
    }
}
