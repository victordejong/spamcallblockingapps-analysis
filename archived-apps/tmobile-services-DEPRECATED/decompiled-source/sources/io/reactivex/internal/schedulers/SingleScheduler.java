package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SingleScheduler.class */
public final class SingleScheduler extends Scheduler {

    /* renamed from: h */
    static final RxThreadFactory f19323h = new RxThreadFactory("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx2.single-priority", 5).intValue())), true);

    /* renamed from: i */
    static final ScheduledExecutorService f19324i;

    /* renamed from: g */
    final AtomicReference<ScheduledExecutorService> f19325g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/SingleScheduler$ScheduledWorker.class */
    static final class ScheduledWorker extends Scheduler.Worker {

        /* renamed from: f */
        final ScheduledExecutorService f19326f;

        /* renamed from: g */
        final CompositeDisposable f19327g = new CompositeDisposable();

        /* renamed from: h */
        volatile boolean f19328h;

        ScheduledWorker(ScheduledExecutorService scheduledExecutorService) {
            this.f19326f = scheduledExecutorService;
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            if (this.f19328h) {
                return EmptyDisposable.INSTANCE;
            }
            ScheduledRunnable scheduledRunnable = new ScheduledRunnable(RxJavaPlugins.m3352v(runnable), this.f19327g);
            this.f19327g.mo4425b(scheduledRunnable);
            try {
                scheduledRunnable.m3514a(j <= 0 ? this.f19326f.submit((Callable) scheduledRunnable) : this.f19326f.schedule((Callable) scheduledRunnable, j, timeUnit));
                return scheduledRunnable;
            } catch (RejectedExecutionException e) {
                dispose();
                RxJavaPlugins.m3354t(e);
                return EmptyDisposable.INSTANCE;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f19328h) {
                this.f19328h = true;
                this.f19327g.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19328h;
        }
    }

    static {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(0);
        f19324i = newScheduledThreadPool;
        newScheduledThreadPool.shutdown();
    }

    public SingleScheduler() {
        this(f19323h);
    }

    public SingleScheduler(ThreadFactory threadFactory) {
        AtomicReference<ScheduledExecutorService> atomicReference = new AtomicReference<>();
        this.f19325g = atomicReference;
        atomicReference.lazySet(m3500g(threadFactory));
    }

    /* renamed from: g */
    static ScheduledExecutorService m3500g(ThreadFactory threadFactory) {
        return SchedulerPoolFactory.m3511a(threadFactory);
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new ScheduledWorker(this.f19325g.get());
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: e */
    public Disposable mo3498e(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(RxJavaPlugins.m3352v(runnable));
        try {
            scheduledDirectTask.m3537a(j <= 0 ? this.f19325g.get().submit(scheduledDirectTask) : this.f19325g.get().schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.m3354t(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: f */
    public Disposable mo3501f(@NonNull Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable v = RxJavaPlugins.m3352v(runnable);
        if (j2 <= 0) {
            ScheduledExecutorService scheduledExecutorService = this.f19325g.get();
            InstantPeriodicTask instantPeriodicTask = new InstantPeriodicTask(v, scheduledExecutorService);
            try {
                instantPeriodicTask.m3529b(j <= 0 ? scheduledExecutorService.submit(instantPeriodicTask) : scheduledExecutorService.schedule(instantPeriodicTask, j, timeUnit));
                return instantPeriodicTask;
            } catch (RejectedExecutionException e) {
                RxJavaPlugins.m3354t(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(v);
            try {
                scheduledDirectPeriodicTask.m3537a(this.f19325g.get().scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e2) {
                RxJavaPlugins.m3354t(e2);
                return EmptyDisposable.INSTANCE;
            }
        }
    }
}
