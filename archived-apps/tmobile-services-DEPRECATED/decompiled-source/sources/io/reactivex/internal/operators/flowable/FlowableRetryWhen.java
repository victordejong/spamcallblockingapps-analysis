package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableRepeatWhen;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.processors.FlowableProcessor;
import io.reactivex.processors.UnicastProcessor;
import io.reactivex.subscribers.SerializedSubscriber;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryWhen.class */
public final class FlowableRetryWhen<T> extends AbstractFlowableWithUpstream<T, T> {

    /* renamed from: h */
    final Function<? super Flowable<Throwable>, ? extends Publisher<?>> f16457h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableRetryWhen$RetryWhenSubscriber.class */
    static final class RetryWhenSubscriber<T> extends FlowableRepeatWhen.WhenSourceSubscriber<T, Throwable> {
        private static final long serialVersionUID = -2680129890138081029L;

        RetryWhenSubscriber(Subscriber<? super T> subscriber, FlowableProcessor<Throwable> flowableProcessor, Subscription subscription) {
            super(subscriber, flowableProcessor, subscription);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16397p.cancel();
            this.f16395n.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            m4115i(th);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        FlowableProcessor<T> C = UnicastProcessor.m3311F(8).m3338C();
        try {
            Object apply = this.f16457h.apply(C);
            ObjectHelper.m4363e(apply, "handler returned a null Publisher");
            Publisher publisher = (Publisher) apply;
            FlowableRepeatWhen.WhenReceiver whenReceiver = new FlowableRepeatWhen.WhenReceiver(this.f15411g);
            RetryWhenSubscriber retryWhenSubscriber = new RetryWhenSubscriber(serializedSubscriber, C, whenReceiver);
            whenReceiver.f16394i = retryWhenSubscriber;
            subscriber.onSubscribe(retryWhenSubscriber);
            publisher.mo5c(whenReceiver);
            whenReceiver.onNext(0);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptySubscription.error(th, subscriber);
        }
    }
}
