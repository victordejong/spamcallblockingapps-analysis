package p193e.p194a.p437c.p526c.p530f;

import com.truecaller.insights.categorizer.model.MetaParam;
import com.truecaller.insights.models.states.InsightState;
import e.m.e.k;
import java.util.Date;
import javax.inject.Inject;
import p193e.p194a.p437c.p526c.p528d.AbstractC9921m0;
import p193e.p194a.p437c.p538g.p539a0.AbstractC10115f;
import s1.s;
import s1.u.i;
import s1.w.d;
import s1.w.j.a;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.c.c.f.o */
/* loaded from: classes10-dex2jar.jar:e/a/c/c/f/o.class */
public final class C10010o implements AbstractC10009n {

    /* renamed from: a */
    public final k f29846a = new k();

    /* renamed from: b */
    public final AbstractC9921m0 f29847b;

    @Inject
    public C10010o(AbstractC9921m0 abstractC9921m0) {
        l.e(abstractC9921m0, "stateDao");
        this.f29847b = abstractC9921m0;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: a */
    public Object mo26931a(d<? super Integer> dVar) {
        InsightState mo27022d = this.f29847b.mo27022d("INSIGHTS.UPDATES.CLASSIFIER.VERSION");
        Integer num = null;
        if (mo27022d != null) {
            String lastUpdatedData = mo27022d.getLastUpdatedData();
            num = null;
            if (lastUpdatedData != null) {
                num = new Integer(Integer.parseInt(lastUpdatedData));
            }
        }
        return num;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: b */
    public Object mo26930b(int i, d<? super s> dVar) {
        a insightState = new InsightState("INSIGHTS.CATEGORIZER.VERSION", null, null, null, 14, null);
        insightState.setLastUpdatedData(String.valueOf(i));
        insightState.setLastUpdatedAt(new Date());
        this.f29847b.mo27024b(insightState);
        return insightState == a.a ? insightState : s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: c */
    public Object mo26929c(d<? super InsightState> dVar) {
        return mo26915q("INSIGHTS.RESYNC", dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: d */
    public Object mo26928d(d<? super InsightState> dVar) {
        return m26912t("INSIGHTS.SMS.BILL.REMINDERS");
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: e */
    public Object mo26927e(d<? super s> dVar) {
        Object mo27025a = this.f29847b.mo27025a(i.T(new String[]{"INSIGHTS.LINKING", "INSIGHTS.PRUNING"}), dVar);
        return mo27025a == a.a ? mo27025a : s.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0036, code lost:
        if (r5 != null) goto L12;
     */
    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26926f(s1.w.d<? super com.truecaller.insights.categorizer.model.MetaParam> r5) {
        /*
            r4 = this;
            r0 = r4
            e.a.c.c.d.m0 r0 = r0.f29847b
            java.lang.String r1 = "INSIGHTS.CATEGORIZER"
            com.truecaller.insights.models.states.InsightState r0 = r0.mo27022d(r1)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r7
            r5 = r0
            r0 = r6
            if (r0 == 0) goto L53
            r0 = r6
            java.lang.String r0 = r0.getLastUpdatedData()     // Catch: java.lang.NullPointerException -> L48
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L3c
            r0 = r4
            e.m.e.k r0 = r0.f29846a     // Catch: java.lang.NullPointerException -> L48
            r1 = r5
            java.lang.Class<com.truecaller.insights.categorizer.model.MetaParam> r2 = com.truecaller.insights.categorizer.model.MetaParam.class
            java.lang.Object r0 = r0.g(r1, r2)     // Catch: java.lang.NullPointerException -> L48
            r5 = r0
            java.lang.Class<com.truecaller.insights.categorizer.model.MetaParam> r0 = com.truecaller.insights.categorizer.model.MetaParam.class
            java.lang.Class r0 = e.m.d.y.n.B1(r0)     // Catch: java.lang.NullPointerException -> L48
            r1 = r5
            java.lang.Object r0 = r0.cast(r1)     // Catch: java.lang.NullPointerException -> L48
            com.truecaller.insights.categorizer.model.MetaParam r0 = (com.truecaller.insights.categorizer.model.MetaParam) r0     // Catch: java.lang.NullPointerException -> L48
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L3c
            goto L53
        L3c:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.NullPointerException -> L48
            r5 = r0
            r0 = r5
            java.lang.String r1 = "CategorizerMeta cannot be null"
            r0.<init>(r1)     // Catch: java.lang.NullPointerException -> L48
            r0 = r5
            throw r0     // Catch: java.lang.NullPointerException -> L48
        L48:
            r5 = move-exception
            e.a.c.h.l.b r0 = p193e.p194a.p437c.p548h.p550l.C10263b.f30414d
            r1 = r5
            r2 = 0
            r0.m26508b(r1, r2)
            r0 = r7
            r5 = r0
        L53:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C10010o.mo26926f(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: g */
    public Object mo26925g(InsightState insightState, d<? super s> dVar) {
        this.f29847b.mo27024b(insightState);
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: h */
    public Object mo26924h(AbstractC10115f abstractC10115f, d<? super s> dVar) {
        a insightState = new InsightState("INSIGHTS.UPDATES.CLASSIFIER", null, null, null, 14, null);
        insightState.setLastUpdatedData(this.f29846a.m(abstractC10115f));
        insightState.setLastUpdatedAt(new Date());
        this.f29847b.mo27024b(insightState);
        return insightState == a.a ? insightState : s.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
        if (r5 != null) goto L11;
     */
    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo26923i(s1.w.d<? super p193e.p194a.p437c.p538g.p539a0.AbstractC10115f> r5) {
        /*
            r4 = this;
            r0 = r4
            e.a.c.c.d.m0 r0 = r0.f29847b
            java.lang.String r1 = "INSIGHTS.UPDATES.CLASSIFIER"
            com.truecaller.insights.models.states.InsightState r0 = r0.mo27022d(r1)
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L42
            r0 = r5
            java.lang.String r0 = r0.getLastUpdatedData()
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L38
            r0 = r4
            e.m.e.k r0 = r0.f29846a
            r1 = r5
            java.lang.Class<com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel> r2 = com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel.class
            java.lang.Object r0 = r0.g(r1, r2)
            r5 = r0
            java.lang.Class<com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel> r0 = com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel.class
            java.lang.Class r0 = e.m.d.y.n.B1(r0)
            r1 = r5
            java.lang.Object r0 = r0.cast(r1)
            com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel r0 = (com.truecaller.insights.categorizer.model.AndroidMultiClassClassifierModel) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L38
            goto L44
        L38:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "CategorizerMeta cannot be null"
            r1.<init>(r2)
            throw r0
        L42:
            r0 = 0
            r5 = r0
        L44:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p526c.p530f.C10010o.mo26923i(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: j */
    public Object mo26922j(MetaParam metaParam, d<? super s> dVar) {
        a insightState = new InsightState("INSIGHTS.CATEGORIZER", null, null, null, 14, null);
        insightState.setLastUpdatedData(this.f29846a.m(metaParam));
        insightState.setLastUpdatedAt(new Date());
        this.f29847b.mo27024b(insightState);
        return insightState == a.a ? insightState : s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: k */
    public Object mo26921k(d<? super Integer> dVar) {
        InsightState mo27022d = this.f29847b.mo27022d("INSIGHTS.CATEGORIZER.VERSION");
        Integer num = null;
        if (mo27022d != null) {
            String lastUpdatedData = mo27022d.getLastUpdatedData();
            num = null;
            if (lastUpdatedData != null) {
                num = new Integer(Integer.parseInt(lastUpdatedData));
            }
        }
        return num;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: l */
    public Object mo26920l(String str, d<? super s> dVar) {
        this.f29847b.mo27024b(new InsightState(str, null, null, null, 14, null));
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: m */
    public Object mo26919m(InsightState insightState, Date date, d<? super s> dVar) {
        insightState.setLastUpdatedAt(date);
        this.f29847b.mo27024b(insightState);
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: n */
    public Object mo26918n(d<? super InsightState> dVar) {
        return m26912t("INSIGHTS.REMINDERS");
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: o */
    public Object mo26917o(d<? super InsightState> dVar) {
        return mo26915q("INSIGHTS.SENDER.RESOLUTION", dVar);
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: p */
    public Object mo26916p(InsightState insightState, Date date, d<? super s> dVar) {
        insightState.setLastUpdatedAt(date);
        this.f29847b.mo27024b(insightState);
        return s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: q */
    public Object mo26915q(String str, d<? super InsightState> dVar) {
        InsightState insightState;
        InsightState mo27022d = this.f29847b.mo27022d(str);
        if (mo27022d != null) {
            insightState = mo27022d;
        } else {
            insightState = new InsightState(str, null, null, null, 14, null);
            insightState.setLastUpdatedData(null);
        }
        return insightState;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: r */
    public Object mo26914r(InsightState insightState, d<? super s> dVar) {
        Object mo26919m;
        mo26919m = mo26919m(insightState, (r9 & 2) != 0 ? new Date() : null, dVar);
        return mo26919m == a.a ? mo26919m : s.a;
    }

    @Override // p193e.p194a.p437c.p526c.p530f.AbstractC10009n
    /* renamed from: s */
    public Object mo26913s(int i, d<? super s> dVar) {
        a insightState = new InsightState("INSIGHTS.UPDATES.CLASSIFIER.VERSION", null, null, null, 14, null);
        insightState.setLastUpdatedData(String.valueOf(i));
        insightState.setLastUpdatedAt(new Date());
        this.f29847b.mo27024b(insightState);
        return insightState == a.a ? insightState : s.a;
    }

    /* renamed from: t */
    public final InsightState m26912t(String str) {
        InsightState insightState;
        InsightState mo27022d = this.f29847b.mo27022d(str);
        if (mo27022d != null) {
            insightState = mo27022d;
        } else {
            insightState = new InsightState(str, null, null, null, 14, null);
            Date n = new b().y(10).n();
            l.d(n, "DateTime.now().minusDays…_LOOK_BACK_DAYS).toDate()");
            insightState.setLastUpdatedAt(n);
            insightState.setLastUpdatedData(null);
        }
        return insightState;
    }
}
