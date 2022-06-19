package p193e.p194a.p437c.p532d0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p552i.p564k.AbstractC10374a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.d0.f */
/* loaded from: classes10-dex2jar.jar:e/a/c/d0/f.class */
public final class C10052f extends AbstractC21765k {

    /* renamed from: b */
    public final String f29905b = "InsightsSenderResolutionWorkAction";

    /* renamed from: c */
    public final AbstractC10374a f29906c;

    /* renamed from: d */
    public final AbstractC9691j f29907d;

    @e(c = "com.truecaller.insights.workActions.InsightsSenderResolutionWorkAction$execute$1", f = "InsightsSenderResolutionWorkAction.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: e.a.c.d0.f$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/d0/f$a.class */
    public static final class C10053a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29908e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10053a(d dVar) {
            super(2, dVar);
            C10052f.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26777i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10053a(dVar);
        }

        /* renamed from: k */
        public final Object m26776k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10053a(dVar).m26775s(s.a);
        }

        /* renamed from: s */
        public final Object m26775s(Object obj) {
            a aVar = a.a;
            int i = this.f29908e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10374a abstractC10374a = C10052f.this.f29906c;
                this.f29908e = 1;
                if (abstractC10374a.mo26268b(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C10052f(AbstractC10374a abstractC10374a, AbstractC9691j abstractC9691j) {
        l.e(abstractC10374a, "insightsSenderResolutionManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f29906c = abstractC10374a;
        this.f29907d = abstractC9691j;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C10053a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29905b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f29907d.mo27262d() && this.f29906c.mo26267c();
    }
}
