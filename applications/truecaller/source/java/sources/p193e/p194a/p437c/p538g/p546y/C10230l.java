package p193e.p194a.p437c.p538g.p546y;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.insights.models.categorizerseed.CategorizerSeedServiceModel;
import javax.inject.Inject;
import o3.a;
import org.apache.avro.generic.GenericRecord;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17529f2;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p538g.AbstractC10159f;
import p193e.p194a.p437c.p593s.p594a.AbstractC10680a;
import s1.g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.b;
import s1.z.c.j;
import s1.z.c.m;
/* renamed from: e.a.c.g.y.l */
/* loaded from: classes10-dex2jar.jar:e/a/c/g/y/l.class */
public final class C10230l implements AbstractC10227k {

    /* renamed from: a */
    public final g f30344a = C25225a.m3978P1(new C10231a());

    /* renamed from: b */
    public final AbstractC9686e f30345b;

    /* renamed from: c */
    public final a<AbstractC10159f> f30346c;

    /* renamed from: d */
    public final AbstractC19462a f30347d;

    /* renamed from: e */
    public final AbstractC10680a f30348e;

    /* renamed from: e.a.c.g.y.l$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/l$a.class */
    public static final class C10231a extends m implements s1.z.b.a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10231a() {
            super(0);
            C10230l.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(((AbstractC10159f) C10230l.this.f30346c.get()).getVersion());
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerSeedManagerImpl", f = "InsightsCategorizerSeedManager.kt", l = {74}, m = "mayUpdateCategorizerModel")
    /* renamed from: e.a.c.g.y.l$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/l$b.class */
    public static final class C10232b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30350d;

        /* renamed from: e */
        public int f30351e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10232b(d dVar) {
            super(dVar);
            C10230l.this = r4;
        }

        /* renamed from: s */
        public final Object m26551s(Object obj) {
            this.f30350d = obj;
            this.f30351e |= Integer.MIN_VALUE;
            return C10230l.this.m26552e(null, this);
        }
    }

    @e(c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerSeedManagerImpl", f = "InsightsCategorizerSeedManager.kt", l = {40, 49}, m = "updateCategorizerModel")
    /* renamed from: e.a.c.g.y.l$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/l$c.class */
    public static final class C10233c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30353d;

        /* renamed from: e */
        public int f30354e;

        /* renamed from: g */
        public Object f30356g;

        /* renamed from: h */
        public Object f30357h;

        /* renamed from: i */
        public Object f30358i;

        /* renamed from: j */
        public long f30359j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10233c(d dVar) {
            super(dVar);
            C10230l.this = r4;
        }

        /* renamed from: s */
        public final Object m26550s(Object obj) {
            this.f30353d = obj;
            this.f30354e |= Integer.MIN_VALUE;
            return C10230l.this.mo26556a(null, this);
        }
    }

    /* renamed from: e.a.c.g.y.l$d */
    /* loaded from: classes10-dex2jar.jar:e/a/c/g/y/l$d.class */
    public static final /* synthetic */ class C10234d extends j implements l<d<? super CategorizerSeedServiceModel>, Object> {
        public C10234d(C10230l c10230l) {
            super(1, c10230l, C10230l.class, "getCategorizerFromBackend", "getCategorizerFromBackend(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", 0);
        }

        /* renamed from: d */
        public Object m26549d(Object obj) {
            d<? super CategorizerSeedServiceModel> dVar = (d) obj;
            C10230l c10230l = (C10230l) ((b) this).b;
            AbstractC10680a abstractC10680a = c10230l.f30348e;
            String mo27307f = c10230l.f30345b.mo27307f();
            String mo27306g = c10230l.f30345b.mo27306g();
            Integer m26554c = c10230l.m26554c();
            return abstractC10680a.mo25753a(mo27307f, mo27306g, m26554c != null ? String.valueOf(m26554c.intValue()) : null, dVar);
        }
    }

    @Inject
    public C10230l(AbstractC9686e abstractC9686e, a<AbstractC10159f> aVar, AbstractC19462a abstractC19462a, AbstractC10680a abstractC10680a) {
        s1.z.c.l.e(abstractC9686e, "insightsEnvironmentHelper");
        s1.z.c.l.e(aVar, "categorizer");
        s1.z.c.l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        s1.z.c.l.e(abstractC10680a, "categorizerRestAdapter");
        this.f30345b = abstractC9686e;
        this.f30346c = aVar;
        this.f30347d = abstractC19462a;
        this.f30348e = abstractC10680a;
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00bd  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0123  */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    @Override // p193e.p194a.p437c.p538g.p546y.AbstractC10227k
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26556a(java.lang.String r8, s1.w.d<? super p193e.p194a.p437c.p538g.p546y.AbstractC10227k.AbstractC10228a> r9) {
        /*
            Method dump skipped, instructions count: 761
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10230l.mo26556a(java.lang.String, s1.w.d):java.lang.Object");
    }

    /* renamed from: b */
    public final int m26555b() {
        return ((Number) this.f30344a.getValue()).intValue();
    }

    /* renamed from: c */
    public final Integer m26554c() {
        return m26555b() > 0 ? Integer.valueOf(m26555b()) : null;
    }

    /* renamed from: d */
    public final void m26553d(String str, long j, int i, int i2) {
        C17529f2.C17531b m15977a = C17529f2.m15977a();
        m15977a.m15975b(str);
        m15977a.m15974c(j);
        m15977a.m15973d("categorizer");
        m15977a.m15972e(String.valueOf(i));
        m15977a.m15969h(i2);
        m15977a.m15971f(this.f30345b.mo27306g());
        m15977a.m15970g("model");
        GenericRecord build = m15977a.build();
        AbstractC19462a abstractC19462a = this.f30347d;
        s1.z.c.l.d(build, "it");
        abstractC19462a.mo13275a(build);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m26552e(s1.o<java.lang.Integer, ? extends java.util.List<java.lang.Double>, ? extends java.util.List<? extends p193e.p194a.p437c.p538g.p539a0.AbstractC10122m>> r6, s1.w.d<? super s1.s> r7) {
        /*
            r5 = this;
            r0 = r7
            boolean r0 = r0 instanceof p193e.p194a.p437c.p538g.p546y.C10230l.C10232b
            if (r0 == 0) goto L28
            r0 = r7
            e.a.c.g.y.l$b r0 = (p193e.p194a.p437c.p538g.p546y.C10230l.C10232b) r0
            r8 = r0
            r0 = r8
            int r0 = r0.f30351e
            r9 = r0
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r8
            r1 = r9
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30351e = r1
            r0 = r8
            r7 = r0
            goto L32
        L28:
            e.a.c.g.y.l$b r0 = new e.a.c.g.y.l$b
            r1 = r0
            r2 = r5
            r3 = r7
            r1.<init>(r3)
            r7 = r0
        L32:
            r0 = r7
            java.lang.Object r0 = r0.f30350d
            r10 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r8 = r0
            r0 = r7
            int r0 = r0.f30351e
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L5f
            r0 = r9
            r1 = 1
            if (r0 != r1) goto L55
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            goto La8
        L55:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L5f:
            r0 = r10
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            int r0 = r0.m26555b()
            r1 = r6
            java.lang.Object r1 = r1.a
            java.lang.Number r1 = (java.lang.Number) r1
            int r1 = r1.intValue()
            if (r0 >= r1) goto L97
            r0 = r5
            o3.a<e.a.c.g.f> r0 = r0.f30346c
            java.lang.Object r0 = r0.get()
            e.a.c.g.f r0 = (p193e.p194a.p437c.p538g.AbstractC10159f) r0
            r10 = r0
            r0 = r7
            r1 = 1
            r0.f30351e = r1
            r0 = r10
            r1 = r6
            r2 = r7
            java.lang.Object r0 = r0.mo26646h(r1, r2)
            r1 = r8
            if (r0 != r1) goto La8
            r0 = r8
            return r0
        L97:
            e.a.c.h.l.b r0 = p193e.p194a.p437c.p548h.p550l.C10263b.f30414d
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            r2 = r1
            java.lang.String r3 = "The version from server is lower than the version in client, even after sending the offsetVersion"
            r2.<init>(r3)
            r2 = 0
            r0.m26508b(r1, r2)
        La8:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p538g.p546y.C10230l.m26552e(s1.o, s1.w.d):java.lang.Object");
    }
}
