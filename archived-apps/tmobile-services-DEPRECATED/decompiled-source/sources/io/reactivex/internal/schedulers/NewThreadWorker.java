package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/NewThreadWorker.class */
public class NewThreadWorker extends Scheduler.Worker implements Disposable {

    /* renamed from: f */
    private final ScheduledExecutorService f19292f;

    /* renamed from: g */
    volatile boolean f19293g;

    public NewThreadWorker(ThreadFactory threadFactory) {
        this.f19292f = SchedulerPoolFactory.m3511a(threadFactory);
    }

    @Override // io.reactivex.Scheduler.Worker
    @NonNull
    /* renamed from: b */
    public Disposable mo3229b(@NonNull Runnable runnable) {
        return mo3228c(runnable, 0L, null);
    }

    @Override // io.reactivex.Scheduler.Worker
    @NonNull
    /* renamed from: c */
    public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
        return this.f19293g ? EmptyDisposable.INSTANCE : m3519e(runnable, j, timeUnit, null);
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        if (!this.f19293g) {
            this.f19293g = true;
            this.f19292f.shutdownNow();
        }
    }

    @NonNull
    /* renamed from: e */
    public ScheduledRunnable m3519e(Runnable runnable, long j, @NonNull TimeUnit timeUnit, @Nullable DisposableContainer disposableContainer) {
        ScheduledRunnable scheduledRunnable = new ScheduledRunnable(RxJavaPlugins.m3352v(runnable), disposableContainer);
        if (disposableContainer != null && !disposableContainer.mo4425b(scheduledRunnable)) {
            return scheduledRunnable;
        }
        try {
            scheduledRunnable.m3514a(j <= 0 ? this.f19292f.submit((Callable) scheduledRunnable) : this.f19292f.schedule((Callable) scheduledRunnable, j, timeUnit));
        } catch (RejectedExecutionException e) {
            if (disposableContainer != null) {
                disposableContainer.mo4426a(scheduledRunnable);
            }
            RxJavaPlugins.m3354t(e);
        }
        return scheduledRunnable;
    }

    /* renamed from: f */
    public Disposable m3518f(Runnable runnable, long j, TimeUnit timeUnit) {
        ScheduledDirectTask scheduledDirectTask = new ScheduledDirectTask(RxJavaPlugins.m3352v(runnable));
        try {
            scheduledDirectTask.m3537a(j <= 0 ? this.f19292f.submit(scheduledDirectTask) : this.f19292f.schedule(scheduledDirectTask, j, timeUnit));
            return scheduledDirectTask;
        } catch (RejectedExecutionException e) {
            RxJavaPlugins.m3354t(e);
            return EmptyDisposable.INSTANCE;
        }
    }

    /* renamed from: g */
    public Disposable m3517g(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        Runnable v = RxJavaPlugins.m3352v(runnable);
        if (j2 <= 0) {
            InstantPeriodicTask instantPeriodicTask = new InstantPeriodicTask(v, this.f19292f);
            try {
                instantPeriodicTask.m3529b(j <= 0 ? this.f19292f.submit(instantPeriodicTask) : this.f19292f.schedule(instantPeriodicTask, j, timeUnit));
                return instantPeriodicTask;
            } catch (RejectedExecutionException e) {
                RxJavaPlugins.m3354t(e);
                return EmptyDisposable.INSTANCE;
            }
        } else {
            ScheduledDirectPeriodicTask scheduledDirectPeriodicTask = new ScheduledDirectPeriodicTask(v);
            try {
                scheduledDirectPeriodicTask.m3537a(this.f19292f.scheduleAtFixedRate(scheduledDirectPeriodicTask, j, j2, timeUnit));
                return scheduledDirectPeriodicTask;
            } catch (RejectedExecutionException e2) {
                RxJavaPlugins.m3354t(e2);
                return EmptyDisposable.INSTANCE;
            }
        }
    }

    /* renamed from: h */
    public void m3516h() {
        if (!this.f19293g) {
            this.f19293g = true;
            this.f19292f.shutdown();
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f19293g;
    }
}
