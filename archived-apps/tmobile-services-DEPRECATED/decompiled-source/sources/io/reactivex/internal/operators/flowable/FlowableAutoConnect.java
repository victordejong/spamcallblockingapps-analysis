package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.disposables.Disposable;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Consumer;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableAutoConnect.class */
public final class FlowableAutoConnect<T> extends Flowable<T> {

    /* renamed from: g */
    final ConnectableFlowable<? extends T> f15471g;

    /* renamed from: h */
    final int f15472h;

    /* renamed from: i */
    final Consumer<? super Disposable> f15473i;

    /* renamed from: j */
    final AtomicInteger f15474j;

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super T> subscriber) {
        this.f15471g.mo5c(subscriber);
        if (this.f15474j.incrementAndGet() == this.f15472h) {
            this.f15471g.mo4105C(this.f15473i);
        }
    }
}
