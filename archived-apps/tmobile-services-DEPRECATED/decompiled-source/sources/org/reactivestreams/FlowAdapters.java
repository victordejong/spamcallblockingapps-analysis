package org.reactivestreams;

import java.util.concurrent.Flow;
/* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters.class */
public final class FlowAdapters {

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$FlowPublisherFromReactive.class */
    static final class FlowPublisherFromReactive<T> implements Flow.Publisher<T> {
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$FlowToReactiveProcessor.class */
    static final class FlowToReactiveProcessor<T, U> implements Flow.Processor<T, U> {
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$FlowToReactiveSubscriber.class */
    static final class FlowToReactiveSubscriber<T> implements Flow.Subscriber<T> {
        public FlowToReactiveSubscriber(Subscriber<? super T> subscriber) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$FlowToReactiveSubscription.class */
    static final class FlowToReactiveSubscription implements Flow.Subscription {
        public FlowToReactiveSubscription(Subscription subscription) {
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$ReactivePublisherFromFlow.class */
    static final class ReactivePublisherFromFlow<T> implements Publisher<T> {

        /* renamed from: f */
        final Flow.Publisher<? extends T> f24222f;

        @Override // org.reactivestreams.Publisher
        /* renamed from: c */
        public void mo5c(Subscriber<? super T> subscriber) {
            this.f24222f.subscribe(subscriber == null ? null : new FlowToReactiveSubscriber(subscriber));
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$ReactiveToFlowProcessor.class */
    static final class ReactiveToFlowProcessor<T, U> implements Processor<T, U> {

        /* renamed from: f */
        final Flow.Processor<? super T, ? extends U> f24223f;

        @Override // org.reactivestreams.Publisher
        /* renamed from: c */
        public void mo5c(Subscriber<? super U> subscriber) {
            this.f24223f.subscribe(subscriber == null ? null : new FlowToReactiveSubscriber(subscriber));
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f24223f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f24223f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f24223f.onNext(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f24223f.onSubscribe(subscription == null ? null : new FlowToReactiveSubscription(subscription));
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$ReactiveToFlowSubscriber.class */
    static final class ReactiveToFlowSubscriber<T> implements Subscriber<T> {

        /* renamed from: f */
        final Flow.Subscriber<? super T> f24224f;

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f24224f.onComplete();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f24224f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f24224f.onNext(t);
        }

        @Override // org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            this.f24224f.onSubscribe(subscription == null ? null : new FlowToReactiveSubscription(subscription));
        }
    }

    /* loaded from: classes2-dex2jar.jar:org/reactivestreams/FlowAdapters$ReactiveToFlowSubscription.class */
    static final class ReactiveToFlowSubscription implements Subscription {

        /* renamed from: f */
        final Flow.Subscription f24225f;

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f24225f.cancel();
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            this.f24225f.request(j);
        }
    }

    private FlowAdapters() {
        throw new IllegalStateException("No instances!");
    }
}
