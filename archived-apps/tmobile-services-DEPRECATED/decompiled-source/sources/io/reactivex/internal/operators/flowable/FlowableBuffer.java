package io.reactivex.internal.operators.flowable;

import io.reactivex.FlowableSubscriber;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BooleanSupplier;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBuffer.class */
public final class FlowableBuffer<T, C extends Collection<? super T>> extends AbstractFlowableWithUpstream<T, C> {

    /* renamed from: h */
    final int f15475h;

    /* renamed from: i */
    final int f15476i;

    /* renamed from: j */
    final Callable<C> f15477j;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferExactSubscriber.class */
    static final class PublisherBufferExactSubscriber<T, C extends Collection<? super T>> implements FlowableSubscriber<T>, Subscription {

        /* renamed from: f */
        final Subscriber<? super C> f15478f;

        /* renamed from: g */
        final Callable<C> f15479g;

        /* renamed from: h */
        final int f15480h;

        /* renamed from: i */
        C f15481i;

        /* renamed from: j */
        Subscription f15482j;

        /* renamed from: k */
        boolean f15483k;

        /* renamed from: l */
        int f15484l;

        PublisherBufferExactSubscriber(Subscriber<? super C> subscriber, int i, Callable<C> callable) {
            this.f15478f = subscriber;
            this.f15480h = i;
            this.f15479g = callable;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15482j.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15483k) {
                this.f15483k = true;
                C c = this.f15481i;
                if (c != null && !c.isEmpty()) {
                    this.f15478f.onNext(c);
                }
                this.f15478f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15483k) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15483k = true;
            this.f15478f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15483k) {
                C c = this.f15481i;
                C c2 = c;
                if (c == null) {
                    try {
                        C call = this.f15479g.call();
                        ObjectHelper.m4363e(call, "The bufferSupplier returned a null buffer");
                        c2 = call;
                        this.f15481i = c2;
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        cancel();
                        onError(th);
                        return;
                    }
                }
                c2.add(t);
                int i = this.f15484l + 1;
                if (i == this.f15480h) {
                    this.f15484l = 0;
                    this.f15481i = null;
                    this.f15478f.onNext(c2);
                    return;
                }
                this.f15484l = i;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15482j, subscription)) {
                this.f15482j = subscription;
                this.f15478f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                this.f15482j.request(BackpressureHelper.m3451d(j, this.f15480h));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferOverlappingSubscriber.class */
    static final class PublisherBufferOverlappingSubscriber<T, C extends Collection<? super T>> extends AtomicLong implements FlowableSubscriber<T>, Subscription, BooleanSupplier {
        private static final long serialVersionUID = -7370244972039324525L;

        /* renamed from: f */
        final Subscriber<? super C> f15485f;

        /* renamed from: g */
        final Callable<C> f15486g;

        /* renamed from: h */
        final int f15487h;

        /* renamed from: i */
        final int f15488i;

        /* renamed from: l */
        Subscription f15491l;

        /* renamed from: m */
        boolean f15492m;

        /* renamed from: n */
        int f15493n;

        /* renamed from: o */
        volatile boolean f15494o;

        /* renamed from: p */
        long f15495p;

        /* renamed from: k */
        final AtomicBoolean f15490k = new AtomicBoolean();

        /* renamed from: j */
        final ArrayDeque<C> f15489j = new ArrayDeque<>();

        PublisherBufferOverlappingSubscriber(Subscriber<? super C> subscriber, int i, int i2, Callable<C> callable) {
            this.f15485f = subscriber;
            this.f15487h = i;
            this.f15488i = i2;
            this.f15486g = callable;
        }

        @Override // io.reactivex.functions.BooleanSupplier
        /* renamed from: a */
        public boolean mo4309a() {
            return this.f15494o;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15494o = true;
            this.f15491l.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15492m) {
                this.f15492m = true;
                long j = this.f15495p;
                if (j != 0) {
                    BackpressureHelper.m3450e(this, j);
                }
                QueueDrainHelper.m3399g(this.f15485f, this.f15489j, this, this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15492m) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15492m = true;
            this.f15489j.clear();
            this.f15485f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15492m) {
                ArrayDeque<C> arrayDeque = this.f15489j;
                int i = this.f15493n;
                int i2 = i + 1;
                if (i == 0) {
                    try {
                        C call = this.f15486g.call();
                        ObjectHelper.m4363e(call, "The bufferSupplier returned a null buffer");
                        arrayDeque.offer(call);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        cancel();
                        onError(th);
                        return;
                    }
                }
                C peek = arrayDeque.peek();
                if (peek != null && peek.size() + 1 == this.f15487h) {
                    arrayDeque.poll();
                    peek.add(t);
                    this.f15495p++;
                    this.f15485f.onNext(peek);
                }
                Iterator<C> it = arrayDeque.iterator();
                while (it.hasNext()) {
                    it.next().add(t);
                }
                int i3 = i2;
                if (i2 == this.f15488i) {
                    i3 = 0;
                }
                this.f15493n = i3;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15491l, subscription)) {
                this.f15491l = subscription;
                this.f15485f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j) && !QueueDrainHelper.m3397i(j, this.f15485f, this.f15489j, this, this)) {
                if (this.f15490k.get() || !this.f15490k.compareAndSet(false, true)) {
                    this.f15491l.request(BackpressureHelper.m3451d(this.f15488i, j));
                    return;
                }
                this.f15491l.request(BackpressureHelper.m3452c(this.f15487h, BackpressureHelper.m3451d(this.f15488i, j - 1)));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBuffer$PublisherBufferSkipSubscriber.class */
    static final class PublisherBufferSkipSubscriber<T, C extends Collection<? super T>> extends AtomicInteger implements FlowableSubscriber<T>, Subscription {
        private static final long serialVersionUID = -5616169793639412593L;

        /* renamed from: f */
        final Subscriber<? super C> f15496f;

        /* renamed from: g */
        final Callable<C> f15497g;

        /* renamed from: h */
        final int f15498h;

        /* renamed from: i */
        final int f15499i;

        /* renamed from: j */
        C f15500j;

        /* renamed from: k */
        Subscription f15501k;

        /* renamed from: l */
        boolean f15502l;

        /* renamed from: m */
        int f15503m;

        PublisherBufferSkipSubscriber(Subscriber<? super C> subscriber, int i, int i2, Callable<C> callable) {
            this.f15496f = subscriber;
            this.f15498h = i;
            this.f15499i = i2;
            this.f15497g = callable;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15501k.cancel();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (!this.f15502l) {
                this.f15502l = true;
                C c = this.f15500j;
                this.f15500j = null;
                if (c != null) {
                    this.f15496f.onNext(c);
                }
                this.f15496f.onComplete();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15502l) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f15502l = true;
            this.f15500j = null;
            this.f15496f.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            if (!this.f15502l) {
                C c = this.f15500j;
                int i = this.f15503m;
                int i2 = i + 1;
                if (i == 0) {
                    try {
                        C call = this.f15497g.call();
                        ObjectHelper.m4363e(call, "The bufferSupplier returned a null buffer");
                        c = call;
                        this.f15500j = c;
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        cancel();
                        onError(th);
                        return;
                    }
                }
                if (c != null) {
                    c.add(t);
                    if (c.size() == this.f15498h) {
                        this.f15500j = null;
                        this.f15496f.onNext(c);
                    }
                }
                int i3 = i2;
                if (i2 == this.f15499i) {
                    i3 = 0;
                }
                this.f15503m = i3;
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15501k, subscription)) {
                this.f15501k = subscription;
                this.f15496f.onSubscribe(this);
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (!SubscriptionHelper.validate(j)) {
                return;
            }
            if (get() != 0 || !compareAndSet(0, 1)) {
                this.f15501k.request(BackpressureHelper.m3451d(this.f15499i, j));
                return;
            }
            this.f15501k.request(BackpressureHelper.m3452c(BackpressureHelper.m3451d(j, this.f15498h), BackpressureHelper.m3451d(this.f15499i - this.f15498h, j - 1)));
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super C> subscriber) {
        int i = this.f15475h;
        int i2 = this.f15476i;
        if (i == i2) {
            this.f15411g.m4493v(new PublisherBufferExactSubscriber(subscriber, i, this.f15477j));
        } else if (i2 > i) {
            this.f15411g.m4493v(new PublisherBufferSkipSubscriber(subscriber, this.f15475h, this.f15476i, this.f15477j));
        } else {
            this.f15411g.m4493v(new PublisherBufferOverlappingSubscriber(subscriber, this.f15475h, this.f15476i, this.f15477j));
        }
    }
}
