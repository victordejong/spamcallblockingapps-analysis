package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.internal.fuseable.ScalarCallable;
import io.reactivex.internal.subscriptions.ScalarSubscription;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableJust.class */
public final class FlowableJust<T> extends Flowable<T> implements ScalarCallable<T> {

    /* renamed from: g */
    private final T f16130g;

    public FlowableJust(T t) {
        this.f16130g = t;
    }

    @Override // io.reactivex.internal.fuseable.ScalarCallable, java.util.concurrent.Callable
    public T call() {
        return this.f16130g;
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        subscriber.onSubscribe(new ScalarSubscription(subscriber, this.f16130g));
    }
}
