package p193e.p194a.p437c.p552i.p569m;

import com.razorpay.AnalyticsConstants;
import com.truecaller.insights.workers.InsightsOneOffEnrichmentWorker;
import com.truecaller.insights.workers.InsightsReSyncWorker;
import com.truecaller.insights.workers.InsightsResyncEventLogWorker;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Named;
import p1727n3.p1834m0.AbstractC26854w;
import p1727n3.p1834m0.C26825d;
import p1727n3.p1834m0.C26829f;
import p1727n3.p1834m0.C26842r;
import p1727n3.p1834m0.EnumC26674a;
import p1727n3.p1834m0.EnumC26832h;
import p1727n3.p1834m0.EnumC26841q;
import p1727n3.p1834m0.p1835c0.C26702l;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1392y2.C21762h;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p524b.AbstractC9686e;
import p193e.p194a.p437c.p526c.p530f.AbstractC10009n;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import q3.a.i0;
import s1.a.c;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.c.i.m.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/i/m/g.class */
public final class C10436g implements AbstractC10435f {

    /* renamed from: a */
    public final AbstractC10028o f31088a;

    /* renamed from: b */
    public final AbstractC10009n f31089b;

    /* renamed from: c */
    public final AbstractC9686e f31090c;

    /* renamed from: d */
    public final f f31091d;

    @e(c = "com.truecaller.insights.core.sync.InsightsSyncStatusManagerImpl$resetSyncStatus$1", f = "InsightsSyncStatusManager.kt", l = {62}, m = "invokeSuspend")
    /* renamed from: e.a.c.i.m.g$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/i/m/g$a.class */
    public static final class C10437a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f31092e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10437a(d dVar) {
            super(2, dVar);
            C10436g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m26141i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10437a(dVar);
        }

        /* renamed from: k */
        public final Object m26140k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C10437a(dVar).m26139s(s.a);
        }

        /* renamed from: s */
        public final Object m26139s(Object obj) {
            a aVar = a.a;
            int i = this.f31092e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC10009n abstractC10009n = C10436g.this.f31089b;
                this.f31092e = 1;
                if (abstractC10009n.mo26920l("INSIGHTS.RESYNC", this) == aVar) {
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
    public C10436g(AbstractC10028o abstractC10028o, AbstractC10009n abstractC10009n, AbstractC9686e abstractC9686e, @Named("IO") f fVar) {
        l.e(abstractC10028o, "insightConfig");
        l.e(abstractC10009n, "stateUseCases");
        l.e(abstractC9686e, "environmentHelper");
        l.e(fVar, "coroutineContext");
        this.f31088a = abstractC10028o;
        this.f31089b = abstractC10009n;
        this.f31090c = abstractC9686e;
        this.f31091d = fVar;
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: a */
    public void mo26149a() {
        this.f31088a.mo26851c(0);
        s1.a.a.a.v0.f.d.b3(this.f31091d, new C10437a(null));
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: b */
    public void mo26148b() {
        this.f31088a.mo26851c(3);
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: c */
    public void mo26147c() {
        this.f31088a.mo26851c(4);
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: d */
    public boolean mo26146d() {
        return this.f31088a.mo26840h0() == 4 || this.f31088a.mo26840h0() == 5;
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: e */
    public void mo26145e() {
        this.f31088a.mo26851c(5);
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: f */
    public void mo26144f(String str) {
        EnumC26841q enumC26841q = EnumC26841q.NOT_REQUIRED;
        l.e(str, AnalyticsConstants.CONTEXT);
        l.e(str, AnalyticsConstants.CONTEXT);
        C26702l m1431n = C26702l.m1431n(AbstractApplicationC8442a.m28551L());
        l.d(m1431n, "WorkManager.getInstance(…icationBase.getAppBase())");
        EnumC26832h enumC26832h = EnumC26832h.REPLACE;
        C21762h c21762h = new C21762h(d0.a(InsightsReSyncWorker.class), w3.b.a.i.c(6L));
        c21762h.m9108f(enumC26841q);
        C26825d.C26826a c26826a = c21762h.f60602c;
        c26826a.f75069d = true;
        c26826a.f75067b = true;
        HashMap hashMap = new HashMap();
        hashMap.put("re_run_param_clean", Boolean.TRUE);
        hashMap.put("re_run_param_notify", Boolean.FALSE);
        hashMap.put("re_run_context", str);
        C26829f c26829f = new C26829f(hashMap);
        C26829f.m1300g(c26829f);
        l.d(c26829f, "data.build()");
        c21762h.m9109e(c26829f);
        AbstractC26854w m1287a = m1431n.m1287a("InsightsReSyncWorkerOneOff", enumC26832h, c21762h.m9113a());
        c a = d0.a(InsightsOneOffEnrichmentWorker.class);
        w3.b.a.i.c(6L);
        l.e(a, "workerClass");
        C26825d.C26826a c26826a2 = new C26825d.C26826a();
        l.e(enumC26841q, "networkType");
        c26826a2.f75068c = enumC26841q;
        c26826a2.f75069d = true;
        c26826a2.f75067b = true;
        C26842r.C26843a c26843a = new C26842r.C26843a(C25225a.m3983O0(a));
        c26843a.f75127c.f74911j = new C26825d(c26826a2);
        C26842r m1272b = c26843a.m1272b();
        l.d(m1272b, "OneTimeWorkRequest.Build…t) }\n            .build()");
        AbstractC26854w m1289b = m1287a.m1289b(m1272b);
        c a2 = d0.a(InsightsResyncEventLogWorker.class);
        w3.b.a.i.c(6L);
        l.e(a2, "workerClass");
        C26825d.C26826a c26826a3 = new C26825d.C26826a();
        w3.b.a.i a3 = w3.b.a.i.a(1L);
        l.d(a3, "Duration.standardDays(1)");
        l.e(a3, "interval");
        EnumC26674a enumC26674a = EnumC26674a.EXPONENTIAL;
        w3.b.a.i c = w3.b.a.i.c(1L);
        l.d(c, "Duration.standardHours(1)");
        l.e(enumC26674a, "backoffPolicy");
        l.e(c, "backoffDelay");
        c26826a3.f75066a = true;
        c26826a3.f75069d = true;
        C26842r.C26843a c26843a2 = new C26842r.C26843a(C25225a.m3983O0(a2));
        c26843a2.f75127c.f74911j = new C26825d(c26826a3);
        c26843a2.m1269e(enumC26674a, ((w3.b.a.e0.f) c).a, TimeUnit.MILLISECONDS);
        C26842r m1272b2 = c26843a2.m1272b();
        l.d(m1272b2, "OneTimeWorkRequest.Build…t) }\n            .build()");
        m1289b.m1289b(m1272b2).mo1290a();
        this.f31088a.mo26851c(1);
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: g */
    public boolean mo26143g() {
        int mo26840h0 = this.f31088a.mo26840h0();
        boolean z = true;
        if (mo26840h0 == 3) {
            boolean a = l.a(this.f31088a.mo26887A(), this.f31090c.mo27307f());
            this.f31088a.mo26870L(this.f31090c.mo27307f());
            return !a;
        }
        if (mo26840h0 != 0) {
            z = false;
        }
        return z;
    }

    @Override // p193e.p194a.p437c.p552i.p569m.AbstractC10435f
    /* renamed from: h */
    public void mo26142h() {
        if (this.f31088a.mo26840h0() == 3) {
            this.f31088a.mo26851c(6);
        } else {
            this.f31088a.mo26851c(2);
        }
    }
}
