package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.subscriptions.SubscriptionArbiter;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatArray.class */
public final class FlowableConcatArray<T> extends Flowable<T> {

    /* renamed from: g */
    final Publisher<? extends T>[] f15632g;

    /* renamed from: h */
    final boolean f15633h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableConcatArray$ConcatArraySubscriber.class */
    static final class ConcatArraySubscriber<T> extends SubscriptionArbiter implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -8158322871608889516L;

        /* renamed from: n */
        final Subscriber<? super T> f15634n;

        /* renamed from: o */
        final Publisher<? extends T>[] f15635o;

        /* renamed from: p */
        final boolean f15636p;

        /* renamed from: q */
        final AtomicInteger f15637q = new AtomicInteger();

        /* renamed from: r */
        int f15638r;

        /* renamed from: s */
        List<Throwable> f15639s;

        /* renamed from: t */
        long f15640t;

        ConcatArraySubscriber(Publisher<? extends T>[] publisherArr, boolean z, Subscriber<? super T> subscriber) {
            super(false);
            this.f15634n = subscriber;
            this.f15635o = publisherArr;
            this.f15636p = z;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (this.f15637q.getAndIncrement() == 0) {
                Publisher<? extends T>[] publisherArr = this.f15635o;
                int length = publisherArr.length;
                int i = this.f15638r;
                while (i != length) {
                    Publisher<? extends T> publisher = publisherArr[i];
                    if (publisher == null) {
                        NullPointerException nullPointerException = new NullPointerException("A Publisher entry is null");
                        if (this.f15636p) {
                            List<Throwable> list = this.f15639s;
                            List<Throwable> list2 = list;
                            if (list == null) {
                                list2 = new ArrayList<>((length - i) + 1);
                                this.f15639s = list2;
                            }
                            list2.add(nullPointerException);
                            i++;
                        } else {
                            this.f15634n.onError(nullPointerException);
                            return;
                        }
                    } else {
                        long j = this.f15640t;
                        if (j != 0) {
                            this.f15640t = 0L;
                            m3463g(j);
                        }
                        publisher.mo5c(this);
                        i++;
                        this.f15638r = i;
                        if (this.f15637q.decrementAndGet() == 0) {
                            return;
                        }
                    }
                }
                List<Throwable> list3 = this.f15639s;
                if (list3 == null) {
                    this.f15634n.onComplete();
                } else if (list3.size() == 1) {
                    this.f15634n.onError(list3.get(0));
                } else {
                    this.f15634n.onError(new CompositeException(list3));
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15636p) {
                List<Throwable> list = this.f15639s;
                List<Throwable> list2 = list;
                if (list == null) {
                    list2 = new ArrayList<>((this.f15635o.length - this.f15638r) + 1);
                    this.f15639s = list2;
                }
                list2.add(th);
                onComplete();
                return;
            }
            this.f15634n.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15640t++;
            this.f15634n.onNext(t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            m3462h(subscription);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        ConcatArraySubscriber concatArraySubscriber = new ConcatArraySubscriber(this.f15632g, this.f15633h, subscriber);
        subscriber.onSubscribe(concatArraySubscriber);
        concatArraySubscriber.onComplete();
    }
}
