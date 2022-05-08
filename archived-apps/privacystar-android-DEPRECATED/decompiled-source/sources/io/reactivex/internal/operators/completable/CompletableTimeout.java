package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Scheduler;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout.class */
public final class CompletableTimeout extends Completable {
    final CompletableSource other;
    final Scheduler scheduler;
    final CompletableSource source;
    final long timeout;
    final TimeUnit unit;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask.class */
    final class DisposeTask implements Runnable {
        private final AtomicBoolean once;

        /* renamed from: s */
        final CompletableObserver f377s;
        final CompositeDisposable set;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout$DisposeTask$DisposeObserver.class */
        final class DisposeObserver implements CompletableObserver {
            DisposeObserver() {
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                DisposeTask.this.set.dispose();
                DisposeTask.this.f377s.onComplete();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                DisposeTask.this.set.dispose();
                DisposeTask.this.f377s.onError(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposeTask.this.set.add(disposable);
            }
        }

        DisposeTask(AtomicBoolean atomicBoolean, CompositeDisposable compositeDisposable, CompletableObserver completableObserver) {
            this.once = atomicBoolean;
            this.set = compositeDisposable;
            this.f377s = completableObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.once.compareAndSet(false, true)) {
                this.set.clear();
                if (CompletableTimeout.this.other == null) {
                    this.f377s.onError(new TimeoutException());
                } else {
                    CompletableTimeout.this.other.subscribe(new DisposeObserver());
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTimeout$TimeOutObserver.class */
    static final class TimeOutObserver implements CompletableObserver {
        private final AtomicBoolean once;

        /* renamed from: s */
        private final CompletableObserver f378s;
        private final CompositeDisposable set;

        TimeOutObserver(CompositeDisposable compositeDisposable, AtomicBoolean atomicBoolean, CompletableObserver completableObserver) {
            this.set = compositeDisposable;
            this.once = atomicBoolean;
            this.f378s = completableObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.once.compareAndSet(false, true)) {
                this.set.dispose();
                this.f378s.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.once.compareAndSet(false, true)) {
                this.set.dispose();
                this.f378s.onError(th);
                return;
            }
            RxJavaPlugins.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.set.add(disposable);
        }
    }

    public CompletableTimeout(CompletableSource completableSource, long j, TimeUnit timeUnit, Scheduler scheduler, CompletableSource completableSource2) {
        this.source = completableSource;
        this.timeout = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.other = completableSource2;
    }

    @Override // io.reactivex.Completable
    public void subscribeActual(CompletableObserver completableObserver) {
        CompositeDisposable compositeDisposable = new CompositeDisposable();
        completableObserver.onSubscribe(compositeDisposable);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        compositeDisposable.add(this.scheduler.scheduleDirect(new DisposeTask(atomicBoolean, compositeDisposable, completableObserver), this.timeout, this.unit));
        this.source.subscribe(new TimeOutObserver(compositeDisposable, atomicBoolean, completableObserver));
    }
}
