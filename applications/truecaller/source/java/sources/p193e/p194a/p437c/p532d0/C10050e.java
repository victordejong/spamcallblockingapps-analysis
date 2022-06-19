package p193e.p194a.p437c.p532d0;

import androidx.work.ListenableWorker;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p598v.AbstractC10709a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.d0.e */
/* loaded from: classes10-dex2jar.jar:e/a/c/d0/e.class */
public class C10050e extends AbstractC21765k {

    /* renamed from: b */
    public final String f29899b = "InsightsRemindersWorkAction";

    /* renamed from: c */
    public final AbstractC10009n f29900c;

    /* renamed from: d */
    public final AbstractC10709a f29901d;

    /* renamed from: e */
    public final AbstractC9691j f29902e;

    @e(c = "com.truecaller.insights.workActions.InsightsRemindersWorkAction$execute$1", f = "InsightsRemindersWorkAction.kt", l = {28, 31, 33}, m = "invokeSuspend")
    /* renamed from: e.a.c.d0.e$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/d0/e$a.class */
    public static final class C10051a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29903e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10051a(d dVar) {
            super(2, dVar);
            C10050e.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26780i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10051a(dVar);
        }

        /* renamed from: k */
        public final Object m26779k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10051a(dVar).m26778s(s.a);
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x00ac  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m26778s(java.lang.Object r5) {
            /*
                r4 = this;
                s1.w.j.a r0 = s1.w.j.a.a
                r6 = r0
                r0 = r4
                int r0 = r0.f29903e
                r7 = r0
                r0 = r7
                if (r0 == 0) goto L3b
                r0 = r7
                r1 = 1
                if (r0 == r1) goto L34
                r0 = r7
                r1 = 2
                if (r0 == r1) goto L2d
                r0 = r7
                r1 = 3
                if (r0 != r1) goto L23
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto Lae
            L23:
                java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
                r1 = r0
                java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
                r1.<init>(r2)
                throw r0
            L2d:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L94
            L34:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                goto L60
            L3b:
                r0 = r5
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r4
                e.a.c.d0.e r0 = p193e.p194a.p437c.p532d0.C10050e.this
                e.a.c.c.f.n r0 = r0.f29900c
                r5 = r0
                r0 = r4
                r1 = 1
                r0.f29903e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.mo26918n(r1)
                r8 = r0
                r0 = r8
                r5 = r0
                r0 = r8
                r1 = r6
                if (r0 != r1) goto L60
                r0 = r6
                return r0
            L60:
                r0 = r5
                com.truecaller.insights.models.states.InsightState r0 = (com.truecaller.insights.models.states.InsightState) r0
                r5 = r0
                w3.b.a.b r0 = new w3.b.a.b
                r1 = r0
                r1.<init>()
                java.util.Date r0 = r0.n()
                r8 = r0
                r0 = r4
                e.a.c.d0.e r0 = p193e.p194a.p437c.p532d0.C10050e.this
                e.a.c.v.a r0 = r0.f29901d
                r5 = r0
                r0 = r8
                java.lang.String r1 = "now"
                s1.z.c.l.d(r0, r1)
                r0 = r4
                r1 = 2
                r0.f29903e = r1
                r0 = r5
                r1 = r8
                r2 = r4
                java.lang.Object r0 = r0.mo25698i(r1, r2)
                r1 = r6
                if (r0 != r1) goto L94
                r0 = r6
                return r0
            L94:
                r0 = r4
                e.a.c.d0.e r0 = p193e.p194a.p437c.p532d0.C10050e.this
                e.a.c.v.a r0 = r0.f29901d
                r5 = r0
                r0 = r4
                r1 = 3
                r0.f29903e = r1
                r0 = r5
                r1 = r4
                java.lang.Object r0 = r0.mo25704c(r1)
                r1 = r6
                if (r0 != r1) goto Lae
                r0 = r6
                return r0
            Lae:
                s1.s r0 = s1.s.a
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p532d0.C10050e.C10051a.m26778s(java.lang.Object):java.lang.Object");
        }
    }

    public C10050e(AbstractC10009n abstractC10009n, AbstractC10709a abstractC10709a, AbstractC9691j abstractC9691j) {
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC10709a, "reminderManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f29900c = abstractC10009n;
        this.f29901d = abstractC10709a;
        this.f29902e = abstractC9691j;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C10051a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29899b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return AbstractApplicationC8442a.m28551L().mo28540W() && this.f29902e.mo27264c();
    }
}
