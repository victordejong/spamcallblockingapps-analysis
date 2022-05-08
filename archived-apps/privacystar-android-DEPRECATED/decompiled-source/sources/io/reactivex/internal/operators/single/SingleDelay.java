package io.reactivex.internal.operators.single;

import io.reactivex.Scheduler;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay.class */
public final class SingleDelay<T> extends Single<T> {
    final boolean delayError;
    final Scheduler scheduler;
    final SingleSource<? extends T> source;
    final long time;
    final TimeUnit unit;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay$Delay.class */
    final class Delay implements SingleObserver<T> {

        /* renamed from: s */
        final SingleObserver<? super T> f673s;

        /* renamed from: sd */
        private final SequentialDisposable f674sd;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay$Delay$OnError.class */
        final class OnError implements Runnable {

            /* renamed from: e */
            private final Throwable f675e;

            OnError(Throwable th) {
                this.f675e = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                Delay.this.f673s.onError(this.f675e);
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelay$Delay$OnSuccess.class */
        final class OnSuccess implements Runnable {
            private final T value;

            OnSuccess(T t) {
                this.value = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                Delay.this.f673s.onSuccess((T) this.value);
            }
        }

        Delay(SequentialDisposable sequentialDisposable, SingleObserver<? super T> singleObserver) {
            this.f674sd = sequentialDisposable;
            this.f673s = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f674sd.replace(SingleDelay.this.scheduler.scheduleDirect(new OnError(th), SingleDelay.this.delayError ? SingleDelay.this.time : 0L, SingleDelay.this.unit));
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f674sd.replace(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f674sd.replace(SingleDelay.this.scheduler.scheduleDirect(new OnSuccess(t), SingleDelay.this.time, SingleDelay.this.unit));
        }
    }

    public SingleDelay(SingleSource<? extends T> singleSource, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        this.source = singleSource;
        this.time = j;
        this.unit = timeUnit;
        this.scheduler = scheduler;
        this.delayError = z;
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super T> singleObserver) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        singleObserver.onSubscribe(sequentialDisposable);
        this.source.subscribe(new Delay(sequentialDisposable, singleObserver));
    }
}
