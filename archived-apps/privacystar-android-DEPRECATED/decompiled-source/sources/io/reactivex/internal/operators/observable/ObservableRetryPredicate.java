package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.disposables.SequentialDisposable;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryPredicate.class */
public final class ObservableRetryPredicate<T> extends AbstractObservableWithUpstream<T, T> {
    final long count;
    final Predicate<? super Throwable> predicate;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableRetryPredicate$RepeatObserver.class */
    static final class RepeatObserver<T> extends AtomicInteger implements Observer<T> {
        private static final long serialVersionUID = -7098360935104053232L;
        final Observer<? super T> actual;
        final Predicate<? super Throwable> predicate;
        long remaining;

        /* renamed from: sa */
        final SequentialDisposable f604sa;
        final ObservableSource<? extends T> source;

        RepeatObserver(Observer<? super T> observer, long j, Predicate<? super Throwable> predicate, SequentialDisposable sequentialDisposable, ObservableSource<? extends T> observableSource) {
            this.actual = observer;
            this.f604sa = sequentialDisposable;
            this.source = observableSource;
            this.predicate = predicate;
            this.remaining = j;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            long j = this.remaining;
            if (j != Long.MAX_VALUE) {
                this.remaining = j - 1;
            }
            if (j == 0) {
                this.actual.onError(th);
                return;
            }
            try {
                if (!this.predicate.test(th)) {
                    this.actual.onError(th);
                } else {
                    subscribeNext();
                }
            } catch (Throwable th2) {
                Exceptions.throwIfFatal(th2);
                this.actual.onError(new CompositeException(th, th2));
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.actual.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f604sa.update(disposable);
        }

        void subscribeNext() {
            if (getAndIncrement() == 0) {
                int i = 1;
                while (!this.f604sa.isDisposed()) {
                    this.source.subscribe(this);
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
            }
        }
    }

    public ObservableRetryPredicate(Observable<T> observable, long j, Predicate<? super Throwable> predicate) {
        super(observable);
        this.predicate = predicate;
        this.count = j;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        new RepeatObserver(observer, this.count, this.predicate, sequentialDisposable, this.source).subscribeNext();
    }
}
