package io.reactivex.internal.operators.single;

import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.observers.ResumeSingleObserver;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithPublisher.class */
public final class SingleDelayWithPublisher<T, U> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19009f;

    /* renamed from: g */
    final Publisher<U> f19010g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDelayWithPublisher$OtherSubscriber.class */
    static final class OtherSubscriber<T, U> extends AtomicReference<Disposable> implements FlowableSubscriber<U>, Disposable {
        private static final long serialVersionUID = -8565274649390031272L;

        /* renamed from: f */
        final SingleObserver<? super T> f19011f;

        /* renamed from: g */
        final SingleSource<T> f19012g;

        /* renamed from: h */
        boolean f19013h;

        /* renamed from: i */
        Subscription f19014i;

        OtherSubscriber(SingleObserver<? super T> singleObserver, SingleSource<T> singleSource) {
            this.f19011f = singleObserver;
            this.f19012g = singleSource;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19014i.cancel();
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f19013h) {
                this.f19013h = true;
                this.f19012g.mo4457b(new ResumeSingleObserver(this, this.f19011f));
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f19013h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f19013h = true;
            this.f19011f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(U u) {
            this.f19014i.cancel();
            onComplete();
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f19014i, subscription)) {
                this.f19014i = subscription;
                this.f19011f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19010g.mo5c(new OtherSubscriber(singleObserver, this.f19009f));
    }
}
