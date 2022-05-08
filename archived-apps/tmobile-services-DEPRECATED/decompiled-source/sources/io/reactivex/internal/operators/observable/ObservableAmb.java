package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAmb.class */
public final class ObservableAmb<T> extends Observable<T> {

    /* renamed from: f */
    final ObservableSource<? extends T>[] f17535f;

    /* renamed from: g */
    final Iterable<? extends ObservableSource<? extends T>> f17536g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAmb$AmbCoordinator.class */
    static final class AmbCoordinator<T> implements Disposable {

        /* renamed from: f */
        final Observer<? super T> f17537f;

        /* renamed from: g */
        final AmbInnerObserver<T>[] f17538g;

        /* renamed from: h */
        final AtomicInteger f17539h = new AtomicInteger();

        AmbCoordinator(Observer<? super T> observer, int i) {
            this.f17537f = observer;
            this.f17538g = new AmbInnerObserver[i];
        }

        /* renamed from: a */
        public void m3906a(ObservableSource<? extends T>[] observableSourceArr) {
            AmbInnerObserver<T>[] ambInnerObserverArr = this.f17538g;
            int length = ambInnerObserverArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                ambInnerObserverArr[i] = new AmbInnerObserver<>(this, i2, this.f17537f);
                i = i2;
            }
            this.f17539h.lazySet(0);
            this.f17537f.onSubscribe(this);
            for (int i3 = 0; i3 < length && this.f17539h.get() == 0; i3++) {
                observableSourceArr[i3].subscribe(ambInnerObserverArr[i3]);
            }
        }

        /* renamed from: b */
        public boolean m3905b(int i) {
            int i2 = this.f17539h.get();
            boolean z = true;
            int i3 = 0;
            if (i2 != 0) {
                if (i2 != i) {
                    z = false;
                }
                return z;
            } else if (!this.f17539h.compareAndSet(0, i)) {
                return false;
            } else {
                AmbInnerObserver<T>[] ambInnerObserverArr = this.f17538g;
                int length = ambInnerObserverArr.length;
                while (i3 < length) {
                    int i4 = i3 + 1;
                    if (i4 != i) {
                        ambInnerObserverArr[i3].m3904a();
                    }
                    i3 = i4;
                }
                return true;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f17539h.get() != -1) {
                this.f17539h.lazySet(-1);
                for (AmbInnerObserver<T> ambInnerObserver : this.f17538g) {
                    ambInnerObserver.m3904a();
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17539h.get() == -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableAmb$AmbInnerObserver.class */
    public static final class AmbInnerObserver<T> extends AtomicReference<Disposable> implements Observer<T> {
        private static final long serialVersionUID = -1185974347409665484L;

        /* renamed from: f */
        final AmbCoordinator<T> f17540f;

        /* renamed from: g */
        final int f17541g;

        /* renamed from: h */
        final Observer<? super T> f17542h;

        /* renamed from: i */
        boolean f17543i;

        AmbInnerObserver(AmbCoordinator<T> ambCoordinator, int i, Observer<? super T> observer) {
            this.f17540f = ambCoordinator;
            this.f17541g = i;
            this.f17542h = observer;
        }

        /* renamed from: a */
        public void m3904a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f17543i) {
                this.f17542h.onComplete();
            } else if (this.f17540f.m3905b(this.f17541g)) {
                this.f17543i = true;
                this.f17542h.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17543i) {
                this.f17542h.onError(th);
            } else if (this.f17540f.m3905b(this.f17541g)) {
                this.f17543i = true;
                this.f17542h.onError(th);
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f17543i) {
                this.f17542h.onNext(t);
            } else if (this.f17540f.m3905b(this.f17541g)) {
                this.f17543i = true;
                this.f17542h.onNext(t);
            } else {
                get().dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    public ObservableAmb(ObservableSource<? extends T>[] observableSourceArr, Iterable<? extends ObservableSource<? extends T>> iterable) {
        this.f17535f = observableSourceArr;
        this.f17536g = iterable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        int i;
        ObservableSource<? extends T>[] observableSourceArr = this.f17535f;
        if (observableSourceArr == null) {
            ObservableSource<? extends T>[] observableSourceArr2 = new ObservableSource[8];
            try {
                Iterator<? extends ObservableSource<? extends T>> it = this.f17536g.iterator();
                int i2 = 0;
                while (true) {
                    observableSourceArr = observableSourceArr2;
                    i = i2;
                    if (!it.hasNext()) {
                        break;
                    }
                    ObservableSource<? extends T> observableSource = (ObservableSource) it.next();
                    if (observableSource == null) {
                        EmptyDisposable.error(new NullPointerException("One of the sources is null"), observer);
                        return;
                    }
                    ObservableSource<? extends T>[] observableSourceArr3 = observableSourceArr2;
                    if (i2 == observableSourceArr2.length) {
                        observableSourceArr3 = new ObservableSource[(i2 >> 2) + i2];
                        System.arraycopy(observableSourceArr2, 0, observableSourceArr3, 0, i2);
                    }
                    observableSourceArr3[i2] = observableSource;
                    i2++;
                    observableSourceArr2 = observableSourceArr3;
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                EmptyDisposable.error(th, observer);
                return;
            }
        } else {
            i = observableSourceArr.length;
        }
        if (i == 0) {
            EmptyDisposable.complete(observer);
        } else if (i == 1) {
            observableSourceArr[0].subscribe(observer);
        } else {
            new AmbCoordinator(observer, i).m3906a(observableSourceArr);
        }
    }
}
