package io.reactivex.internal.schedulers;

import io.reactivex.Scheduler;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.reactivex.disposables.Disposables;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/TrampolineScheduler.class */
public final class TrampolineScheduler extends Scheduler {

    /* renamed from: g */
    private static final TrampolineScheduler f19329g = new TrampolineScheduler();

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/TrampolineScheduler$SleepingRunnable.class */
    static final class SleepingRunnable implements Runnable {

        /* renamed from: f */
        private final Runnable f19330f;

        /* renamed from: g */
        private final TrampolineWorker f19331g;

        /* renamed from: h */
        private final long f19332h;

        SleepingRunnable(Runnable runnable, TrampolineWorker trampolineWorker, long j) {
            this.f19330f = runnable;
            this.f19331g = trampolineWorker;
            this.f19332h = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f19331g.f19340i) {
                long a = this.f19331g.mo3230a(TimeUnit.MILLISECONDS);
                long j = this.f19332h;
                if (j > a) {
                    try {
                        Thread.sleep(j - a);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        RxJavaPlugins.m3354t(e);
                        return;
                    }
                }
                if (!this.f19331g.f19340i) {
                    this.f19330f.run();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/TrampolineScheduler$TimedRunnable.class */
    public static final class TimedRunnable implements Comparable<TimedRunnable> {

        /* renamed from: f */
        final Runnable f19333f;

        /* renamed from: g */
        final long f19334g;

        /* renamed from: h */
        final int f19335h;

        /* renamed from: i */
        volatile boolean f19336i;

        TimedRunnable(Runnable runnable, Long l, int i) {
            this.f19333f = runnable;
            this.f19334g = l.longValue();
            this.f19335h = i;
        }

        /* renamed from: a */
        public int compareTo(TimedRunnable timedRunnable) {
            int b = ObjectHelper.m4366b(this.f19334g, timedRunnable.f19334g);
            return b == 0 ? ObjectHelper.m4367a(this.f19335h, timedRunnable.f19335h) : b;
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker.class */
    static final class TrampolineWorker extends Scheduler.Worker implements Disposable {

        /* renamed from: f */
        final PriorityBlockingQueue<TimedRunnable> f19337f = new PriorityBlockingQueue<>();

        /* renamed from: g */
        private final AtomicInteger f19338g = new AtomicInteger();

        /* renamed from: h */
        final AtomicInteger f19339h = new AtomicInteger();

        /* renamed from: i */
        volatile boolean f19340i;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/TrampolineScheduler$TrampolineWorker$AppendToQueueTask.class */
        public final class AppendToQueueTask implements Runnable {

            /* renamed from: f */
            final TimedRunnable f19341f;

            AppendToQueueTask(TimedRunnable timedRunnable) {
                this.f19341f = timedRunnable;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.f19341f.f19336i = true;
                TrampolineWorker.this.f19337f.remove(this.f19341f);
            }
        }

        TrampolineWorker() {
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: b */
        public Disposable mo3229b(@NonNull Runnable runnable) {
            return m3495e(runnable, mo3230a(TimeUnit.MILLISECONDS));
        }

        @Override // io.reactivex.Scheduler.Worker
        @NonNull
        /* renamed from: c */
        public Disposable mo3228c(@NonNull Runnable runnable, long j, @NonNull TimeUnit timeUnit) {
            long a = mo3230a(TimeUnit.MILLISECONDS) + timeUnit.toMillis(j);
            return m3495e(new SleepingRunnable(runnable, this, a), a);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19340i = true;
        }

        /* renamed from: e */
        Disposable m3495e(Runnable runnable, long j) {
            if (this.f19340i) {
                return EmptyDisposable.INSTANCE;
            }
            TimedRunnable timedRunnable = new TimedRunnable(runnable, Long.valueOf(j), this.f19339h.incrementAndGet());
            this.f19337f.add(timedRunnable);
            if (this.f19338g.getAndIncrement() != 0) {
                return Disposables.m4439c(new AppendToQueueTask(timedRunnable));
            }
            int i = 1;
            while (!this.f19340i) {
                TimedRunnable poll = this.f19337f.poll();
                if (poll == null) {
                    int addAndGet = this.f19338g.addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return EmptyDisposable.INSTANCE;
                    }
                } else if (!poll.f19336i) {
                    poll.f19333f.run();
                }
            }
            this.f19337f.clear();
            return EmptyDisposable.INSTANCE;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19340i;
        }
    }

    TrampolineScheduler() {
    }

    /* renamed from: g */
    public static TrampolineScheduler m3497g() {
        return f19329g;
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: b */
    public Scheduler.Worker mo3232b() {
        return new TrampolineWorker();
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: d */
    public Disposable mo3499d(@NonNull Runnable runnable) {
        RxJavaPlugins.m3352v(runnable).run();
        return EmptyDisposable.INSTANCE;
    }

    @Override // io.reactivex.Scheduler
    @NonNull
    /* renamed from: e */
    public Disposable mo3498e(@NonNull Runnable runnable, long j, TimeUnit timeUnit) {
        try {
            timeUnit.sleep(j);
            RxJavaPlugins.m3352v(runnable).run();
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            RxJavaPlugins.m3354t(e);
        }
        return EmptyDisposable.INSTANCE;
    }
}
