package p193e.p194a.p437c.p552i.p569m;

import com.truecaller.insights.workers.InsightsReSyncWorker;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p526c.p528d.AbstractC9793c;
import p193e.p194a.p437c.p526c.p528d.AbstractC9800d0;
import q3.a.i0;
import q3.a.j0;
import q3.a.n0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.c.i.m.b */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/m/b.class */
public final class C10420b implements AbstractC10419a {

    /* renamed from: a */
    public final AbstractC9800d0 f31012a;

    /* renamed from: b */
    public final AbstractC8541a f31013b;

    /* renamed from: c */
    public final AbstractC9793c f31014c;

    /* renamed from: d */
    public final f f31015d;

    @e(c = "com.truecaller.insights.core.sync.InsightsSmsSyncManagerImpl$markDeletedRecords$1", f = "InsightsSmsSyncManager.kt", l = {33}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.m.b$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/m/b$a.class */
    public static final class C10421a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public /* synthetic */ Object f31016e;

        /* renamed from: f */
        public int f31017f;

        /* renamed from: h */
        public final /* synthetic */ Set f31019h;

        @e(c = "com.truecaller.insights.core.sync.InsightsSmsSyncManagerImpl$markDeletedRecords$1$1$1", f = "InsightsSmsSyncManager.kt", l = {32}, m = "invokeSuspend")
        /* renamed from: e.a.c.i.m.b$a$a */
        /* loaded from: classes10-dex2jar.jar:e/a/c/i/m/b$a$a.class */
        public static final class C10422a extends i implements p<i0, d<? super s>, Object> {

            /* renamed from: e */
            public int f31020e;

            /* renamed from: f */
            public final /* synthetic */ List f31021f;

            /* renamed from: g */
            public final /* synthetic */ C10421a f31022g;

            /* renamed from: h */
            public final /* synthetic */ i0 f31023h;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10422a(List list, d dVar, C10421a c10421a, i0 i0Var) {
                super(2, dVar);
                this.f31021f = list;
                this.f31022g = c10421a;
                this.f31023h = i0Var;
            }

            /* renamed from: i */
            public final d<s> m26177i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C10422a(this.f31021f, dVar, this.f31022g, this.f31023h);
            }

            /* renamed from: k */
            public final Object m26176k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                return new C10422a(this.f31021f, dVar, this.f31022g, this.f31023h).m26175s(s.a);
            }

            /* renamed from: s */
            public final Object m26175s(Object obj) {
                a aVar = a.a;
                int i = this.f31020e;
                if (i == 0) {
                    C25225a.m3932a3(obj);
                    C10420b c10420b = C10420b.this;
                    AbstractC9800d0 abstractC9800d0 = c10420b.f31012a;
                    List<Long> list = this.f31021f;
                    AbstractC9793c abstractC9793c = c10420b.f31014c;
                    this.f31020e = 1;
                    if (abstractC9800d0.mo27117d(list, abstractC9793c, this) == aVar) {
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

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10421a(Set set, d dVar) {
            super(2, dVar);
            C10420b.this = r5;
            this.f31019h = set;
        }

        /* renamed from: i */
        public final d<s> m26180i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            C10421a c10421a = new C10421a(this.f31019h, dVar);
            c10421a.f31016e = obj;
            return c10421a;
        }

        /* renamed from: k */
        public final Object m26179k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10421a c10421a = new C10421a(this.f31019h, dVar);
            c10421a.f31016e = obj;
            return c10421a.m26178s(s.a);
        }

        /* renamed from: s */
        public final Object m26178s(Object obj) {
            Iterator it;
            a aVar = a.a;
            int i = this.f31017f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                i0 i0Var = (i0) this.f31016e;
                List k = s1.u.i.k(this.f31019h, 50);
                ArrayList arrayList = new ArrayList(C25225a.m4004J(k, 10));
                Iterator it2 = ((ArrayList) k).iterator();
                while (it2.hasNext()) {
                    arrayList.add(s1.a.a.a.v0.f.d.H(i0Var, i0Var.getCoroutineContext(), (j0) null, new C10422a((List) it2.next(), null, this, i0Var), 2, (Object) null));
                }
                it = arrayList.iterator();
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
                it = (Iterator) this.f31016e;
            }
            while (it.hasNext()) {
                this.f31016e = it;
                this.f31017f = 1;
                if (((n0) it.next()).s(this) == aVar) {
                    return aVar;
                }
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.insights.core.sync.InsightsSmsSyncManagerImpl$onMessageCategoryChanged$2", f = "InsightsSmsSyncManager.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.m.b$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/m/b$b.class */
    public static final class C10423b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ List f31025f;

        /* renamed from: g */
        public final /* synthetic */ int f31026g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10423b(List list, int i, d dVar) {
            super(2, dVar);
            C10420b.this = r5;
            this.f31025f = list;
            this.f31026g = i;
        }

        /* renamed from: i */
        public final d<s> m26174i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10423b(this.f31025f, this.f31026g, dVar);
        }

        /* renamed from: k */
        public final Object m26173k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10420b c10420b = C10420b.this;
            List<Long> list = this.f31025f;
            int i = this.f31026g;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c10420b.f31012a.mo27097n0(list, c10420b.f31012a.mo27093r(list), i);
            c10420b.f31012a.mo27099m0(list, i);
            return sVar;
        }

        /* renamed from: s */
        public final Object m26172s(Object obj) {
            C25225a.m3932a3(obj);
            C10420b.this.f31012a.mo27097n0(this.f31025f, C10420b.this.f31012a.mo27093r(this.f31025f), this.f31026g);
            C10420b.this.f31012a.mo27099m0(this.f31025f, this.f31026g);
            return s.a;
        }
    }

    @Inject
    public C10420b(AbstractC9800d0 abstractC9800d0, AbstractC8541a abstractC8541a, AbstractC9793c abstractC9793c, @Named("IO") f fVar) {
        l.e(abstractC9800d0, "pdoDao");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC9793c, "accountModelDao");
        l.e(fVar, "coroutineContext");
        this.f31012a = abstractC9800d0;
        this.f31013b = abstractC8541a;
        this.f31014c = abstractC9793c;
        this.f31015d = fVar;
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10419a
    /* renamed from: a */
    public void mo26183a() {
        if (!this.f31013b.getBoolean("deleteBackupDuplicates", false)) {
            return;
        }
        InsightsReSyncWorker.C4131a.m35138c(InsightsReSyncWorker.f12965g, "re_run_context_restore", false, true, 2);
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10419a
    /* renamed from: b */
    public Object mo26182b(List<Long> list, int i, d<? super s> dVar) {
        Object a4 = s1.a.a.a.v0.f.d.a4(this.f31015d, new C10423b(list, i, null), dVar);
        return a4 == a.a ? a4 : s.a;
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10419a
    /* renamed from: c */
    public void mo26181c(Set<Long> set) {
        l.e(set, "messageIds");
        s1.a.a.a.v0.f.d.b3(this.f31015d, new C10421a(set, null));
    }
}
