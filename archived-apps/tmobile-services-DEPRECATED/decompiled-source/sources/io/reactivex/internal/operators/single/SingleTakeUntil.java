package io.reactivex.internal.operators.single;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTakeUntil.class */
public final class SingleTakeUntil<T, U> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19155f;

    /* renamed from: g */
    final Publisher<U> f19156g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilMainObserver.class */
    static final class TakeUntilMainObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -622603812305745221L;

        /* renamed from: f */
        final SingleObserver<? super T> f19157f;

        /* renamed from: g */
        final TakeUntilOtherSubscriber f19158g = new TakeUntilOtherSubscriber(this);

        TakeUntilMainObserver(SingleObserver<? super T> singleObserver) {
            this.f19157f = singleObserver;
        }

        /* renamed from: a */
        void m3581a(Throwable th) {
            Disposable andSet;
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper || (andSet = getAndSet(disposableHelper)) == DisposableHelper.DISPOSED) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            if (andSet != null) {
                andSet.dispose();
            }
            this.f19157f.onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
            this.f19158g.m3580a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19158g.m3580a();
            Disposable disposable = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (disposable == disposableHelper || getAndSet(disposableHelper) == DisposableHelper.DISPOSED) {
                RxJavaPlugins.m3354t(th);
            } else {
                this.f19157f.onError(th);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19158g.m3580a();
            if (getAndSet(DisposableHelper.DISPOSED) != DisposableHelper.DISPOSED) {
                this.f19157f.onSuccess(t);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleTakeUntil$TakeUntilOtherSubscriber.class */
    static final class TakeUntilOtherSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object> {
        private static final long serialVersionUID = 5170026210238877381L;

        /* renamed from: f */
        final TakeUntilMainObserver<?> f19159f;

        TakeUntilOtherSubscriber(TakeUntilMainObserver<?> takeUntilMainObserver) {
            this.f19159f = takeUntilMainObserver;
        }

        /* renamed from: a */
        public void m3580a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            Subscription subscription = get();
            SubscriptionHelper subscriptionHelper = SubscriptionHelper.CANCELLED;
            if (subscription != subscriptionHelper) {
                lazySet(subscriptionHelper);
                this.f19159f.m3581a(new CancellationException());
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19159f.m3581a(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f19159f.m3581a(new CancellationException());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(singleObserver);
        singleObserver.onSubscribe(takeUntilMainObserver);
        this.f19156g.mo5c(takeUntilMainObserver.f19158g);
        this.f19155f.mo4457b(takeUntilMainObserver);
    }
}
