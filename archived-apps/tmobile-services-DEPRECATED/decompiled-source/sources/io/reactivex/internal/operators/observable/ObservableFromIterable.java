package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicQueueDisposable;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromIterable.class */
public final class ObservableFromIterable<T> extends Observable<T> {

    /* renamed from: f */
    final Iterable<? extends T> f17974f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromIterable$FromIterableDisposable.class */
    static final class FromIterableDisposable<T> extends BasicQueueDisposable<T> {

        /* renamed from: f */
        final Observer<? super T> f17975f;

        /* renamed from: g */
        final Iterator<? extends T> f17976g;

        /* renamed from: h */
        volatile boolean f17977h;

        /* renamed from: i */
        boolean f17978i;

        /* renamed from: j */
        boolean f17979j;

        /* renamed from: k */
        boolean f17980k;

        FromIterableDisposable(Observer<? super T> observer, Iterator<? extends T> it) {
            this.f17975f = observer;
            this.f17976g = it;
        }

        /* renamed from: a */
        void m3822a() {
            while (!isDisposed()) {
                try {
                    Object next = this.f17976g.next();
                    ObjectHelper.m4363e(next, "The iterator returned a null value");
                    this.f17975f.onNext(next);
                    if (!isDisposed()) {
                        try {
                            if (!this.f17976g.hasNext()) {
                                if (!isDisposed()) {
                                    this.f17975f.onComplete();
                                    return;
                                }
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            this.f17975f.onError(th);
                            return;
                        }
                    } else {
                        return;
                    }
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f17975f.onError(th2);
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f17979j = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17977h = true;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17977h;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f17979j;
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() {
            if (this.f17979j) {
                return null;
            }
            if (!this.f17980k) {
                this.f17980k = true;
            } else if (!this.f17976g.hasNext()) {
                this.f17979j = true;
                return null;
            }
            T t = (T) this.f17976g.next();
            ObjectHelper.m4363e(t, "The iterator returned a null value");
            return t;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.f17978i = true;
            return 1;
        }
    }

    public ObservableFromIterable(Iterable<? extends T> iterable) {
        this.f17974f = iterable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Iterator<? extends T> it = this.f17974f.iterator();
            try {
                if (!it.hasNext()) {
                    EmptyDisposable.complete(observer);
                    return;
                }
                FromIterableDisposable fromIterableDisposable = new FromIterableDisposable(observer, it);
                observer.onSubscribe(fromIterableDisposable);
                if (!fromIterableDisposable.f17978i) {
                    fromIterableDisposable.m3822a();
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, observer);
            }
        } catch (Throwable th2) {
            Exceptions.m4428b(th2);
            EmptyDisposable.error(th2, observer);
        }
    }
}
