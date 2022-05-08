package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Predicate;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAnySingle.class */
public final class FlowableAnySingle<T> extends Single<Boolean> implements FuseToFlowable<Boolean> {
    final Predicate<? super T> predicate;
    final Flowable<T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAnySingle$AnySubscriber.class */
    static final class AnySubscriber<T> implements FlowableSubscriber<T>, Disposable {
        final SingleObserver<? super Boolean> actual;
        boolean done;
        final Predicate<? super T> predicate;

        /* renamed from: s */
        Subscription f383s;

        AnySubscriber(SingleObserver<? super Boolean> singleObserver, Predicate<? super T> predicate) {
            this.actual = singleObserver;
            this.predicate = predicate;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f383s.cancel();
            this.f383s = SubscriptionHelper.CANCELLED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f383s == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.done) {
                this.done = true;
                this.f383s = SubscriptionHelper.CANCELLED;
                this.actual.onSuccess(false);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaPlugins.onError(th);
                return;
            }
            this.done = true;
            this.f383s = SubscriptionHelper.CANCELLED;
            this.actual.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.done) {
                try {
                    if (this.predicate.test(t)) {
                        this.done = true;
                        this.f383s.cancel();
                        this.f383s = SubscriptionHelper.CANCELLED;
                        this.actual.onSuccess(true);
                    }
                } catch (Throwable th) {
                    Exceptions.throwIfFatal(th);
                    this.f383s.cancel();
                    this.f383s = SubscriptionHelper.CANCELLED;
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f383s, subscription)) {
                this.f383s = subscription;
                this.actual.onSubscribe(this);
                subscription.request(Long.MAX_VALUE);
            }
        }
    }

    public FlowableAnySingle(Flowable<T> flowable, Predicate<? super T> predicate) {
        this.source = flowable;
        this.predicate = predicate;
    }

    @Override // io.reactivex.internal.fuseable.FuseToFlowable
    public Flowable<Boolean> fuseToFlowable() {
        return RxJavaPlugins.onAssembly(new FlowableAny(this.source, this.predicate));
    }

    @Override // io.reactivex.Single
    protected void subscribeActual(SingleObserver<? super Boolean> singleObserver) {
        this.source.subscribe((FlowableSubscriber) new AnySubscriber(singleObserver, this.predicate));
    }
}
