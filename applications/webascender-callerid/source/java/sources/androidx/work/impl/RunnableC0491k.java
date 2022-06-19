package androidx.work.impl;

import android.content.Context;
import androidx.work.AbstractC0539k;
import androidx.work.AbstractC0541m;
import androidx.work.AbstractC0554y;
import androidx.work.C0467b;
import androidx.work.C0474e;
import androidx.work.EnumC0550v;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.AbstractC0488a;
import androidx.work.impl.p015n.AbstractC0504b;
import androidx.work.impl.p015n.AbstractC0515q;
import androidx.work.impl.p015n.AbstractC0517t;
import androidx.work.impl.p015n.C0513p;
import androidx.work.impl.utils.k;
import androidx.work.impl.utils.l;
import androidx.work.impl.utils.n.c;
import androidx.work.impl.utils.p017o.AbstractC0537a;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.k */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/k.class */
public class RunnableC0491k implements Runnable {

    /* renamed from: y */
    static final String f2523y = AbstractC0541m.m4305f("WorkerWrapper");

    /* renamed from: f */
    Context f2524f;

    /* renamed from: g */
    private String f2525g;

    /* renamed from: h */
    private List<AbstractC0486e> f2526h;

    /* renamed from: i */
    private WorkerParameters.C0465a f2527i;

    /* renamed from: j */
    C0513p f2528j;

    /* renamed from: k */
    ListenableWorker f2529k;

    /* renamed from: m */
    private C0467b f2531m;

    /* renamed from: n */
    private AbstractC0537a f2532n;

    /* renamed from: o */
    private AbstractC0488a f2533o;

    /* renamed from: p */
    private WorkDatabase f2534p;

    /* renamed from: q */
    private AbstractC0515q f2535q;

    /* renamed from: r */
    private AbstractC0504b f2536r;

    /* renamed from: s */
    private AbstractC0517t f2537s;

    /* renamed from: t */
    private List<String> f2538t;

    /* renamed from: u */
    private String f2539u;

    /* renamed from: x */
    private volatile boolean f2542x;

    /* renamed from: l */
    ListenableWorker.AbstractC0464a f2530l = ListenableWorker.AbstractC0464a.m4559a();

    /* renamed from: v */
    c<Boolean> f2540v = c.t();

    /* renamed from: w */
    com.google.common.util.concurrent.c<ListenableWorker.AbstractC0464a> f2541w = null;

    /* renamed from: androidx.work.impl.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$a.class */
    public class RunnableC0492a implements Runnable {

        /* renamed from: f */
        final /* synthetic */ c f2543f;

        RunnableC0492a(c cVar) {
            RunnableC0491k.this = r4;
            this.f2543f = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                AbstractC0541m.m4308c().m4310a(RunnableC0491k.f2523y, String.format("Starting work for %s", RunnableC0491k.this.f2528j.f2596c), new Throwable[0]);
                RunnableC0491k runnableC0491k = RunnableC0491k.this;
                runnableC0491k.f2541w = runnableC0491k.f2529k.m4561n();
                this.f2543f.r(RunnableC0491k.this.f2541w);
            } catch (Throwable th) {
                this.f2543f.q(th);
            }
        }
    }

    /* renamed from: androidx.work.impl.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$b.class */
    public class RunnableC0493b implements Runnable {

        /* renamed from: f */
        final /* synthetic */ c f2545f;

        /* renamed from: g */
        final /* synthetic */ String f2546g;

        RunnableC0493b(c cVar, String str) {
            RunnableC0491k.this = r4;
            this.f2545f = cVar;
            this.f2546g = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            Throwable e;
            try {
                try {
                    ListenableWorker.AbstractC0464a abstractC0464a = (ListenableWorker.AbstractC0464a) this.f2545f.get();
                    if (abstractC0464a == null) {
                        AbstractC0541m.m4308c().m4309b(RunnableC0491k.f2523y, String.format("%s returned a null result. Treating it as a failure.", RunnableC0491k.this.f2528j.f2596c), new Throwable[0]);
                    } else {
                        AbstractC0541m.m4308c().m4310a(RunnableC0491k.f2523y, String.format("%s returned a %s result.", RunnableC0491k.this.f2528j.f2596c, abstractC0464a), new Throwable[0]);
                        RunnableC0491k.this.f2530l = abstractC0464a;
                    }
                } catch (InterruptedException e2) {
                    e = e2;
                    AbstractC0541m.m4308c().m4309b(RunnableC0491k.f2523y, String.format("%s failed because it threw an exception/error", this.f2546g), e);
                } catch (CancellationException e3) {
                    AbstractC0541m.m4308c().m4307d(RunnableC0491k.f2523y, String.format("%s was cancelled", this.f2546g), e3);
                } catch (ExecutionException e4) {
                    e = e4;
                    AbstractC0541m.m4308c().m4309b(RunnableC0491k.f2523y, String.format("%s failed because it threw an exception/error", this.f2546g), e);
                }
            } finally {
                RunnableC0491k.this.m4456f();
            }
        }
    }

    /* renamed from: androidx.work.impl.k$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/k$c.class */
    public static class C0494c {

        /* renamed from: a */
        Context f2548a;

        /* renamed from: b */
        ListenableWorker f2549b;

        /* renamed from: c */
        AbstractC0488a f2550c;

        /* renamed from: d */
        AbstractC0537a f2551d;

        /* renamed from: e */
        C0467b f2552e;

        /* renamed from: f */
        WorkDatabase f2553f;

        /* renamed from: g */
        String f2554g;

        /* renamed from: h */
        List<AbstractC0486e> f2555h;

        /* renamed from: i */
        WorkerParameters.C0465a f2556i = new WorkerParameters.C0465a();

        public C0494c(Context context, C0467b c0467b, AbstractC0537a abstractC0537a, AbstractC0488a abstractC0488a, WorkDatabase workDatabase, String str) {
            this.f2548a = context.getApplicationContext();
            this.f2551d = abstractC0537a;
            this.f2550c = abstractC0488a;
            this.f2552e = c0467b;
            this.f2553f = workDatabase;
            this.f2554g = str;
        }

        /* renamed from: a */
        public RunnableC0491k m4446a() {
            return new RunnableC0491k(this);
        }

        /* renamed from: b */
        public C0494c m4445b(WorkerParameters.C0465a c0465a) {
            if (c0465a != null) {
                this.f2556i = c0465a;
            }
            return this;
        }

        /* renamed from: c */
        public C0494c m4444c(List<AbstractC0486e> list) {
            this.f2555h = list;
            return this;
        }
    }

    RunnableC0491k(C0494c c0494c) {
        this.f2524f = c0494c.f2548a;
        this.f2532n = c0494c.f2551d;
        this.f2533o = c0494c.f2550c;
        this.f2525g = c0494c.f2554g;
        this.f2526h = c0494c.f2555h;
        this.f2527i = c0494c.f2556i;
        this.f2529k = c0494c.f2549b;
        this.f2531m = c0494c.f2552e;
        WorkDatabase workDatabase = c0494c.f2553f;
        this.f2534p = workDatabase;
        this.f2535q = workDatabase.B();
        this.f2536r = this.f2534p.t();
        this.f2537s = this.f2534p.C();
    }

    /* renamed from: a */
    private String m4461a(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.f2525g);
        sb.append(", tags={ ");
        boolean z = true;
        for (String str : list) {
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            sb.append(str);
        }
        sb.append(" } ]");
        return sb.toString();
    }

    /* renamed from: c */
    private void m4459c(ListenableWorker.AbstractC0464a abstractC0464a) {
        if (abstractC0464a instanceof ListenableWorker.AbstractC0464a.c) {
            AbstractC0541m.m4308c().m4307d(f2523y, String.format("Worker result SUCCESS for %s", this.f2539u), new Throwable[0]);
            if (this.f2528j.m4404d()) {
                m4454h();
            } else {
                m4449m();
            }
        } else if (abstractC0464a instanceof ListenableWorker.AbstractC0464a.b) {
            AbstractC0541m.m4308c().m4307d(f2523y, String.format("Worker result RETRY for %s", this.f2539u), new Throwable[0]);
            m4455g();
        } else {
            AbstractC0541m.m4308c().m4307d(f2523y, String.format("Worker result FAILURE for %s", this.f2539u), new Throwable[0]);
            if (this.f2528j.m4404d()) {
                m4454h();
            } else {
                m4450l();
            }
        }
    }

    /* renamed from: e */
    private void m4457e(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (this.f2535q.m4389m(str2) != EnumC0550v.CANCELLED) {
                this.f2535q.m4400b(EnumC0550v.FAILED, str2);
            }
            linkedList.addAll(this.f2536r.m4420b(str2));
        }
    }

    /* renamed from: g */
    private void m4455g() {
        this.f2534p.m4811c();
        try {
            this.f2535q.m4400b(EnumC0550v.ENQUEUED, this.f2525g);
            this.f2535q.m4383s(this.f2525g, System.currentTimeMillis());
            this.f2535q.m4399c(this.f2525g, -1L);
            this.f2534p.m4796r();
        } finally {
            this.f2534p.m4807g();
            m4453i(true);
        }
    }

    /* renamed from: h */
    private void m4454h() {
        this.f2534p.m4811c();
        try {
            this.f2535q.m4383s(this.f2525g, System.currentTimeMillis());
            this.f2535q.m4400b(EnumC0550v.ENQUEUED, this.f2525g);
            this.f2535q.m4387o(this.f2525g);
            this.f2535q.m4399c(this.f2525g, -1L);
            this.f2534p.m4796r();
        } finally {
            this.f2534p.m4807g();
            m4453i(false);
        }
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x002f A[Catch: all -> 0x00a6, TRY_ENTER, TryCatch #0 {all -> 0x00a6, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003e, B:17:0x0068, B:19:0x006e, B:21:0x0077, B:23:0x007e, B:25:0x008c), top: B:31:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003e A[Catch: all -> 0x00a6, TRY_ENTER, TryCatch #0 {all -> 0x00a6, blocks: (B:3:0x0007, B:5:0x0018, B:12:0x002f, B:15:0x003e, B:17:0x0068, B:19:0x006e, B:21:0x0077, B:23:0x007e, B:25:0x008c), top: B:31:0x0007 }] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m4453i(boolean r8) {
        /*
            r7 = this;
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f2534p
            r0.m4811c()
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f2534p     // Catch: java.lang.Throwable -> La6
            androidx.work.impl.n.q r0 = r0.B()     // Catch: java.lang.Throwable -> La6
            java.util.List r0 = r0.m4391k()     // Catch: java.lang.Throwable -> La6
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L29
            r0 = r9
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L24
            goto L29
        L24:
            r0 = 0
            r10 = r0
            goto L2b
        L29:
            r0 = 1
            r10 = r0
        L2b:
            r0 = r10
            if (r0 == 0) goto L3a
            r0 = r7
            android.content.Context r0 = r0.f2524f     // Catch: java.lang.Throwable -> La6
            java.lang.Class<androidx.work.impl.background.systemalarm.RescheduleReceiver> r1 = androidx.work.impl.background.systemalarm.RescheduleReceiver.class
            r2 = 0
            androidx.work.impl.utils.C0523d.m4340a(r0, r1, r2)     // Catch: java.lang.Throwable -> La6
        L3a:
            r0 = r8
            if (r0 == 0) goto L67
            r0 = r7
            androidx.work.impl.n.q r0 = r0.f2535q     // Catch: java.lang.Throwable -> La6
            androidx.work.v r1 = androidx.work.EnumC0550v.ENQUEUED     // Catch: java.lang.Throwable -> La6
            r2 = 1
            java.lang.String[] r2 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> La6
            r3 = r2
            r4 = 0
            r5 = r7
            java.lang.String r5 = r5.f2525g     // Catch: java.lang.Throwable -> La6
            r3[r4] = r5     // Catch: java.lang.Throwable -> La6
            int r0 = r0.m4400b(r1, r2)     // Catch: java.lang.Throwable -> La6
            r0 = r7
            androidx.work.impl.n.q r0 = r0.f2535q     // Catch: java.lang.Throwable -> La6
            r1 = r7
            java.lang.String r1 = r1.f2525g     // Catch: java.lang.Throwable -> La6
            r2 = -1
            int r0 = r0.m4399c(r1, r2)     // Catch: java.lang.Throwable -> La6
        L67:
            r0 = r7
            androidx.work.impl.n.p r0 = r0.f2528j     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L8b
            r0 = r7
            androidx.work.ListenableWorker r0 = r0.f2529k     // Catch: java.lang.Throwable -> La6
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L8b
            r0 = r9
            boolean r0 = r0.m4566i()     // Catch: java.lang.Throwable -> La6
            if (r0 == 0) goto L8b
            r0 = r7
            androidx.work.impl.foreground.a r0 = r0.f2533o     // Catch: java.lang.Throwable -> La6
            r1 = r7
            java.lang.String r1 = r1.f2525g     // Catch: java.lang.Throwable -> La6
            r0.m4471a(r1)     // Catch: java.lang.Throwable -> La6
        L8b:
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f2534p     // Catch: java.lang.Throwable -> La6
            r0.m4796r()     // Catch: java.lang.Throwable -> La6
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f2534p
            r0.m4807g()
            r0 = r7
            androidx.work.impl.utils.n.c<java.lang.Boolean> r0 = r0.f2540v
            r1 = r8
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)
            boolean r0 = r0.p(r1)
            return
        La6:
            r9 = move-exception
            r0 = r7
            androidx.work.impl.WorkDatabase r0 = r0.f2534p
            r0.m4807g()
            r0 = r9
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.RunnableC0491k.m4453i(boolean):void");
    }

    /* renamed from: j */
    private void m4452j() {
        EnumC0550v m4389m = this.f2535q.m4389m(this.f2525g);
        if (m4389m == EnumC0550v.RUNNING) {
            AbstractC0541m.m4308c().m4310a(f2523y, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f2525g), new Throwable[0]);
            m4453i(true);
            return;
        }
        AbstractC0541m.m4308c().m4310a(f2523y, String.format("Status for %s is %s; not doing any work", this.f2525g, m4389m), new Throwable[0]);
        m4453i(false);
    }

    /* renamed from: k */
    private void m4451k() {
        C0474e c0474e;
        if (m4448n()) {
            return;
        }
        this.f2534p.m4811c();
        try {
            C0513p m4388n = this.f2535q.m4388n(this.f2525g);
            this.f2528j = m4388n;
            if (m4388n == null) {
                AbstractC0541m.m4308c().m4309b(f2523y, String.format("Didn't find WorkSpec for id %s", this.f2525g), new Throwable[0]);
                m4453i(false);
                this.f2534p.m4796r();
            } else if (m4388n.f2595b != EnumC0550v.ENQUEUED) {
                m4452j();
                this.f2534p.m4796r();
                AbstractC0541m.m4308c().m4310a(f2523y, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.f2528j.f2596c), new Throwable[0]);
            } else {
                if (m4388n.m4404d() || this.f2528j.m4405c()) {
                    long currentTimeMillis = System.currentTimeMillis();
                    C0513p c0513p = this.f2528j;
                    if (!(c0513p.f2607n == 0) && currentTimeMillis < c0513p.m4407a()) {
                        AbstractC0541m.m4308c().m4310a(f2523y, String.format("Delaying execution for %s because it is being executed before schedule.", this.f2528j.f2596c), new Throwable[0]);
                        m4453i(true);
                        this.f2534p.m4796r();
                        return;
                    }
                }
                this.f2534p.m4796r();
                this.f2534p.m4807g();
                if (this.f2528j.m4404d()) {
                    c0474e = this.f2528j.f2598e;
                } else {
                    AbstractC0539k m4312b = this.f2531m.m4546e().m4312b(this.f2528j.f2597d);
                    if (m4312b == null) {
                        AbstractC0541m.m4308c().m4309b(f2523y, String.format("Could not create Input Merger %s", this.f2528j.f2597d), new Throwable[0]);
                        m4450l();
                        return;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(this.f2528j.f2598e);
                    arrayList.addAll(this.f2535q.m4385q(this.f2525g));
                    c0474e = m4312b.m4314b(arrayList);
                }
                UUID fromString = UUID.fromString(this.f2525g);
                List<String> list = this.f2538t;
                WorkerParameters.C0465a c0465a = this.f2527i;
                int i = this.f2528j.f2604k;
                Executor m4547d = this.f2531m.m4547d();
                AbstractC0537a abstractC0537a = this.f2532n;
                AbstractC0554y m4539l = this.f2531m.m4539l();
                WorkDatabase workDatabase = this.f2534p;
                AbstractC0537a abstractC0537a2 = this.f2532n;
                WorkerParameters workerParameters = new WorkerParameters(fromString, c0474e, list, c0465a, i, m4547d, abstractC0537a, m4539l, new l(workDatabase, abstractC0537a2), new k(workDatabase, this.f2533o, abstractC0537a2));
                if (this.f2529k == null) {
                    this.f2529k = this.f2531m.m4539l().m4278b(this.f2524f, this.f2528j.f2596c, workerParameters);
                }
                ListenableWorker listenableWorker = this.f2529k;
                if (listenableWorker == null) {
                    AbstractC0541m.m4308c().m4309b(f2523y, String.format("Could not create Worker %s", this.f2528j.f2596c), new Throwable[0]);
                    m4450l();
                } else if (listenableWorker.m4564k()) {
                    AbstractC0541m.m4308c().m4309b(f2523y, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.f2528j.f2596c), new Throwable[0]);
                    m4450l();
                } else {
                    this.f2529k.m4562m();
                    if (!m4447o()) {
                        m4452j();
                    } else if (m4448n()) {
                    } else {
                        c t = c.t();
                        this.f2532n.m4319a().execute(new RunnableC0492a(t));
                        t.c(new RunnableC0493b(t, this.f2539u), this.f2532n.m4317c());
                    }
                }
            }
        } finally {
            this.f2534p.m4807g();
        }
    }

    /* renamed from: m */
    private void m4449m() {
        this.f2534p.m4811c();
        try {
            this.f2535q.m4400b(EnumC0550v.SUCCEEDED, this.f2525g);
            this.f2535q.m4393i(this.f2525g, this.f2530l.e());
            long currentTimeMillis = System.currentTimeMillis();
            for (String str : this.f2536r.m4420b(this.f2525g)) {
                if (this.f2535q.m4389m(str) == EnumC0550v.BLOCKED && this.f2536r.m4419c(str)) {
                    AbstractC0541m.m4308c().m4307d(f2523y, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    this.f2535q.m4400b(EnumC0550v.ENQUEUED, str);
                    this.f2535q.m4383s(str, currentTimeMillis);
                }
            }
            this.f2534p.m4796r();
        } finally {
            this.f2534p.m4807g();
            m4453i(false);
        }
    }

    /* renamed from: n */
    private boolean m4448n() {
        if (this.f2542x) {
            AbstractC0541m.m4308c().m4310a(f2523y, String.format("Work interrupted for %s", this.f2539u), new Throwable[0]);
            EnumC0550v m4389m = this.f2535q.m4389m(this.f2525g);
            if (m4389m == null) {
                m4453i(false);
                return true;
            }
            m4453i(!m4389m.isFinished());
            return true;
        }
        return false;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: o */
    private boolean m4447o() {
        this.f2534p.m4811c();
        try {
            boolean z = true;
            if (this.f2535q.m4389m(this.f2525g) == EnumC0550v.ENQUEUED) {
                this.f2535q.m4400b(EnumC0550v.RUNNING, this.f2525g);
                this.f2535q.m4384r(this.f2525g);
            } else {
                z = false;
            }
            this.f2534p.m4796r();
            this.f2534p.m4807g();
            return z;
        } catch (Throwable th) {
            this.f2534p.m4807g();
            throw th;
        }
    }

    /* renamed from: b */
    public com.google.common.util.concurrent.c<Boolean> m4460b() {
        return this.f2540v;
    }

    /* renamed from: d */
    public void m4458d() {
        boolean z;
        this.f2542x = true;
        m4448n();
        com.google.common.util.concurrent.c<ListenableWorker.AbstractC0464a> cVar = this.f2541w;
        if (cVar != null) {
            z = cVar.isDone();
            this.f2541w.cancel(true);
        } else {
            z = false;
        }
        ListenableWorker listenableWorker = this.f2529k;
        if (listenableWorker == null || z) {
            AbstractC0541m.m4308c().m4310a(f2523y, String.format("WorkSpec %s is already done. Not interrupting.", this.f2528j), new Throwable[0]);
        } else {
            listenableWorker.m4560o();
        }
    }

    /* renamed from: f */
    void m4456f() {
        if (!m4448n()) {
            this.f2534p.m4811c();
            try {
                EnumC0550v m4389m = this.f2535q.m4389m(this.f2525g);
                this.f2534p.A().m4409a(this.f2525g);
                if (m4389m == null) {
                    m4453i(false);
                } else if (m4389m == EnumC0550v.RUNNING) {
                    m4459c(this.f2530l);
                } else if (!m4389m.isFinished()) {
                    m4455g();
                }
                this.f2534p.m4796r();
            } finally {
                this.f2534p.m4807g();
            }
        }
        List<AbstractC0486e> list = this.f2526h;
        if (list != null) {
            for (AbstractC0486e abstractC0486e : list) {
                abstractC0486e.m4475e(this.f2525g);
            }
            C0487f.m4473b(this.f2531m, this.f2534p, this.f2526h);
        }
    }

    /* renamed from: l */
    void m4450l() {
        this.f2534p.m4811c();
        try {
            m4457e(this.f2525g);
            this.f2535q.m4393i(this.f2525g, this.f2530l.e());
            this.f2534p.m4796r();
        } finally {
            this.f2534p.m4807g();
            m4453i(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        List<String> m4379b = this.f2537s.m4379b(this.f2525g);
        this.f2538t = m4379b;
        this.f2539u = m4461a(m4379b);
        m4451k();
    }
}
