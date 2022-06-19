package androidx.work.impl.utils;

import java.util.ArrayDeque;
import java.util.concurrent.Executor;
/* renamed from: androidx.work.impl.utils.g */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g.class */
public class ExecutorC0526g implements Executor {

    /* renamed from: g */
    private final Executor f2633g;

    /* renamed from: i */
    private volatile Runnable f2635i;

    /* renamed from: f */
    private final ArrayDeque<RunnableC0527a> f2632f = new ArrayDeque<>();

    /* renamed from: h */
    private final Object f2634h = new Object();

    /* renamed from: androidx.work.impl.utils.g$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/g$a.class */
    public static class RunnableC0527a implements Runnable {

        /* renamed from: f */
        final ExecutorC0526g f2636f;

        /* renamed from: g */
        final Runnable f2637g;

        RunnableC0527a(ExecutorC0526g executorC0526g, Runnable runnable) {
            this.f2636f = executorC0526g;
            this.f2637g = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2637g.run();
            } finally {
                this.f2636f.m4333b();
            }
        }
    }

    public ExecutorC0526g(Executor executor) {
        this.f2633g = executor;
    }

    /* renamed from: a */
    public boolean m4334a() {
        boolean z;
        synchronized (this.f2634h) {
            z = !this.f2632f.isEmpty();
        }
        return z;
    }

    /* renamed from: b */
    void m4333b() {
        synchronized (this.f2634h) {
            RunnableC0527a poll = this.f2632f.poll();
            this.f2635i = poll;
            if (poll != null) {
                this.f2633g.execute(this.f2635i);
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        synchronized (this.f2634h) {
            this.f2632f.add(new RunnableC0527a(this, runnable));
            if (this.f2635i == null) {
                m4333b();
            }
        }
    }
}
