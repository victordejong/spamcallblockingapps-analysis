package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableIntervalRange.class */
public final class FlowableIntervalRange extends Flowable<Long> {

    /* renamed from: g */
    final Scheduler f16098g;

    /* renamed from: h */
    final long f16099h;

    /* renamed from: i */
    final long f16100i;

    /* renamed from: j */
    final long f16101j;

    /* renamed from: k */
    final long f16102k;

    /* renamed from: l */
    final TimeUnit f16103l;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableIntervalRange$IntervalRangeSubscriber.class */
    static final class IntervalRangeSubscriber extends AtomicLong implements Subscription, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: f */
        final Subscriber<? super Long> f16104f;

        /* renamed from: g */
        final long f16105g;

        /* renamed from: h */
        long f16106h;

        /* renamed from: i */
        final AtomicReference<Disposable> f16107i = new AtomicReference<>();

        IntervalRangeSubscriber(Subscriber<? super Long> subscriber, long j, long j2) {
            this.f16104f = subscriber;
            this.f16106h = j;
            this.f16105g = j2;
        }

        /* renamed from: a */
        public void m4180a(Disposable disposable) {
            DisposableHelper.setOnce(this.f16107i, disposable);
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            DisposableHelper.dispose(this.f16107i);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this, j);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16107i.get() != DisposableHelper.DISPOSED) {
                long j = get();
                if (j != 0) {
                    long j2 = this.f16106h;
                    this.f16104f.onNext(Long.valueOf(j2));
                    if (j2 == this.f16105g) {
                        if (this.f16107i.get() != DisposableHelper.DISPOSED) {
                            this.f16104f.onComplete();
                        }
                        DisposableHelper.dispose(this.f16107i);
                        return;
                    }
                    this.f16106h = j2 + 1;
                    if (j != Long.MAX_VALUE) {
                        decrementAndGet();
                        return;
                    }
                    return;
                }
                Subscriber<? super Long> subscriber = this.f16104f;
                subscriber.onError(new MissingBackpressureException("Can't deliver value " + this.f16106h + " due to lack of requests"));
                DisposableHelper.dispose(this.f16107i);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Long> subscriber) {
        IntervalRangeSubscriber intervalRangeSubscriber = new IntervalRangeSubscriber(subscriber, this.f16099h, this.f16100i);
        subscriber.onSubscribe(intervalRangeSubscriber);
        Scheduler scheduler = this.f16098g;
        if (scheduler instanceof TrampolineScheduler) {
            Scheduler.Worker b = scheduler.mo3232b();
            intervalRangeSubscriber.m4180a(b);
            b.mo3531d(intervalRangeSubscriber, this.f16101j, this.f16102k, this.f16103l);
            return;
        }
        intervalRangeSubscriber.m4180a(scheduler.mo3501f(intervalRangeSubscriber, this.f16101j, this.f16102k, this.f16103l));
    }
}
