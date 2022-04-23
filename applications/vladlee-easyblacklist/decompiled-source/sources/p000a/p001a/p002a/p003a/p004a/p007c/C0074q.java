package p000a.p001a.p002a.p003a.p004a.p007c;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: a.a.a.a.a.c.q */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/q.class */
public final class C0074q extends ThreadPoolExecutor {

    /* renamed from: a */
    private static final int f151a;

    /* renamed from: b */
    private static final int f152b;

    /* renamed from: c */
    private static final int f153c;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a.a.a.a.a.c.q$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/c/q$a.class */
    public static final class ThreadFactoryC0075a implements ThreadFactory {

        /* renamed from: a */
        private final int f154a = 10;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f154a);
            thread.setName("Queue");
            return thread;
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f151a = availableProcessors;
        f152b = availableProcessors + 1;
        f153c = (f151a * 2) + 1;
    }

    private <T extends Runnable & AbstractC0063g & AbstractC0076r & AbstractC0072o> C0074q(int i, int i2, TimeUnit timeUnit, C0064h<T> hVar, ThreadFactory threadFactory) {
        super(i, i2, 1L, timeUnit, hVar, threadFactory);
        prestartAllCoreThreads();
    }

    /* renamed from: a */
    public static C0074q m10255a() {
        return new C0074q(f152b, f153c, TimeUnit.SECONDS, new C0064h(), new ThreadFactoryC0075a());
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable runnable, Throwable th) {
        AbstractC0076r rVar = (AbstractC0076r) runnable;
        rVar.setFinished(true);
        rVar.setError(th);
        ((C0064h) super.getQueue()).m10269a();
        super.afterExecute(runnable, th);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (C0073p.isProperDelegate(runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public final /* bridge */ /* synthetic */ BlockingQueue getQueue() {
        return (C0064h) super.getQueue();
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new C0071n(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new C0071n(callable);
    }
}
