package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.BiPredicate;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.subscriptions.DeferredScalarSubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqual.class */
public final class FlowableSequenceEqual<T> extends Flowable<Boolean> {

    /* renamed from: g */
    final Publisher<? extends T> f16503g;

    /* renamed from: h */
    final Publisher<? extends T> f16504h;

    /* renamed from: i */
    final BiPredicate<? super T, ? super T> f16505i;

    /* renamed from: j */
    final int f16506j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinator.class */
    static final class EqualCoordinator<T> extends DeferredScalarSubscription<Boolean> implements EqualCoordinatorHelper {
        private static final long serialVersionUID = -6178010334400373240L;

        /* renamed from: h */
        final BiPredicate<? super T, ? super T> f16507h;

        /* renamed from: i */
        final EqualSubscriber<T> f16508i;

        /* renamed from: j */
        final EqualSubscriber<T> f16509j;

        /* renamed from: m */
        T f16512m;

        /* renamed from: n */
        T f16513n;

        /* renamed from: l */
        final AtomicInteger f16511l = new AtomicInteger();

        /* renamed from: k */
        final AtomicThrowable f16510k = new AtomicThrowable();

        EqualCoordinator(Subscriber<? super Boolean> subscriber, int i, BiPredicate<? super T, ? super T> biPredicate) {
            super(subscriber);
            this.f16507h = biPredicate;
            this.f16508i = new EqualSubscriber<>(this, i);
            this.f16509j = new EqualSubscriber<>(this, i);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.EqualCoordinatorHelper
        /* renamed from: a */
        public void mo4069a(Throwable th) {
            if (this.f16510k.m3456a(th)) {
                mo4068b();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableSequenceEqual.EqualCoordinatorHelper
        /* renamed from: b */
        public void mo4068b() {
            int addAndGet;
            if (this.f16511l.getAndIncrement() == 0) {
                int i = 1;
                do {
                    SimpleQueue<T> simpleQueue = this.f16508i.f16518j;
                    SimpleQueue<T> simpleQueue2 = this.f16509j.f16518j;
                    if (simpleQueue != null && simpleQueue2 != null) {
                        while (!m3469f()) {
                            if (this.f16510k.get() != null) {
                                m4074j();
                                this.f19405f.onError(this.f16510k.m3455b());
                                return;
                            }
                            boolean z = this.f16508i.f16519k;
                            T t = this.f16512m;
                            T t2 = t;
                            if (t == null) {
                                try {
                                    t2 = simpleQueue.poll();
                                    this.f16512m = t2;
                                } catch (Throwable th) {
                                    Exceptions.m4428b(th);
                                    m4074j();
                                    this.f16510k.m3456a(th);
                                    this.f19405f.onError(this.f16510k.m3455b());
                                    return;
                                }
                            }
                            boolean z2 = false;
                            boolean z3 = t2 == null;
                            boolean z4 = this.f16509j.f16519k;
                            T t3 = this.f16513n;
                            T t4 = t3;
                            if (t3 == null) {
                                try {
                                    t4 = simpleQueue2.poll();
                                    this.f16513n = t4;
                                } catch (Throwable th2) {
                                    Exceptions.m4428b(th2);
                                    m4074j();
                                    this.f16510k.m3456a(th2);
                                    this.f19405f.onError(this.f16510k.m3455b());
                                    return;
                                }
                            }
                            if (t4 == null) {
                                z2 = true;
                            }
                            if (z && z4 && z3 && z2) {
                                m3470d(Boolean.TRUE);
                                return;
                            } else if (z && z4 && z3 != z2) {
                                m4074j();
                                m3470d(Boolean.FALSE);
                                return;
                            } else if (!z3 && !z2) {
                                try {
                                    if (!this.f16507h.mo4360a(t2, t4)) {
                                        m4074j();
                                        m3470d(Boolean.FALSE);
                                        return;
                                    }
                                    this.f16512m = null;
                                    this.f16513n = null;
                                    this.f16508i.m4070c();
                                    this.f16509j.m4070c();
                                } catch (Throwable th3) {
                                    Exceptions.m4428b(th3);
                                    m4074j();
                                    this.f16510k.m3456a(th3);
                                    this.f19405f.onError(this.f16510k.m3455b());
                                    return;
                                }
                            }
                        }
                        this.f16508i.m4071b();
                        this.f16509j.m4071b();
                        return;
                    } else if (m3469f()) {
                        this.f16508i.m4071b();
                        this.f16509j.m4071b();
                        return;
                    } else if (this.f16510k.get() != null) {
                        m4074j();
                        this.f19405f.onError(this.f16510k.m3455b());
                        return;
                    }
                    addAndGet = this.f16511l.addAndGet(-i);
                    i = addAndGet;
                } while (addAndGet != 0);
            }
        }

        @Override // io.reactivex.internal.subscriptions.DeferredScalarSubscription, org.reactivestreams.Subscription
        public void cancel() {
            super.cancel();
            this.f16508i.m4072a();
            this.f16509j.m4072a();
            if (this.f16511l.getAndIncrement() == 0) {
                this.f16508i.m4071b();
                this.f16509j.m4071b();
            }
        }

        /* renamed from: j */
        void m4074j() {
            this.f16508i.m4072a();
            this.f16508i.m4071b();
            this.f16509j.m4072a();
            this.f16509j.m4071b();
        }

        /* renamed from: k */
        void m4073k(Publisher<? extends T> publisher, Publisher<? extends T> publisher2) {
            publisher.mo5c(this.f16508i);
            publisher2.mo5c(this.f16509j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualCoordinatorHelper.class */
    public interface EqualCoordinatorHelper {
        /* renamed from: a */
        void mo4069a(Throwable th);

        /* renamed from: b */
        void mo4068b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableSequenceEqual$EqualSubscriber.class */
    public static final class EqualSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = 4804128302091633067L;

        /* renamed from: f */
        final EqualCoordinatorHelper f16514f;

        /* renamed from: g */
        final int f16515g;

        /* renamed from: h */
        final int f16516h;

        /* renamed from: i */
        long f16517i;

        /* renamed from: j */
        volatile SimpleQueue<T> f16518j;

        /* renamed from: k */
        volatile boolean f16519k;

        /* renamed from: l */
        int f16520l;

        /* JADX INFO: Access modifiers changed from: package-private */
        public EqualSubscriber(EqualCoordinatorHelper equalCoordinatorHelper, int i) {
            this.f16514f = equalCoordinatorHelper;
            this.f16516h = i - (i >> 2);
            this.f16515g = i;
        }

        /* renamed from: a */
        public void m4072a() {
            SubscriptionHelper.cancel(this);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b */
        public void m4071b() {
            SimpleQueue<T> simpleQueue = this.f16518j;
            if (simpleQueue != null) {
                simpleQueue.clear();
            }
        }

        /* renamed from: c */
        public void m4070c() {
            if (this.f16520l != 1) {
                long j = this.f16517i + 1;
                if (j >= this.f16516h) {
                    this.f16517i = 0L;
                    get().request(j);
                    return;
                }
                this.f16517i = j;
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16519k = true;
            this.f16514f.mo4068b();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16514f.mo4069a(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (this.f16520l != 0 || this.f16518j.offer(t)) {
                this.f16514f.mo4068b();
            } else {
                onError(new MissingBackpressureException());
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.setOnce(this, subscription)) {
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f16520l = requestFusion;
                        this.f16518j = queueSubscription;
                        this.f16519k = true;
                        this.f16514f.mo4068b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f16520l = requestFusion;
                        this.f16518j = queueSubscription;
                        subscription.request(this.f16515g);
                        return;
                    }
                }
                this.f16518j = new SpscArrayQueue(this.f16515g);
                subscription.request(this.f16515g);
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super Boolean> subscriber) {
        EqualCoordinator equalCoordinator = new EqualCoordinator(subscriber, this.f16506j, this.f16505i);
        subscriber.onSubscribe(equalCoordinator);
        equalCoordinator.m4073k(this.f16503g, this.f16504h);
    }
}
