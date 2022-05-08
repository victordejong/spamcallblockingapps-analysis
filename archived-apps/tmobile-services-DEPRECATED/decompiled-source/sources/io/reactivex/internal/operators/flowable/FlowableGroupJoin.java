package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.processors.UnicastProcessor;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupJoin.class */
public final class FlowableGroupJoin<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AbstractFlowableWithUpstream<TLeft, R> {

    /* renamed from: h */
    final Publisher<? extends TRight> f16031h;

    /* renamed from: i */
    final Function<? super TLeft, ? extends Publisher<TLeftEnd>> f16032i;

    /* renamed from: j */
    final Function<? super TRight, ? extends Publisher<TRightEnd>> f16033j;

    /* renamed from: k */
    final BiFunction<? super TLeft, ? super Flowable<TRight>, ? extends R> f16034k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupJoin$GroupJoinSubscription.class */
    static final class GroupJoinSubscription<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements Subscription, JoinSupport {
        private static final long serialVersionUID = -6071216598687999801L;

        /* renamed from: t */
        static final Integer f16035t = 1;

        /* renamed from: u */
        static final Integer f16036u = 2;

        /* renamed from: v */
        static final Integer f16037v = 3;

        /* renamed from: w */
        static final Integer f16038w = 4;

        /* renamed from: f */
        final Subscriber<? super R> f16039f;

        /* renamed from: m */
        final Function<? super TLeft, ? extends Publisher<TLeftEnd>> f16046m;

        /* renamed from: n */
        final Function<? super TRight, ? extends Publisher<TRightEnd>> f16047n;

        /* renamed from: o */
        final BiFunction<? super TLeft, ? super Flowable<TRight>, ? extends R> f16048o;

        /* renamed from: q */
        int f16050q;

        /* renamed from: r */
        int f16051r;

        /* renamed from: s */
        volatile boolean f16052s;

        /* renamed from: g */
        final AtomicLong f16040g = new AtomicLong();

        /* renamed from: i */
        final CompositeDisposable f16042i = new CompositeDisposable();

        /* renamed from: h */
        final SpscLinkedArrayQueue<Object> f16041h = new SpscLinkedArrayQueue<>(Flowable.m4511a());

        /* renamed from: j */
        final Map<Integer, UnicastProcessor<TRight>> f16043j = new LinkedHashMap();

        /* renamed from: k */
        final Map<Integer, TRight> f16044k = new LinkedHashMap();

        /* renamed from: l */
        final AtomicReference<Throwable> f16045l = new AtomicReference<>();

        /* renamed from: p */
        final AtomicInteger f16049p = new AtomicInteger(2);

        GroupJoinSubscription(Subscriber<? super R> subscriber, Function<? super TLeft, ? extends Publisher<TLeftEnd>> function, Function<? super TRight, ? extends Publisher<TRightEnd>> function2, BiFunction<? super TLeft, ? super Flowable<TRight>, ? extends R> biFunction) {
            this.f16039f = subscriber;
            this.f16046m = function;
            this.f16047n = function2;
            this.f16048o = biFunction;
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: a */
        public void mo4179a(Throwable th) {
            if (ExceptionHelper.m3438a(this.f16045l, th)) {
                this.f16049p.decrementAndGet();
                m4196g();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: b */
        public void mo4178b(Throwable th) {
            if (ExceptionHelper.m3438a(this.f16045l, th)) {
                m4196g();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: c */
        public void mo4177c(boolean z, Object obj) {
            synchronized (this) {
                this.f16041h.m3545o(z ? f16035t : f16036u, obj);
            }
            m4196g();
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f16052s) {
                this.f16052s = true;
                m4197f();
                if (getAndIncrement() == 0) {
                    this.f16041h.clear();
                }
            }
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: d */
        public void mo4176d(boolean z, LeftRightEndSubscriber leftRightEndSubscriber) {
            synchronized (this) {
                this.f16041h.m3545o(z ? f16037v : f16038w, leftRightEndSubscriber);
            }
            m4196g();
        }

        @Override // io.reactivex.internal.operators.flowable.FlowableGroupJoin.JoinSupport
        /* renamed from: e */
        public void mo4175e(LeftRightSubscriber leftRightSubscriber) {
            this.f16042i.mo4424c(leftRightSubscriber);
            this.f16049p.decrementAndGet();
            m4196g();
        }

        /* renamed from: f */
        void m4197f() {
            this.f16042i.dispose();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: g */
        void m4196g() {
            if (getAndIncrement() == 0) {
                SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f16041h;
                Subscriber<? super R> subscriber = this.f16039f;
                int i = 1;
                while (!this.f16052s) {
                    if (this.f16045l.get() != null) {
                        spscLinkedArrayQueue.clear();
                        m4197f();
                        m4195h(subscriber);
                        return;
                    }
                    boolean z = this.f16049p.get() == 0;
                    Integer num = (Integer) spscLinkedArrayQueue.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        for (UnicastProcessor<TRight> unicastProcessor : this.f16043j.values()) {
                            unicastProcessor.onComplete();
                        }
                        this.f16043j.clear();
                        this.f16044k.clear();
                        this.f16042i.dispose();
                        subscriber.onComplete();
                        return;
                    } else if (z2) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        Object poll = spscLinkedArrayQueue.poll();
                        if (num == f16035t) {
                            UnicastProcessor<TRight> E = UnicastProcessor.m3312E();
                            int i2 = this.f16050q;
                            this.f16050q = i2 + 1;
                            this.f16043j.put(Integer.valueOf(i2), E);
                            try {
                                Object apply = this.f16046m.apply(poll);
                                ObjectHelper.m4363e(apply, "The leftEnd returned a null Publisher");
                                Publisher publisher = (Publisher) apply;
                                LeftRightEndSubscriber leftRightEndSubscriber = new LeftRightEndSubscriber(this, true, i2);
                                this.f16042i.mo4425b(leftRightEndSubscriber);
                                publisher.mo5c(leftRightEndSubscriber);
                                if (this.f16045l.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m4197f();
                                    m4195h(subscriber);
                                    return;
                                }
                                try {
                                    Object obj = (Object) this.f16048o.apply(poll, E);
                                    ObjectHelper.m4363e(obj, "The resultSelector returned a null value");
                                    if (this.f16040g.get() != 0) {
                                        subscriber.onNext(obj);
                                        BackpressureHelper.m3450e(this.f16040g, 1L);
                                        for (TRight tright : this.f16044k.values()) {
                                            E.onNext(tright);
                                        }
                                    } else {
                                        m4194i(new MissingBackpressureException("Could not emit value due to lack of requests"), subscriber, spscLinkedArrayQueue);
                                        return;
                                    }
                                } catch (Throwable th) {
                                    m4194i(th, subscriber, spscLinkedArrayQueue);
                                    return;
                                }
                            } catch (Throwable th2) {
                                m4194i(th2, subscriber, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f16036u) {
                            int i3 = this.f16051r;
                            this.f16051r = i3 + 1;
                            this.f16044k.put(Integer.valueOf(i3), poll);
                            try {
                                Object apply2 = this.f16047n.apply(poll);
                                ObjectHelper.m4363e(apply2, "The rightEnd returned a null Publisher");
                                Publisher publisher2 = (Publisher) apply2;
                                LeftRightEndSubscriber leftRightEndSubscriber2 = new LeftRightEndSubscriber(this, false, i3);
                                this.f16042i.mo4425b(leftRightEndSubscriber2);
                                publisher2.mo5c(leftRightEndSubscriber2);
                                if (this.f16045l.get() != null) {
                                    spscLinkedArrayQueue.clear();
                                    m4197f();
                                    m4195h(subscriber);
                                    return;
                                }
                                for (UnicastProcessor<TRight> unicastProcessor2 : this.f16043j.values()) {
                                    unicastProcessor2.onNext(poll);
                                }
                            } catch (Throwable th3) {
                                m4194i(th3, subscriber, spscLinkedArrayQueue);
                                return;
                            }
                        } else if (num == f16037v) {
                            LeftRightEndSubscriber leftRightEndSubscriber3 = (LeftRightEndSubscriber) poll;
                            UnicastProcessor<TRight> remove = this.f16043j.remove(Integer.valueOf(leftRightEndSubscriber3.f16055h));
                            this.f16042i.mo4426a(leftRightEndSubscriber3);
                            if (remove != null) {
                                remove.onComplete();
                            }
                        } else if (num == f16038w) {
                            LeftRightEndSubscriber leftRightEndSubscriber4 = (LeftRightEndSubscriber) poll;
                            this.f16044k.remove(Integer.valueOf(leftRightEndSubscriber4.f16055h));
                            this.f16042i.mo4426a(leftRightEndSubscriber4);
                        }
                    }
                }
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: h */
        void m4195h(Subscriber<?> subscriber) {
            Throwable b = ExceptionHelper.m3437b(this.f16045l);
            for (UnicastProcessor<TRight> unicastProcessor : this.f16043j.values()) {
                unicastProcessor.onError(b);
            }
            this.f16043j.clear();
            this.f16044k.clear();
            subscriber.onError(b);
        }

        /* renamed from: i */
        void m4194i(Throwable th, Subscriber<?> subscriber, SimpleQueue<?> simpleQueue) {
            Exceptions.m4428b(th);
            ExceptionHelper.m3438a(this.f16045l, th);
            simpleQueue.clear();
            m4197f();
            m4195h(subscriber);
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f16040g, j);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupJoin$JoinSupport.class */
    public interface JoinSupport {
        /* renamed from: a */
        void mo4179a(Throwable th);

        /* renamed from: b */
        void mo4178b(Throwable th);

        /* renamed from: c */
        void mo4177c(boolean z, Object obj);

        /* renamed from: d */
        void mo4176d(boolean z, LeftRightEndSubscriber leftRightEndSubscriber);

        /* renamed from: e */
        void mo4175e(LeftRightSubscriber leftRightSubscriber);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightEndSubscriber.class */
    public static final class LeftRightEndSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: f */
        final JoinSupport f16053f;

        /* renamed from: g */
        final boolean f16054g;

        /* renamed from: h */
        final int f16055h;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightEndSubscriber(JoinSupport joinSupport, boolean z, int i) {
            this.f16053f = joinSupport;
            this.f16054g = z;
            this.f16055h = i;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16053f.mo4176d(this.f16054g, this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16053f.mo4178b(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            if (SubscriptionHelper.cancel(this)) {
                this.f16053f.mo4176d(this.f16054g, this);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableGroupJoin$LeftRightSubscriber.class */
    static final class LeftRightSubscriber extends AtomicReference<Subscription> implements FlowableSubscriber<Object>, Disposable {
        private static final long serialVersionUID = 1883890389173668373L;

        /* renamed from: f */
        final JoinSupport f16056f;

        /* renamed from: g */
        final boolean f16057g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public LeftRightSubscriber(JoinSupport joinSupport, boolean z) {
            this.f16056f = joinSupport;
            this.f16057g = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            SubscriptionHelper.cancel(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == SubscriptionHelper.CANCELLED;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f16056f.mo4175e(this);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f16056f.mo4179a(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(Object obj) {
            this.f16056f.mo4177c(this.f16057g, obj);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, Long.MAX_VALUE);
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super R> subscriber) {
        GroupJoinSubscription groupJoinSubscription = new GroupJoinSubscription(subscriber, this.f16032i, this.f16033j, this.f16034k);
        subscriber.onSubscribe(groupJoinSubscription);
        LeftRightSubscriber leftRightSubscriber = new LeftRightSubscriber(groupJoinSubscription, true);
        groupJoinSubscription.f16042i.mo4425b(leftRightSubscriber);
        LeftRightSubscriber leftRightSubscriber2 = new LeftRightSubscriber(groupJoinSubscription, false);
        groupJoinSubscription.f16042i.mo4425b(leftRightSubscriber2);
        this.f15411g.m4493v(leftRightSubscriber);
        this.f16031h.mo5c(leftRightSubscriber2);
    }
}
