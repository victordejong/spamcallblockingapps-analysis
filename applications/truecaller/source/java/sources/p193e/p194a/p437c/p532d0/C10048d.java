package p193e.p194a.p437c.p532d0;

import androidx.work.ListenableWorker;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.AbstractC21765k;
import p193e.p194a.p437c.p524b.AbstractC9687f;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.d0.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/d0/d.class */
public final class C10048d extends AbstractC21765k {
    @Inject

    /* renamed from: b */
    public AbstractC9691j f29894b;

    /* renamed from: c */
    public final String f29895c = "InsightsFeatureRegistryWorkAction";

    /* renamed from: d */
    public final AbstractC9687f f29896d;

    @e(c = "com.truecaller.insights.workActions.InsightsFeatureRegistryWorkAction$execute$1", f = "InsightsFeatureRegistryWorkAction.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: e.a.c.d0.d$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/d0/d$a.class */
    public static final class C10049a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f29897e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10049a(d dVar) {
            super(2, dVar);
            C10048d.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26783i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10049a(dVar);
        }

        /* renamed from: k */
        public final Object m26782k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10049a(dVar).m26781s(s.a);
        }

        /* renamed from: s */
        public final Object m26781s(Object obj) {
            a aVar = a.a;
            int i = this.f29897e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC9687f abstractC9687f = C10048d.this.f29896d;
                this.f29897e = 1;
                if (abstractC9687f.mo27303c(this) == aVar) {
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
    public C10048d(AbstractC9687f abstractC9687f) {
        l.e(abstractC9687f, "insightsFeatureControl");
        this.f29896d = abstractC9687f;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: a */
    public ListenableWorker.AbstractC0414a mo9063a() {
        s1.a.a.a.v0.f.d.c3((f) null, new C10049a(null), 1, (Object) null);
        ListenableWorker.AbstractC0414a.C0417c c0417c = new ListenableWorker.AbstractC0414a.C0417c();
        l.d(c0417c, "ListenableWorker.Result.success()");
        return c0417c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: b */
    public String mo9062b() {
        return this.f29895c;
    }

    @Override // p193e.p194a.p1392y2.AbstractC21765k
    /* renamed from: c */
    public boolean mo9061c() {
        AbstractC9691j abstractC9691j = this.f29894b;
        if (abstractC9691j != null) {
            return abstractC9691j.mo27283L();
        }
        l.l("insightsStatusProvider");
        throw null;
    }
}
