package p193e.p194a.p437c.p534e0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p538g.AbstractC10159f;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.e0.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/e0/a.class */
public final class C10071a extends AbstractC21765k {

    /* renamed from: b */
    public final String f29956b = "InsightsReclassificationWorkAction";

    /* renamed from: c */
    public final a<AbstractC10159f> f29957c;

    /* renamed from: d */
    public final AbstractC9691j f29958d;

    @e(c = "com.truecaller.insights.workers.InsightsReclassificationWorkAction$execute$1", f = "InsightsReclassificationWorkAction.kt", l = {21}, m = "invokeSuspend")
    /* renamed from: e.a.c.e0.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/e0/a$a.class */
    public static final class C10072a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29959e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10072a(d dVar) {
            super(2, dVar);
            C10071a.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26717i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10072a(dVar);
        }

        /* renamed from: k */
        public final Object m26716k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10072a(dVar).m26715s(s.a);
        }

        /* renamed from: s */
        public final Object m26715s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f29959e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f29959e = 1;
                if (((AbstractC10159f) C10071a.this.f29957c.get()).mo26647f(this) == aVar) {
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
    public C10071a(a<AbstractC10159f> aVar, AbstractC9691j abstractC9691j) {
        l.e(aVar, "categorizerManager");
        l.e(abstractC9691j, "insightsStatusProvider");
        this.f29957c = aVar;
        this.f29958d = abstractC9691j;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C10072a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29956b;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        return ((AbstractC10159f) this.f29957c.get()).mo26648b() && this.f29958d.mo27236x();
    }
}
