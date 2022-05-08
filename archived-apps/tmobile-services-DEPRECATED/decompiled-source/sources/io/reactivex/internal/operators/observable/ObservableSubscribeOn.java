package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSubscribeOn.class */
public final class ObservableSubscribeOn<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Scheduler f18465g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeOnObserver.class */
    static final class SubscribeOnObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8094547886072529208L;

        /* renamed from: f */
        final Observer<? super T> f18466f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18467g = new AtomicReference<>();

        SubscribeOnObserver(Observer<? super T> observer) {
            this.f18466f = observer;
        }

        /* renamed from: a */
        void m3680a(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18467g);
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18466f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18466f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18466f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18467g, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSubscribeOn$SubscribeTask.class */
    final class SubscribeTask implements Runnable {

        /* renamed from: f */
        private final SubscribeOnObserver<T> f18468f;

        SubscribeTask(SubscribeOnObserver<T> subscribeOnObserver) {
            this.f18468f = subscribeOnObserver;
        }

        @Override // java.lang.Runnable
        public void run() {
            ObservableSubscribeOn.this.f17497f.subscribe(this.f18468f);
        }
    }

    public ObservableSubscribeOn(ObservableSource<T> observableSource, Scheduler scheduler) {
        super(observableSource);
        this.f18465g = scheduler;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SubscribeOnObserver subscribeOnObserver = new SubscribeOnObserver(observer);
        observer.onSubscribe(subscribeOnObserver);
        subscribeOnObserver.m3680a(this.f18465g.mo3499d(new SubscribeTask(subscribeOnObserver)));
    }
}
