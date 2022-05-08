package io.reactivex.internal.operators.single;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapPublisher.class */
public final class SingleFlatMapPublisher<T, R> extends Flowable<R> {

    /* renamed from: g */
    final SingleSource<T> f19108g;

    /* renamed from: h */
    final Function<? super T, ? extends Publisher<? extends R>> f19109h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleFlatMapPublisher$SingleFlatMapPublisherObserver.class */
    static final class SingleFlatMapPublisherObserver<S, T> extends AtomicLong implements SingleObserver<S>, FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = 7759721921468635667L;

        /* renamed from: f */
        final Subscriber<? super T> f19110f;

        /* renamed from: g */
        final Function<? super S, ? extends Publisher<? extends T>> f19111g;

        /* renamed from: h */
        final AtomicReference<Subscription> f19112h = new AtomicReference<>();

        /* renamed from: i */
        Disposable f19113i;

        SingleFlatMapPublisherObserver(Subscriber<? super T> subscriber, Function<? super S, ? extends Publisher<? extends T>> function) {
            this.f19110f = subscriber;
            this.f19111g = function;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19113i.dispose();
            SubscriptionHelper.cancel(this.f19112h);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f19110f.onComplete();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19110f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f19110f.onNext(t);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19113i = disposable;
            this.f19110f.onSubscribe(this);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.deferredSetOnce(this.f19112h, this, subscription);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(S s) {
            try {
                Object apply = this.f19111g.apply(s);
                ObjectHelper.m4363e(apply, "the mapper returned a null Publisher");
                ((Publisher) apply).mo5c(this);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19110f.onError(th);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            SubscriptionHelper.deferredRequest(this.f19112h, this, j);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        this.f19108g.mo4457b(new SingleFlatMapPublisherObserver(subscriber, this.f19109h));
    }
}
