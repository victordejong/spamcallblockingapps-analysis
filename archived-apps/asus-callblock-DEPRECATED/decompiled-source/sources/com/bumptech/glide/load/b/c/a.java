package com.bumptech.glide.load.b.c;

import android.os.Process;
import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c/a.class */
public final class a extends ThreadPoolExecutor {

    /* renamed from: a  reason: collision with root package name */
    private final AtomicInteger f3524a;

    /* renamed from: b  reason: collision with root package name */
    private final c f3525b;

    /* renamed from: com.bumptech.glide.load.b.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c/a$a.class */
    public static final class ThreadFactoryC0099a implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        int f3528a = 0;

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable, "fifo-pool-thread-" + this.f3528a) { // from class: com.bumptech.glide.load.b.c.a.a.1
                @Override // java.lang.Thread, java.lang.Runnable
                public final void run() {
                    Process.setThreadPriority(10);
                    super.run();
                }
            };
            this.f3528a++;
            return thread;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c/a$b.class */
    static final class b<T> extends FutureTask<T> implements Comparable<b<?>> {

        /* renamed from: a  reason: collision with root package name */
        private final int f3530a;

        /* renamed from: b  reason: collision with root package name */
        private final int f3531b;

        public b(Runnable runnable, T t, int i) {
            super(runnable, t);
            if (!(runnable instanceof com.bumptech.glide.load.b.c.b)) {
                throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
            }
            this.f3530a = ((com.bumptech.glide.load.b.c.b) runnable).a();
            this.f3531b = i;
        }

        @Override // java.lang.Comparable
        public final /* bridge */ /* synthetic */ int compareTo(b<?> bVar) {
            b<?> bVar2 = bVar;
            int i = this.f3530a - bVar2.f3530a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f3531b - bVar2.f3531b;
            }
            return i2;
        }

        public final boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof b) {
                b bVar = (b) obj;
                z = false;
                if (this.f3531b == bVar.f3531b) {
                    z = false;
                    if (this.f3530a == bVar.f3530a) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public final int hashCode() {
            return (this.f3530a * 31) + this.f3531b;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/b/c/a$c.class */
    public enum c {
        IGNORE,
        LOG { // from class: com.bumptech.glide.load.b.c.a.c.1
            @Override // com.bumptech.glide.load.b.c.a.c
            protected final void a(Throwable th) {
                if (Log.isLoggable("PriorityExecutor", 6)) {
                    Log.e("PriorityExecutor", "Request threw uncaught throwable", th);
                }
            }
        },
        THROW { // from class: com.bumptech.glide.load.b.c.a.c.2
            @Override // com.bumptech.glide.load.b.c.a.c
            protected final void a(Throwable th) {
                super.a(th);
                throw new RuntimeException(th);
            }
        };

        /* synthetic */ c(byte b2) {
            this();
        }

        protected void a(Throwable th) {
        }
    }

    public a(int i) {
        this(i, c.LOG);
    }

    private a(int i, int i2, TimeUnit timeUnit, ThreadFactory threadFactory, c cVar) {
        super(i, i2, 0L, timeUnit, new PriorityBlockingQueue(), threadFactory);
        this.f3524a = new AtomicInteger();
        this.f3525b = cVar;
    }

    private a(int i, c cVar) {
        this(i, i, TimeUnit.MILLISECONDS, new ThreadFactoryC0099a(), cVar);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected final void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future)) {
            Future future = (Future) runnable;
            if (future.isDone() && !future.isCancelled()) {
                try {
                    future.get();
                } catch (InterruptedException e) {
                    this.f3525b.a(e);
                } catch (ExecutionException e2) {
                    this.f3525b.a(e2);
                }
            }
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected final <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new b(runnable, t, this.f3524a.getAndIncrement());
    }
}
