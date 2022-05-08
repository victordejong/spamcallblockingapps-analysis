package io.reactivex.internal.operators.flowable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable.class */
public final class FlowableIgnoreElementsCompletable<T> extends Completable implements FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f16062f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableIgnoreElementsCompletable$IgnoreElementsSubscriber.class */
    static final class IgnoreElementsSubscriber<T> implements FlowableSubscriber<T>, Disposable {

        /* renamed from: f */
        final CompletableObserver f16063f;

        /* renamed from: g */
        Subscription f16064g;

        IgnoreElementsSubscriber(CompletableObserver completableObserver) {
            this.f16063f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f16064g.cancel();
            this.f16064g = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f16064g == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16064g = SubscriptionHelper.CANCELLED;
            this.f16063f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16064g = SubscriptionHelper.CANCELLED;
            this.f16063f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f16064g, subscription)) {
                this.f16064g = subscription;
                this.f16063f.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f16062f.m4493v(new IgnoreElementsSubscriber(completableObserver));
    }
}
