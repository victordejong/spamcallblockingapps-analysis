package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromPublisher.class */
public final class CompletableFromPublisher<T> extends Completable {

    /* renamed from: f */
    final Publisher<T> f15305f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromPublisher$FromPublisherSubscriber.class */
    static final class FromPublisherSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final CompletableObserver f15306f;

        /* renamed from: g */
        Subscription f15307g;

        FromPublisherSubscriber(CompletableObserver completableObserver) {
            this.f15306f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15307g.cancel();
            this.f15307g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15307g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15306f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15306f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15307g, subscription)) {
                this.f15307g = subscription;
                this.f15306f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15305f.mo5c(new FromPublisherSubscriber(completableObserver));
    }
}
