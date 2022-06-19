package androidx.work.impl.utils;

import androidx.work.AbstractC0541m;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.impl.utils.m */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m.class */
public class C0531m {

    /* renamed from: f */
    private static final String f2647f = AbstractC0541m.m4305f("WorkTimer");

    /* renamed from: a */
    private final ThreadFactory f2648a;

    /* renamed from: b */
    private final ScheduledExecutorService f2649b;

    /* renamed from: c */
    final Map<String, RunnableC0534c> f2650c = new HashMap();

    /* renamed from: d */
    final Map<String, AbstractC0533b> f2651d = new HashMap();

    /* renamed from: e */
    final Object f2652e = new Object();

    /* renamed from: androidx.work.impl.utils.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m$a.class */
    class ThreadFactoryC0532a implements ThreadFactory {

        /* renamed from: f */
        private int f2653f = 0;

        ThreadFactoryC0532a(C0531m c0531m) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread newThread = Executors.defaultThreadFactory().newThread(runnable);
            newThread.setName("WorkManager-WorkTimer-thread-" + this.f2653f);
            this.f2653f = this.f2653f + 1;
            return newThread;
        }
    }

    /* renamed from: androidx.work.impl.utils.m$b */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m$b.class */
    public interface AbstractC0533b {
        /* renamed from: a */
        void m4327a(String str);
    }

    /* renamed from: androidx.work.impl.utils.m$c */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/m$c.class */
    public static class RunnableC0534c implements Runnable {

        /* renamed from: f */
        private final C0531m f2654f;

        /* renamed from: g */
        private final String f2655g;

        RunnableC0534c(C0531m c0531m, String str) {
            this.f2654f = c0531m;
            this.f2655g = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f2654f.f2652e) {
                if (this.f2654f.f2650c.remove(this.f2655g) != null) {
                    AbstractC0533b remove = this.f2654f.f2651d.remove(this.f2655g);
                    if (remove != null) {
                        remove.m4327a(this.f2655g);
                    }
                } else {
                    AbstractC0541m.m4308c().m4310a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f2655g), new Throwable[0]);
                }
            }
        }
    }

    public C0531m() {
        ThreadFactoryC0532a threadFactoryC0532a = new ThreadFactoryC0532a(this);
        this.f2648a = threadFactoryC0532a;
        this.f2649b = Executors.newSingleThreadScheduledExecutor(threadFactoryC0532a);
    }

    /* renamed from: a */
    public void m4330a() {
        if (!this.f2649b.isShutdown()) {
            this.f2649b.shutdownNow();
        }
    }

    /* renamed from: b */
    public void m4329b(String str, long j, AbstractC0533b abstractC0533b) {
        synchronized (this.f2652e) {
            AbstractC0541m.m4308c().m4310a(f2647f, String.format("Starting timer for %s", str), new Throwable[0]);
            m4328c(str);
            RunnableC0534c runnableC0534c = new RunnableC0534c(this, str);
            this.f2650c.put(str, runnableC0534c);
            this.f2651d.put(str, abstractC0533b);
            this.f2649b.schedule(runnableC0534c, j, TimeUnit.MILLISECONDS);
        }
    }

    /* renamed from: c */
    public void m4328c(String str) {
        synchronized (this.f2652e) {
            if (this.f2650c.remove(str) != null) {
                AbstractC0541m.m4308c().m4310a(f2647f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f2651d.remove(str);
            }
        }
    }
}
