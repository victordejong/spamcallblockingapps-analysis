package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip.class */
public final class ObservableZip<T, R> extends Observable<R> {
    final int bufferSize;
    final boolean delayError;
    final ObservableSource<? extends T>[] sources;
    final Iterable<? extends ObservableSource<? extends T>> sourcesIterable;
    final Function<? super Object[], ? extends R> zipper;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip$ZipCoordinator.class */
    static final class ZipCoordinator<T, R> extends AtomicInteger implements Disposable {
        private static final long serialVersionUID = 2983708048395377667L;
        final Observer<? super R> actual;
        volatile boolean cancelled;
        final boolean delayError;
        final ZipObserver<T, R>[] observers;
        final T[] row;
        final Function<? super Object[], ? extends R> zipper;

        ZipCoordinator(Observer<? super R> observer, Function<? super Object[], ? extends R> function, int i, boolean z) {
            this.actual = observer;
            this.zipper = function;
            this.observers = new ZipObserver[i];
            this.row = (T[]) new Object[i];
            this.delayError = z;
        }

        void cancel() {
            clear();
            cancelSources();
        }

        void cancelSources() {
            for (ZipObserver<T, R> zipObserver : this.observers) {
                zipObserver.dispose();
            }
        }

        boolean checkTerminated(boolean z, boolean z2, Observer<? super R> observer, boolean z3, ZipObserver<?, ?> zipObserver) {
            if (this.cancelled) {
                cancel();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!z3) {
                    Throwable th = zipObserver.error;
                    if (th != null) {
                        cancel();
                        observer.onError(th);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        cancel();
                        observer.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    Throwable th2 = zipObserver.error;
                    cancel();
                    if (th2 != null) {
                        observer.onError(th2);
                        return true;
                    }
                    observer.onComplete();
                    return true;
                }
            }
        }

        void clear() {
            for (ZipObserver<T, R> zipObserver : this.observers) {
                zipObserver.queue.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.cancelled) {
                this.cancelled = true;
                cancelSources();
                if (getAndIncrement() == 0) {
                    clear();
                }
            }
        }

        public void drain() {
            if (getAndIncrement() == 0) {
                ZipObserver<T, R>[] zipObserverArr = this.observers;
                Observer<? super R> observer = this.actual;
                T[] tArr = this.row;
                boolean z = this.delayError;
                int i = 1;
                while (true) {
                    int i2 = 0;
                    int i3 = 0;
                    for (ZipObserver<T, R> zipObserver : zipObserverArr) {
                        if (tArr[i2] == null) {
                            boolean z2 = zipObserver.done;
                            T poll = zipObserver.queue.poll();
                            boolean z3 = poll == null;
                            if (checkTerminated(z2, z3, observer, z, zipObserver)) {
                                return;
                            }
                            if (!z3) {
                                tArr[i2] = poll;
                                i3 = i3;
                            } else {
                                i3++;
                            }
                        } else {
                            i3 = i3;
                            if (zipObserver.done) {
                                i3 = i3;
                                if (!z) {
                                    Throwable th = zipObserver.error;
                                    i3 = i3;
                                    if (th != null) {
                                        cancel();
                                        observer.onError(th);
                                        return;
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                continue;
                            }
                        }
                        i2++;
                    }
                    if (i3 != 0) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        try {
                            observer.onNext((Object) ObjectHelper.requireNonNull(this.zipper.apply(tArr.clone()), "The zipper returned a null value"));
                            Arrays.fill(tArr, (Object) null);
                        } catch (Throwable th2) {
                            Exceptions.throwIfFatal(th2);
                            cancel();
                            observer.onError(th2);
                            return;
                        }
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.cancelled;
        }

        public void subscribe(ObservableSource<? extends T>[] observableSourceArr, int i) {
            ZipObserver<T, R>[] zipObserverArr = this.observers;
            int length = zipObserverArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                zipObserverArr[i2] = new ZipObserver<>(this, i);
            }
            lazySet(0);
            this.actual.onSubscribe(this);
            for (int i3 = 0; i3 < length && !this.cancelled; i3++) {
                observableSourceArr[i3].subscribe(zipObserverArr[i3]);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableZip$ZipObserver.class */
    public static final class ZipObserver<T, R> implements Observer<T> {
        volatile boolean done;
        Throwable error;
        final ZipCoordinator<T, R> parent;
        final SpscLinkedArrayQueue<T> queue;

        /* renamed from: s */
        final AtomicReference<Disposable> f656s = new AtomicReference<>();

        ZipObserver(ZipCoordinator<T, R> zipCoordinator, int i) {
            this.parent = zipCoordinator;
            this.queue = new SpscLinkedArrayQueue<>(i);
        }

        public void dispose() {
            DisposableHelper.dispose(this.f656s);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.error = th;
            this.done = true;
            this.parent.drain();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.queue.offer(t);
            this.parent.drain();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f656s, disposable);
        }
    }

    public ObservableZip(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable, Function<? super Object[], ? extends R> function, int i, boolean z) {
        this.sources = observableSourceArr;
        this.sourcesIterable = iterable;
        this.zipper = function;
        this.bufferSize = i;
        this.delayError = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super R> observer) {
        int i;
        ObservableSource<? extends T>[] observableSourceArr = this.sources;
        if (observableSourceArr == null) {
            ObservableSource<? extends T>[] observableSourceArr2 = new Observable[8];
            Iterator<? extends ObservableSource<? extends T>> it = this.sourcesIterable.iterator();
            int i2 = 0;
            while (true) {
                i = i2;
                observableSourceArr = observableSourceArr2;
                if (!it.hasNext()) {
                    break;
                }
                ObservableSource<? extends T> observableSource = (ObservableSource) it.next();
                ObservableSource<? extends T>[] observableSourceArr3 = observableSourceArr2;
                if (i2 == observableSourceArr2.length) {
                    observableSourceArr3 = new ObservableSource[(i2 >> 2) + i2];
                    System.arraycopy(observableSourceArr2, 0, observableSourceArr3, 0, i2);
                }
                observableSourceArr3[i2] = observableSource;
                i2++;
                observableSourceArr2 = observableSourceArr3;
            }
        } else {
            i = observableSourceArr.length;
        }
        if (i == 0) {
            EmptyDisposable.complete(observer);
        } else {
            new ZipCoordinator(observer, this.zipper, i, this.delayError).subscribe(observableSourceArr, this.bufferSize);
        }
    }
}
