package io.reactivex.internal.operators.parallel;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFlowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduceFull.class */
public final class ParallelReduceFull<T> extends Flowable<T> {

    /* renamed from: g */
    final ParallelFlowable<? extends T> f18920g;

    /* renamed from: h */
    final BiFunction<T, T, T> f18921h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullInnerSubscriber.class */
    public static final class ParallelReduceFullInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -7954444275102466525L;

        /* renamed from: f */
        final ParallelReduceFullMainSubscriber<T> f18922f;

        /* renamed from: g */
        final BiFunction<T, T, T> f18923g;

        /* renamed from: h */
        T f18924h;

        /* renamed from: i */
        boolean f18925i;

        ParallelReduceFullInnerSubscriber(ParallelReduceFullMainSubscriber<T> parallelReduceFullMainSubscriber, BiFunction<T, T, T> biFunction) {
            this.f18922f = parallelReduceFullMainSubscriber;
            this.f18923g = biFunction;
        }

        /* renamed from: a */
        void m3603a() {
            SubscriptionHelper.cancel(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f18925i) {
                this.f18925i = true;
                this.f18922f.m3600k(this.f18924h);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f18925i) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18925i = true;
            this.f18922f.m3602a(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f18925i) {
                T t2 = this.f18924h;
                if (t2 == null) {
                    this.f18924h = t;
                    return;
                }
                try {
                    T apply = this.f18923g.apply(t2, t);
                    ObjectHelper.m4363e(apply, "The reducer returned a null value");
                    this.f18924h = apply;
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    get().cancel();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduceFull$ParallelReduceFullMainSubscriber.class */
    public static final class ParallelReduceFullMainSubscriber<T> extends DeferredScalarSubscription<T> {
        private static final long serialVersionUID = -5370107872170712765L;

        /* renamed from: h */
        final ParallelReduceFullInnerSubscriber<T>[] f18926h;

        /* renamed from: i */
        final BiFunction<T, T, T> f18927i;

        /* renamed from: j */
        final AtomicReference<SlotPair<T>> f18928j = new AtomicReference<>();

        /* renamed from: k */
        final AtomicInteger f18929k = new AtomicInteger();

        /* renamed from: l */
        final AtomicReference<Throwable> f18930l = new AtomicReference<>();

        ParallelReduceFullMainSubscriber(Subscriber<? super T> subscriber, int i, BiFunction<T, T, T> biFunction) {
            super(subscriber);
            ParallelReduceFullInnerSubscriber<T>[] parallelReduceFullInnerSubscriberArr = new ParallelReduceFullInnerSubscriber[i];
            for (int i2 = 0; i2 < i; i2++) {
                parallelReduceFullInnerSubscriberArr[i2] = new ParallelReduceFullInnerSubscriber<>(this, biFunction);
            }
            this.f18926h = parallelReduceFullInnerSubscriberArr;
            this.f18927i = biFunction;
            this.f18929k.lazySet(i);
        }

        /* renamed from: a */
        void m3602a(Throwable th) {
            if (this.f18930l.compareAndSet(null, th)) {
                cancel();
                this.f19405f.onError(th);
            } else if (th != this.f18930l.get()) {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            for (ParallelReduceFullInnerSubscriber<T> parallelReduceFullInnerSubscriber : this.f18926h) {
                parallelReduceFullInnerSubscriber.m3603a();
            }
        }

        /* renamed from: j */
        SlotPair<T> m3601j(T t) {
            SlotPair<T> slotPair;
            int b;
            while (true) {
                SlotPair<T> slotPair2 = this.f18928j.get();
                slotPair = slotPair2;
                if (slotPair2 == null) {
                    SlotPair<T> slotPair3 = new SlotPair<>();
                    slotPair = slotPair3;
                    if (!this.f18928j.compareAndSet(null, slotPair3)) {
                        continue;
                    }
                }
                b = slotPair.m3598b();
                if (b >= 0) {
                    break;
                }
                this.f18928j.compareAndSet(slotPair, null);
            }
            if (b == 0) {
                slotPair.f18931f = t;
            } else {
                slotPair.f18932g = t;
            }
            if (!slotPair.m3599a()) {
                return null;
            }
            this.f18928j.compareAndSet(slotPair, null);
            return slotPair;
        }

        /* renamed from: k */
        void m3600k(T t) {
            if (t != null) {
                while (true) {
                    SlotPair<T> j = m3601j(t);
                    if (j == null) {
                        break;
                    }
                    try {
                        t = this.f18927i.apply(j.f18931f, j.f18932g);
                        ObjectHelper.m4363e(t, "The reducer returned a null value");
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        m3602a(th);
                        return;
                    }
                }
            }
            if (this.f18929k.decrementAndGet() == 0) {
                SlotPair<T> slotPair = this.f18928j.get();
                this.f18928j.lazySet(null);
                if (slotPair != null) {
                    m3470d(slotPair.f18931f);
                } else {
                    this.f19405f.onComplete();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/parallel/ParallelReduceFull$SlotPair.class */
    public static final class SlotPair<T> extends AtomicInteger {
        private static final long serialVersionUID = 473971317683868662L;

        /* renamed from: f */
        T f18931f;

        /* renamed from: g */
        T f18932g;

        /* renamed from: h */
        final AtomicInteger f18933h = new AtomicInteger();

        SlotPair() {
        }

        /* renamed from: a */
        boolean m3599a() {
            return this.f18933h.incrementAndGet() == 2;
        }

        /* renamed from: b */
        int m3598b() {
            int i;
            do {
                i = get();
                if (i >= 2) {
                    return -1;
                }
            } while (!compareAndSet(i, i + 1));
            return i;
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super T> subscriber) {
        ParallelReduceFullMainSubscriber parallelReduceFullMainSubscriber = new ParallelReduceFullMainSubscriber(subscriber, this.f18920g.mo3379a(), this.f18921h);
        subscriber.onSubscribe(parallelReduceFullMainSubscriber);
        this.f18920g.mo3378b(parallelReduceFullMainSubscriber.f18926h);
    }
}
