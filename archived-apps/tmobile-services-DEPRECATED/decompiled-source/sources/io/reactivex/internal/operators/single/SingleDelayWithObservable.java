package io.reactivex.internal.operators.single;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.ResumeSingleObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithObservable.class */
public final class SingleDelayWithObservable<T, U> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19004f;

    /* renamed from: g */
    final ObservableSource<U> f19005g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithObservable$OtherSubscriber.class */
    static final class OtherSubscriber<T, U> extends AtomicReference<Disposable> implements Observer<U>, Disposable {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: f */
        final SingleObserver<? super T> f19006f;

        /* renamed from: g */
        final SingleSource<T> f19007g;

        /* renamed from: h */
        boolean f19008h;

        OtherSubscriber(SingleObserver<? super T> singleObserver, SingleSource<T> singleSource) {
            this.f19006f = singleObserver;
            this.f19007g = singleSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f19008h) {
                this.f19008h = true;
                this.f19007g.mo4457b(new ResumeSingleObserver(this, this.f19006f));
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f19008h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f19008h = true;
            this.f19006f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            get().dispose();
            onComplete();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.set(this, disposable)) {
                this.f19006f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19005g.subscribe(new OtherSubscriber(singleObserver, this.f19004f));
    }
}
