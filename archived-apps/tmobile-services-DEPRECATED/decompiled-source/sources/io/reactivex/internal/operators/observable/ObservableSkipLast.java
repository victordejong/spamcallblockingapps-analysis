package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.ArrayDeque;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipLast.class */
public final class ObservableSkipLast<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final int f18431g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipLast$SkipLastObserver.class */
    static final class SkipLastObserver<T> extends ArrayDeque<T> implements Observer<T>, Disposable {
        private static final long serialVersionUID = -3807491841935125653L;

        /* renamed from: f */
        final Observer<? super T> f18432f;

        /* renamed from: g */
        final int f18433g;

        /* renamed from: h */
        Disposable f18434h;

        SkipLastObserver(Observer<? super T> observer, int i) {
            super(i);
            this.f18432f = observer;
            this.f18433g = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18434h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18434h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18432f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18432f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f18433g == size()) {
                this.f18432f.onNext((T) poll());
            }
            offer(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18434h, disposable)) {
                this.f18434h = disposable;
                this.f18432f.onSubscribe(this);
            }
        }
    }

    public ObservableSkipLast(ObservableSource<T> observableSource, int i) {
        super(observableSource);
        this.f18431g = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new SkipLastObserver(observer, this.f18431g));
    }
}
