package com.applovin.impl.sdk.p491d;

import java.lang.Thread;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2384d;
import p131c.p135b.p136a.p148e.p153y.C2388g;
/* renamed from: com.applovin.impl.sdk.d.s */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/s.class */
public class C7048s {

    /* renamed from: a */
    public final C2341l f21728a;

    /* renamed from: b */
    public final C2374t f21729b;

    /* renamed from: t */
    public final ScheduledThreadPoolExecutor f21747t;

    /* renamed from: u */
    public final ScheduledThreadPoolExecutor f21748u;

    /* renamed from: v */
    public final ScheduledThreadPoolExecutor f21749v;

    /* renamed from: y */
    public boolean f21752y;

    /* renamed from: w */
    public final List<RunnableC7053d> f21750w = new ArrayList(5);

    /* renamed from: x */
    public final Object f21751x = new Object();

    /* renamed from: c */
    public final ScheduledThreadPoolExecutor f21730c = m18818a("main");

    /* renamed from: d */
    public final ScheduledThreadPoolExecutor f21731d = m18818a("timeout");

    /* renamed from: e */
    public final ScheduledThreadPoolExecutor f21732e = m18818a("back");

    /* renamed from: f */
    public final ScheduledThreadPoolExecutor f21733f = m18818a("advertising_info_collection");

    /* renamed from: g */
    public final ScheduledThreadPoolExecutor f21734g = m18818a("postbacks");

    /* renamed from: h */
    public final ScheduledThreadPoolExecutor f21735h = m18818a("caching_interstitial");

    /* renamed from: i */
    public final ScheduledThreadPoolExecutor f21736i = m18818a("caching_incentivized");

    /* renamed from: j */
    public final ScheduledThreadPoolExecutor f21737j = m18818a("caching_other");

    /* renamed from: k */
    public final ScheduledThreadPoolExecutor f21738k = m18818a("reward");

    /* renamed from: l */
    public final ScheduledThreadPoolExecutor f21739l = m18818a("mediation_main");

    /* renamed from: m */
    public final ScheduledThreadPoolExecutor f21740m = m18818a("mediation_timeout");

    /* renamed from: n */
    public final ScheduledThreadPoolExecutor f21741n = m18818a("mediation_background");

    /* renamed from: o */
    public final ScheduledThreadPoolExecutor f21742o = m18818a("mediation_postbacks");

    /* renamed from: p */
    public final ScheduledThreadPoolExecutor f21743p = m18818a("mediation_banner");

    /* renamed from: q */
    public final ScheduledThreadPoolExecutor f21744q = m18818a("mediation_interstitial");

    /* renamed from: r */
    public final ScheduledThreadPoolExecutor f21745r = m18818a("mediation_incentivized");

    /* renamed from: s */
    public final ScheduledThreadPoolExecutor f21746s = m18818a("mediation_reward");

    /* renamed from: com.applovin.impl.sdk.d.s$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/s$a.class */
    public enum EnumC7049a {
        MAIN,
        TIMEOUT,
        BACKGROUND,
        ADVERTISING_INFO_COLLECTION,
        POSTBACKS,
        CACHING_INTERSTITIAL,
        CACHING_INCENTIVIZED,
        CACHING_OTHER,
        REWARD,
        MEDIATION_MAIN,
        MEDIATION_TIMEOUT,
        MEDIATION_BACKGROUND,
        MEDIATION_POSTBACKS,
        MEDIATION_BANNER,
        MEDIATION_INTERSTITIAL,
        MEDIATION_INCENTIVIZED,
        MEDIATION_REWARD
    }

    /* renamed from: com.applovin.impl.sdk.d.s$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/s$b.class */
    public class RunnableC7050b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ScheduledExecutorService f21771a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f21772b;

        public RunnableC7050b(C7048s sVar, ScheduledExecutorService scheduledExecutorService, Runnable runnable) {
            this.f21771a = scheduledExecutorService;
            this.f21772b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f21771a.execute(this.f21772b);
        }
    }

    /* renamed from: com.applovin.impl.sdk.d.s$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/s$c.class */
    public class ThreadFactoryC7051c implements ThreadFactory {

        /* renamed from: a */
        public final String f21773a;

        /* renamed from: com.applovin.impl.sdk.d.s$c$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/s$c$a.class */
        public class C7052a implements Thread.UncaughtExceptionHandler {
            public C7052a() {
            }

            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                C7048s.this.f21729b.m30043b("TaskManager", "Caught unhandled exception", th);
            }
        }

        public ThreadFactoryC7051c(String str) {
            this.f21773a = str;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "AppLovinSdk:" + this.f21773a + ":" + AbstractC2426r.m29805a(C7048s.this.f21728a.m30269b0()));
            thread.setDaemon(true);
            thread.setPriority(10);
            thread.setUncaughtExceptionHandler(new C7052a());
            return thread;
        }
    }

    /* renamed from: com.applovin.impl.sdk.d.s$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/d/s$d.class */
    public class RunnableC7053d implements Runnable {

        /* renamed from: a */
        public final String f21776a;

        /* renamed from: b */
        public final C2270g.AbstractRunnableC2278c f21777b;

        /* renamed from: c */
        public final EnumC7049a f21778c;

        public RunnableC7053d(C2270g.AbstractRunnableC2278c cVar, EnumC7049a aVar) {
            this.f21776a = cVar.m30489b();
            this.f21777b = cVar;
            this.f21778c = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            StringBuilder sb;
            C2374t tVar;
            long j;
            long currentTimeMillis = System.currentTimeMillis();
            try {
                C2388g.m29976a();
            } catch (Throwable th) {
                try {
                    C7048s.this.f21729b.m30043b(this.f21777b.m30489b(), "Task failed execution", th);
                    j = C7048s.this.m18823a(this.f21778c) - 1;
                    tVar = C7048s.this.f21729b;
                    sb = new StringBuilder();
                } catch (Throwable th2) {
                    long a = C7048s.this.m18823a(this.f21778c);
                    C2374t tVar2 = C7048s.this.f21729b;
                    tVar2.m30042c("TaskManager", this.f21778c + " queue finished task " + this.f21777b.m30489b() + " with queue size " + (a - 1));
                    throw th2;
                }
            }
            if (C7048s.this.f21728a.m30311K() && !this.f21777b.m30485d()) {
                C7048s.this.f21729b.m30042c(this.f21776a, "Task re-scheduled...");
                C7048s.this.m18825a(this.f21777b, this.f21778c, 2000L);
                j = C7048s.this.m18823a(this.f21778c) - 1;
                tVar = C7048s.this.f21729b;
                sb = new StringBuilder();
                sb.append(this.f21778c);
                sb.append(" queue finished task ");
                sb.append(this.f21777b.m30489b());
                sb.append(" with queue size ");
                sb.append(j);
                tVar.m30042c("TaskManager", sb.toString());
            }
            C7048s.this.f21729b.m30042c(this.f21776a, "Task started execution...");
            this.f21777b.run();
            long currentTimeMillis2 = System.currentTimeMillis();
            C2374t tVar3 = C7048s.this.f21729b;
            String str = this.f21776a;
            tVar3.m30042c(str, "Task finished executing in " + (currentTimeMillis2 - currentTimeMillis) + " ms...");
            j = C7048s.this.m18823a(this.f21778c) - 1;
            tVar = C7048s.this.f21729b;
            sb = new StringBuilder();
            sb.append(this.f21778c);
            sb.append(" queue finished task ");
            sb.append(this.f21777b.m30489b());
            sb.append(" with queue size ");
            sb.append(j);
            tVar.m30042c("TaskManager", sb.toString());
        }
    }

    public C7048s(C2341l lVar) {
        this.f21728a = lVar;
        this.f21729b = lVar.m30262d0();
        this.f21747t = m18817a("auxiliary_operations", ((Integer) lVar.m30291a(C2251d.C2256e.f8764w1)).intValue());
        this.f21748u = m18817a("caching_operations", ((Integer) lVar.m30291a(C2251d.C2256e.f8769x1)).intValue());
        this.f21749v = m18817a("shared_thread_pool", ((Integer) lVar.m30291a(C2251d.C2256e.f8762w)).intValue());
    }

    /* renamed from: a */
    public final long m18823a(EnumC7049a aVar) {
        long taskCount;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        if (aVar == EnumC7049a.MAIN) {
            taskCount = this.f21730c.getTaskCount();
            scheduledThreadPoolExecutor = this.f21730c;
        } else if (aVar == EnumC7049a.TIMEOUT) {
            taskCount = this.f21731d.getTaskCount();
            scheduledThreadPoolExecutor = this.f21731d;
        } else if (aVar == EnumC7049a.BACKGROUND) {
            taskCount = this.f21732e.getTaskCount();
            scheduledThreadPoolExecutor = this.f21732e;
        } else if (aVar == EnumC7049a.ADVERTISING_INFO_COLLECTION) {
            taskCount = this.f21733f.getTaskCount();
            scheduledThreadPoolExecutor = this.f21733f;
        } else if (aVar == EnumC7049a.POSTBACKS) {
            taskCount = this.f21734g.getTaskCount();
            scheduledThreadPoolExecutor = this.f21734g;
        } else if (aVar == EnumC7049a.CACHING_INTERSTITIAL) {
            taskCount = this.f21735h.getTaskCount();
            scheduledThreadPoolExecutor = this.f21735h;
        } else if (aVar == EnumC7049a.CACHING_INCENTIVIZED) {
            taskCount = this.f21736i.getTaskCount();
            scheduledThreadPoolExecutor = this.f21736i;
        } else if (aVar == EnumC7049a.CACHING_OTHER) {
            taskCount = this.f21737j.getTaskCount();
            scheduledThreadPoolExecutor = this.f21737j;
        } else if (aVar == EnumC7049a.REWARD) {
            taskCount = this.f21738k.getTaskCount();
            scheduledThreadPoolExecutor = this.f21738k;
        } else if (aVar == EnumC7049a.MEDIATION_MAIN) {
            taskCount = this.f21739l.getTaskCount();
            scheduledThreadPoolExecutor = this.f21739l;
        } else if (aVar == EnumC7049a.MEDIATION_TIMEOUT) {
            taskCount = this.f21740m.getTaskCount();
            scheduledThreadPoolExecutor = this.f21740m;
        } else if (aVar == EnumC7049a.MEDIATION_BACKGROUND) {
            taskCount = this.f21741n.getTaskCount();
            scheduledThreadPoolExecutor = this.f21741n;
        } else if (aVar == EnumC7049a.MEDIATION_POSTBACKS) {
            taskCount = this.f21742o.getTaskCount();
            scheduledThreadPoolExecutor = this.f21742o;
        } else if (aVar == EnumC7049a.MEDIATION_BANNER) {
            taskCount = this.f21743p.getTaskCount();
            scheduledThreadPoolExecutor = this.f21743p;
        } else if (aVar == EnumC7049a.MEDIATION_INTERSTITIAL) {
            taskCount = this.f21744q.getTaskCount();
            scheduledThreadPoolExecutor = this.f21744q;
        } else if (aVar == EnumC7049a.MEDIATION_INCENTIVIZED) {
            taskCount = this.f21745r.getTaskCount();
            scheduledThreadPoolExecutor = this.f21745r;
        } else if (aVar != EnumC7049a.MEDIATION_REWARD) {
            return 0L;
        } else {
            taskCount = this.f21746s.getTaskCount();
            scheduledThreadPoolExecutor = this.f21746s;
        }
        return taskCount - scheduledThreadPoolExecutor.getCompletedTaskCount();
    }

    /* renamed from: a */
    public final ScheduledThreadPoolExecutor m18818a(String str) {
        return m18817a(str, 1);
    }

    /* renamed from: a */
    public final ScheduledThreadPoolExecutor m18817a(String str, int i) {
        return new ScheduledThreadPoolExecutor(i, new ThreadFactoryC7051c(str));
    }

    /* renamed from: a */
    public void m18827a(C2270g.AbstractRunnableC2278c cVar) {
        if (cVar != null) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                C2374t tVar = this.f21729b;
                tVar.m30042c("TaskManager", "Executing " + cVar.m30489b() + " immediately...");
                cVar.run();
                long currentTimeMillis2 = System.currentTimeMillis();
                C2374t tVar2 = this.f21729b;
                tVar2.m30042c("TaskManager", cVar.m30489b() + " finished executing in " + (currentTimeMillis2 - currentTimeMillis) + " ms...");
            } catch (Throwable th) {
                this.f21729b.m30043b(cVar.m30489b(), "Task failed execution", th);
            }
        } else {
            this.f21729b.m30039e("TaskManager", "Attempted to execute null task immediately");
        }
    }

    /* renamed from: a */
    public void m18826a(C2270g.AbstractRunnableC2278c cVar, EnumC7049a aVar) {
        m18825a(cVar, aVar, 0L);
    }

    /* renamed from: a */
    public void m18825a(C2270g.AbstractRunnableC2278c cVar, EnumC7049a aVar, long j) {
        m18824a(cVar, aVar, j, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public void m18824a(C2270g.AbstractRunnableC2278c cVar, EnumC7049a aVar, long j, boolean z) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        RunnableC7053d dVar;
        if (cVar == 0) {
            throw new IllegalArgumentException("No task specified");
        } else if (j >= 0) {
            RunnableC7053d dVar2 = new RunnableC7053d(cVar, aVar);
            if (!m18822a(dVar2)) {
                if (((Boolean) this.f21728a.m30291a(C2251d.C2256e.f8767x)).booleanValue()) {
                    scheduledThreadPoolExecutor = this.f21749v;
                    dVar = cVar;
                } else {
                    long a = m18823a(aVar);
                    C2374t tVar = this.f21729b;
                    tVar.m30044b("TaskManager", "Scheduling " + cVar.m30489b() + " on " + aVar + " queue in " + j + "ms with new queue size " + (a + 1));
                    if (aVar == EnumC7049a.MAIN) {
                        scheduledThreadPoolExecutor = this.f21730c;
                    } else if (aVar == EnumC7049a.TIMEOUT) {
                        scheduledThreadPoolExecutor = this.f21731d;
                    } else if (aVar == EnumC7049a.BACKGROUND) {
                        scheduledThreadPoolExecutor = this.f21732e;
                    } else if (aVar == EnumC7049a.ADVERTISING_INFO_COLLECTION) {
                        scheduledThreadPoolExecutor = this.f21733f;
                    } else if (aVar == EnumC7049a.POSTBACKS) {
                        scheduledThreadPoolExecutor = this.f21734g;
                    } else if (aVar == EnumC7049a.CACHING_INTERSTITIAL) {
                        scheduledThreadPoolExecutor = this.f21735h;
                    } else if (aVar == EnumC7049a.CACHING_INCENTIVIZED) {
                        scheduledThreadPoolExecutor = this.f21736i;
                    } else if (aVar == EnumC7049a.CACHING_OTHER) {
                        scheduledThreadPoolExecutor = this.f21737j;
                    } else if (aVar == EnumC7049a.REWARD) {
                        scheduledThreadPoolExecutor = this.f21738k;
                    } else if (aVar == EnumC7049a.MEDIATION_MAIN) {
                        scheduledThreadPoolExecutor = this.f21739l;
                    } else if (aVar == EnumC7049a.MEDIATION_TIMEOUT) {
                        scheduledThreadPoolExecutor = this.f21740m;
                    } else if (aVar == EnumC7049a.MEDIATION_BACKGROUND) {
                        scheduledThreadPoolExecutor = this.f21741n;
                    } else if (aVar == EnumC7049a.MEDIATION_POSTBACKS) {
                        scheduledThreadPoolExecutor = this.f21742o;
                    } else if (aVar == EnumC7049a.MEDIATION_BANNER) {
                        scheduledThreadPoolExecutor = this.f21743p;
                    } else if (aVar == EnumC7049a.MEDIATION_INTERSTITIAL) {
                        scheduledThreadPoolExecutor = this.f21744q;
                    } else if (aVar == EnumC7049a.MEDIATION_INCENTIVIZED) {
                        scheduledThreadPoolExecutor = this.f21745r;
                    } else if (aVar == EnumC7049a.MEDIATION_REWARD) {
                        scheduledThreadPoolExecutor = this.f21746s;
                    } else {
                        return;
                    }
                    dVar = dVar2;
                }
                m18819a(dVar, j, scheduledThreadPoolExecutor, z);
                return;
            }
            C2374t tVar2 = this.f21729b;
            String b = cVar.m30489b();
            tVar2.m30042c(b, "Task " + cVar.m30489b() + " execution delayed until after init");
        } else {
            throw new IllegalArgumentException("Invalid delay specified: " + j);
        }
    }

    /* renamed from: a */
    public final void m18819a(Runnable runnable, long j, ScheduledExecutorService scheduledExecutorService, boolean z) {
        if (j <= 0) {
            scheduledExecutorService.submit(runnable);
        } else if (z) {
            C2384d.m29986a(j, this.f21728a, new RunnableC7050b(this, scheduledExecutorService, runnable));
        } else {
            scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: a */
    public boolean m18828a() {
        return this.f21752y;
    }

    /* renamed from: a */
    public final boolean m18822a(RunnableC7053d dVar) {
        if (dVar.f21777b.m30485d()) {
            return false;
        }
        synchronized (this.f21751x) {
            if (this.f21752y) {
                return false;
            }
            this.f21750w.add(dVar);
            return true;
        }
    }

    /* renamed from: b */
    public ScheduledExecutorService m18816b() {
        return this.f21747t;
    }

    /* renamed from: c */
    public ScheduledExecutorService m18814c() {
        return this.f21748u;
    }

    /* renamed from: d */
    public void m18813d() {
        synchronized (this.f21751x) {
            this.f21752y = false;
        }
    }

    /* renamed from: e */
    public void m18812e() {
        synchronized (this.f21751x) {
            try {
                this.f21752y = true;
                for (RunnableC7053d dVar : this.f21750w) {
                    m18826a(dVar.f21777b, dVar.f21778c);
                }
                this.f21750w.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
