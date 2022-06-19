package p193e.p194a.p437c.p532d0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p612z.AbstractC10897a;
import p193e.p194a.p437c.p612z.C10898b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.d0.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/d0/a.class */
public final class C10044a extends AbstractC21765k {

    /* renamed from: b */
    public final String f29883b = "InsightsBrandMonitoringWorkAction";

    /* renamed from: c */
    public final AbstractC9691j f29884c;

    /* renamed from: d */
    public final AbstractC10897a f29885d;

    @e(c = "com.truecaller.insights.workActions.InsightsBrandMonitoringWorkAction$execute$1", f = "InsightsBrandMonitoringWorkAction.kt", l = {25}, m = "invokeSuspend")
    /* renamed from: e.a.c.d0.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/d0/a$a.class */
    public static final class C10045a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29886e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10045a(d dVar) {
            super(2, dVar);
            C10044a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26786i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10045a(dVar);
        }

        /* renamed from: k */
        public final Object m26785k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10045a(dVar).m26784s(s.a);
        }

        /* renamed from: s */
        public final Object m26784s(Object obj) {
            a aVar = a.a;
            int i = this.f29886e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10897a abstractC10897a = C10044a.this.f29885d;
                this.f29886e = 1;
                if (((C10898b) abstractC10897a).m25515a(this) == aVar) {
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
    public C10044a(AbstractC9691j abstractC9691j, AbstractC10897a abstractC10897a) {
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10897a, "brandMonitoringUseCases");
        this.f29884c = abstractC9691j;
        this.f29885d = abstractC10897a;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C10045a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29883b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return this.f29884c.mo27239u();
    }
}
