package p193e.p194a.p437c.p552i.p553a;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import org.apache.avro.generic.GenericRecord;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1050l5.p1051a.C17697p3;
import p193e.p194a.p1146q2.AbstractC19463a0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p437c.p523a0.AbstractC9616c;
import p193e.p194a.p437c.p523a0.C9618d;
import p193e.p194a.p437c.p523a0.C9629g;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
import w3.b.a.g;
/* renamed from: e.a.c.i.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/a/c.class */
public final class C10273c implements AbstractC10272b {

    /* renamed from: a */
    public final AbstractC9616c f30446a;

    /* renamed from: b */
    public final AbstractC19854f<AbstractC19463a0> f30447b;

    /* renamed from: c */
    public final f f30448c;

    @e(c = "com.truecaller.insights.core.accounts.AccountInformationParityLoggerImpl", f = "AccountInformationParityLogger.kt", l = {36}, m = "logAccountInfoParityEvent")
    /* renamed from: e.a.c.i.a.c$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/a/c$a.class */
    public static final class C10274a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f30449d;

        /* renamed from: e */
        public int f30450e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10274a(d dVar) {
            super(dVar);
            C10273c.this = r4;
        }

        /* renamed from: s */
        public final Object m26503s(Object obj) {
            this.f30449d = obj;
            this.f30450e |= Integer.MIN_VALUE;
            return C10273c.this.mo26504a(this);
        }
    }

    @e(c = "com.truecaller.insights.core.accounts.AccountInformationParityLoggerImpl$logAccountInfoParityEvent$2", f = "AccountInformationParityLogger.kt", l = {40}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.a.c$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/a/c$b.class */
    public static final class C10275b extends i implements p<i0, d<? super C17697p3>, Object> {

        /* renamed from: e */
        public int f30452e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10275b(d dVar) {
            super(2, dVar);
            C10273c.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26502i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10275b(dVar);
        }

        /* renamed from: k */
        public final Object m26501k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10275b(dVar).m26500s(s.a);
        }

        /* renamed from: s */
        public final Object m26500s(Object obj) {
            k kVar;
            a aVar = a.a;
            int i = this.f30452e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                w3.b.a.p h = w3.b.a.p.h();
                l.d(h, "LocalDate.now()");
                b m = h.n(h.b.F().j(h.a, 6)).m((g) null);
                l.d(m, "dateSixMonthsAgo.toDateTimeAtStartOfDay()");
                long j = ((w3.b.a.e0.e) m).a;
                AbstractC9616c abstractC9616c = C10273c.this.f30446a;
                this.f30452e = 1;
                Object m27385a = ((C9618d) abstractC9616c).m27385a(j, this);
                obj = m27385a;
                if (m27385a == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<C9629g> list = (List) obj;
            l.e(list, "results");
            k kVar2 = new k(0, 0);
            k kVar3 = kVar2;
            if (!list.isEmpty()) {
                ListIterator listIterator = list.listIterator(list.size());
                while (true) {
                    kVar3 = kVar2;
                    if (!listIterator.hasPrevious()) {
                        break;
                    }
                    C9629g c9629g = (C9629g) listIterator.previous();
                    kVar2 = new k(Integer.valueOf(c9629g.f29093b.size() + ((Number) kVar2.a).intValue()), Integer.valueOf(c9629g.f29094c.size() + ((Number) kVar2.b).intValue()));
                }
            }
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (C9629g c9629g2 : list) {
                String m8618h = C22128a.m8618h(new StringBuilder(), c9629g2.f29092a, "_no_acc");
                Locale locale = Locale.ENGLISH;
                l.d(locale, "Locale.ENGLISH");
                Objects.requireNonNull(m8618h, "null cannot be cast to non-null type java.lang.String");
                String lowerCase = m8618h.toLowerCase(locale);
                l.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                k kVar4 = new k(lowerCase, Integer.valueOf(c9629g2.f29093b.size()));
                String str = c9629g2.f29092a + "_acc";
                l.d(locale, "Locale.ENGLISH");
                Objects.requireNonNull(str, "null cannot be cast to non-null type java.lang.String");
                String lowerCase2 = str.toLowerCase(locale);
                l.d(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
                arrayList.add(s1.u.i.T(new k[]{kVar4, new k(lowerCase2, Integer.valueOf(c9629g2.f29094c.size()))}));
            }
            List l0 = s1.u.i.l0(s1.u.i.T(new k[]{new k("transactional_sms_count", Integer.valueOf(((Number) kVar3.b).intValue() + ((Number) kVar3.a).intValue())), new k("transactional_no_acc", kVar3.a), new k("transactional_acc", kVar3.b)}), C25225a.m3825w0(arrayList));
            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(l0, 10));
            Iterator it = ((ArrayList) l0).iterator();
            while (it.hasNext()) {
                arrayList2.add(new k(((k) it.next()).a, Double.valueOf(((Number) kVar.b).intValue())));
            }
            C17697p3.C17699b m15852a = C17697p3.m15852a();
            m15852a.m15850b("account_model_stats");
            m15852a.m15849c(s1.u.i.V0(arrayList2));
            GenericRecord build = m15852a.build();
            C10273c.this.f30447b.mo11854a().mo13111a(build);
            return build;
        }
    }

    @Inject
    public C10273c(AbstractC9616c abstractC9616c, AbstractC19854f<AbstractC19463a0> abstractC19854f, @Named("IO") f fVar) {
        l.e(abstractC9616c, "accountInformationDataSource");
        l.e(abstractC19854f, "eventsTracker");
        l.e(fVar, "ioCoroutineContext");
        this.f30446a = abstractC9616c;
        this.f30447b = abstractC19854f;
        this.f30448c = fVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:2|(2:4|(7:6|8|26|(2:10|(1:12)(2:13|14))(4:15|16|17|(2:19|20))|25|23|24))|7|8|26|(0)(0)|25|23|24) */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0085, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0086, code lost:
        p193e.p194a.p437c.p548h.p550l.C10263b.f30414d.m26508b(r6, null);
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0059  */
    @Override // p193e.p194a.p437c.p552i.p553a.AbstractC10272b
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26504a(s1.w.d<? super s1.s> r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p193e.p194a.p437c.p552i.p553a.C10273c.C10274a
            if (r0 == 0) goto L25
            r0 = r6
            e.a.c.i.a.c$a r0 = (p193e.p194a.p437c.p552i.p553a.C10273c.C10274a) r0
            r7 = r0
            r0 = r7
            int r0 = r0.f30450e
            r8 = r0
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L25
            r0 = r7
            r1 = r8
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f30450e = r1
            r0 = r7
            r6 = r0
            goto L2f
        L25:
            e.a.c.i.a.c$a r0 = new e.a.c.i.a.c$a
            r1 = r0
            r2 = r5
            r3 = r6
            r1.<init>(r3)
            r6 = r0
        L2f:
            r0 = r6
            java.lang.Object r0 = r0.f30449d
            r9 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r7 = r0
            r0 = r6
            int r0 = r0.f30450e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L59
            r0 = r8
            r1 = 1
            if (r0 != r1) goto L4f
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)     // Catch: java.lang.Exception -> L85
            goto L8e
        L4f:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L59:
            r0 = r9
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r5
            s1.w.f r0 = r0.f30448c     // Catch: java.lang.Exception -> L85
            r9 = r0
            e.a.c.i.a.c$b r0 = new e.a.c.i.a.c$b     // Catch: java.lang.Exception -> L85
            r10 = r0
            r0 = r10
            r1 = r5
            r2 = 0
            r0.<init>(r2)     // Catch: java.lang.Exception -> L85
            r0 = r6
            r1 = 1
            r0.f30450e = r1     // Catch: java.lang.Exception -> L85
            r0 = r9
            r1 = r10
            r2 = r6
            java.lang.Object r0 = s1.a.a.a.v0.f.d.a4(r0, r1, r2)     // Catch: java.lang.Exception -> L85
            r6 = r0
            r0 = r6
            r1 = r7
            if (r0 != r1) goto L8e
            r0 = r7
            return r0
        L85:
            r6 = move-exception
            e.a.c.h.l.b r0 = p193e.p194a.p437c.p548h.p550l.C10263b.f30414d
            r1 = r6
            r2 = 0
            r0.m26508b(r1, r2)
        L8e:
            s1.s r0 = s1.s.a
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p552i.p553a.C10273c.mo26504a(s1.w.d):java.lang.Object");
    }
}
