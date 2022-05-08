package io.reactivex.internal.operators.flowable;

import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.annotations.Nullable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableMap;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.BasicIntQueueSubscription;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.BackpressureHelper;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCombineLatest.class */
public final class FlowableCombineLatest<T, R> extends Flowable<R> {
    @Nullable

    /* renamed from: g */
    final Publisher<? extends T>[] f15608g;
    @Nullable

    /* renamed from: h */
    final Iterable<? extends Publisher<? extends T>> f15609h;

    /* renamed from: i */
    final Function<? super Object[], ? extends R> f15610i;

    /* renamed from: j */
    final int f15611j;

    /* renamed from: k */
    final boolean f15612k;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestCoordinator.class */
    static final class CombineLatestCoordinator<T, R> extends BasicIntQueueSubscription<R> {
        private static final long serialVersionUID = -5082275438355852221L;

        /* renamed from: f */
        final Subscriber<? super R> f15613f;

        /* renamed from: g */
        final Function<? super Object[], ? extends R> f15614g;

        /* renamed from: h */
        final CombineLatestInnerSubscriber<T>[] f15615h;

        /* renamed from: i */
        final SpscLinkedArrayQueue<Object> f15616i;

        /* renamed from: j */
        final Object[] f15617j;

        /* renamed from: k */
        final boolean f15618k;

        /* renamed from: l */
        boolean f15619l;

        /* renamed from: m */
        int f15620m;

        /* renamed from: n */
        int f15621n;

        /* renamed from: o */
        volatile boolean f15622o;

        /* renamed from: p */
        final AtomicLong f15623p;

        /* renamed from: q */
        volatile boolean f15624q;

        /* renamed from: r */
        final AtomicReference<Throwable> f15625r;

        CombineLatestCoordinator(Subscriber<? super R> subscriber, Function<? super Object[], ? extends R> function, int i, int i2, boolean z) {
            this.f15613f = subscriber;
            this.f15614g = function;
            CombineLatestInnerSubscriber<T>[] combineLatestInnerSubscriberArr = new CombineLatestInnerSubscriber[i];
            for (int i3 = 0; i3 < i; i3++) {
                combineLatestInnerSubscriberArr[i3] = new CombineLatestInnerSubscriber<>(this, i3, i2);
            }
            this.f15615h = combineLatestInnerSubscriberArr;
            this.f15617j = new Object[i];
            this.f15616i = new SpscLinkedArrayQueue<>(i2);
            this.f15623p = new AtomicLong();
            this.f15625r = new AtomicReference<>();
            this.f15618k = z;
        }

        /* renamed from: b */
        void m4290b() {
            if (getAndIncrement() == 0) {
                if (this.f15619l) {
                    m4286j();
                } else {
                    m4287i();
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f15622o = true;
            m4289d();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
            this.f15616i.clear();
        }

        /* renamed from: d */
        void m4289d() {
            for (CombineLatestInnerSubscriber<T> combineLatestInnerSubscriber : this.f15615h) {
                combineLatestInnerSubscriber.m4281a();
            }
        }

        /* renamed from: f */
        boolean m4288f(boolean z, boolean z2, Subscriber<?> subscriber, SpscLinkedArrayQueue<?> spscLinkedArrayQueue) {
            if (this.f15622o) {
                m4289d();
                spscLinkedArrayQueue.clear();
                return true;
            } else if (!z) {
                return false;
            } else {
                if (!this.f15618k) {
                    Throwable b = ExceptionHelper.m3437b(this.f15625r);
                    if (b != null && b != ExceptionHelper.f19422a) {
                        m4289d();
                        spscLinkedArrayQueue.clear();
                        subscriber.onError(b);
                        return true;
                    } else if (!z2) {
                        return false;
                    } else {
                        m4289d();
                        subscriber.onComplete();
                        return true;
                    }
                } else if (!z2) {
                    return false;
                } else {
                    m4289d();
                    Throwable b2 = ExceptionHelper.m3437b(this.f15625r);
                    if (b2 == null || b2 == ExceptionHelper.f19422a) {
                        subscriber.onComplete();
                        return true;
                    }
                    subscriber.onError(b2);
                    return true;
                }
            }
        }

        /* renamed from: i */
        void m4287i() {
            int i;
            int addAndGet;
            Subscriber<? super R> subscriber = this.f15613f;
            SpscLinkedArrayQueue<?> spscLinkedArrayQueue = this.f15616i;
            int i2 = 1;
            do {
                long j = this.f15623p.get();
                long j2 = 0;
                while (true) {
                    i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                    if (i == 0) {
                        break;
                    }
                    boolean z = this.f15624q;
                    Object poll = spscLinkedArrayQueue.poll();
                    boolean z2 = poll == null;
                    if (!m4288f(z, z2, subscriber, spscLinkedArrayQueue)) {
                        if (z2) {
                            break;
                        }
                        try {
                            Object obj = (Object) this.f15614g.apply((Object[]) spscLinkedArrayQueue.poll());
                            ObjectHelper.m4363e(obj, "The combiner returned a null value");
                            subscriber.onNext(obj);
                            ((CombineLatestInnerSubscriber) poll).m4280b();
                            j2++;
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            m4289d();
                            ExceptionHelper.m3438a(this.f15625r, th);
                            subscriber.onError(ExceptionHelper.m3437b(this.f15625r));
                            return;
                        }
                    } else {
                        return;
                    }
                }
                if (i != 0 || !m4288f(this.f15624q, spscLinkedArrayQueue.isEmpty(), subscriber, spscLinkedArrayQueue)) {
                    if (!(j2 == 0 || j == Long.MAX_VALUE)) {
                        this.f15623p.addAndGet(-j2);
                    }
                    addAndGet = addAndGet(-i2);
                    i2 = addAndGet;
                } else {
                    return;
                }
            } while (addAndGet != 0);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return this.f15616i.isEmpty();
        }

        /* renamed from: j */
        void m4286j() {
            Subscriber<? super R> subscriber = this.f15613f;
            SpscLinkedArrayQueue<Object> spscLinkedArrayQueue = this.f15616i;
            int i = 1;
            while (!this.f15622o) {
                Throwable th = this.f15625r.get();
                if (th != null) {
                    spscLinkedArrayQueue.clear();
                    subscriber.onError(th);
                    return;
                }
                boolean z = this.f15624q;
                boolean isEmpty = spscLinkedArrayQueue.isEmpty();
                if (!isEmpty) {
                    subscriber.onNext(null);
                }
                if (!z || !isEmpty) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    subscriber.onComplete();
                    return;
                }
            }
            spscLinkedArrayQueue.clear();
        }

        /* renamed from: k */
        void m4285k(int i) {
            synchronized (this) {
                Object[] objArr = this.f15617j;
                if (objArr[i] != null) {
                    int i2 = this.f15621n + 1;
                    if (i2 == objArr.length) {
                        this.f15624q = true;
                    } else {
                        this.f15621n = i2;
                        return;
                    }
                } else {
                    this.f15624q = true;
                }
                m4290b();
            }
        }

        /* renamed from: l */
        void m4284l(int i, Throwable th) {
            if (!ExceptionHelper.m3438a(this.f15625r, th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f15618k) {
                m4289d();
                this.f15624q = true;
                m4290b();
            } else {
                m4285k(i);
            }
        }

        /* renamed from: m */
        void m4283m(int i, T t) {
            boolean z;
            synchronized (this) {
                Object[] objArr = this.f15617j;
                int i2 = this.f15620m;
                int i3 = i2;
                if (objArr[i] == null) {
                    i3 = i2 + 1;
                    this.f15620m = i3;
                }
                objArr[i] = t;
                if (objArr.length == i3) {
                    this.f15616i.m3545o(this.f15615h[i], objArr.clone());
                    z = false;
                } else {
                    z = true;
                }
            }
            if (z) {
                this.f15615h[i].m4280b();
            } else {
                m4290b();
            }
        }

        /* renamed from: n */
        void m4282n(Publisher<? extends T>[] publisherArr, int i) {
            CombineLatestInnerSubscriber<T>[] combineLatestInnerSubscriberArr = this.f15615h;
            for (int i2 = 0; i2 < i && !this.f15624q && !this.f15622o; i2++) {
                publisherArr[i2].mo5c(combineLatestInnerSubscriberArr[i2]);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public R poll() throws Exception {
            Object poll = this.f15616i.poll();
            if (poll == null) {
                return null;
            }
            R r = (R) this.f15614g.apply((Object[]) this.f15616i.poll());
            ObjectHelper.m4363e(r, "The combiner returned a null value");
            ((CombineLatestInnerSubscriber) poll).m4280b();
            return r;
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                BackpressureHelper.m3454a(this.f15623p, j);
                m4290b();
            }
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            boolean z = false;
            if ((i & 4) != 0) {
                return 0;
            }
            int i2 = i & 2;
            if (i2 != 0) {
                z = true;
            }
            this.f15619l = z;
            return i2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCombineLatest$CombineLatestInnerSubscriber.class */
    public static final class CombineLatestInnerSubscriber<T> extends AtomicReference<Subscription> implements FlowableSubscriber<T> {
        private static final long serialVersionUID = -8730235182291002949L;

        /* renamed from: f */
        final CombineLatestCoordinator<T, ?> f15626f;

        /* renamed from: g */
        final int f15627g;

        /* renamed from: h */
        final int f15628h;

        /* renamed from: i */
        final int f15629i;

        /* renamed from: j */
        int f15630j;

        CombineLatestInnerSubscriber(CombineLatestCoordinator<T, ?> combineLatestCoordinator, int i, int i2) {
            this.f15626f = combineLatestCoordinator;
            this.f15627g = i;
            this.f15628h = i2;
            this.f15629i = i2 - (i2 >> 2);
        }

        /* renamed from: a */
        public void m4281a() {
            SubscriptionHelper.cancel(this);
        }

        /* renamed from: b */
        public void m4280b() {
            int i = this.f15630j + 1;
            if (i == this.f15629i) {
                this.f15630j = 0;
                get().request(i);
                return;
            }
            this.f15630j = i;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15626f.m4285k(this.f15627g);
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f15626f.m4284l(this.f15627g, th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            this.f15626f.m4283m(this.f15627g, t);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            SubscriptionHelper.setOnce(this, subscription, this.f15628h);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableCombineLatest$SingletonArrayFunc.class */
    final class SingletonArrayFunc implements Function<T, R> {
        SingletonArrayFunc() {
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object[], java.lang.Object] */
        @Override // io.reactivex.functions.Function
        public R apply(T t) throws Exception {
            return (R) FlowableCombineLatest.this.f15610i.apply(new Object[]{t});
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    public void mo3305w(Subscriber<? super R> subscriber) {
        int i;
        Publisher<? extends T>[] publisherArr = this.f15608g;
        if (publisherArr == null) {
            publisherArr = new Publisher[8];
            try {
                Iterator<? extends Publisher<? extends T>> it = this.f15609h.iterator();
                ObjectHelper.m4363e(it, "The iterator returned is null");
                Iterator<? extends Publisher<? extends T>> it2 = it;
                i = 0;
                while (it2.hasNext()) {
                    try {
                        try {
                            Object next = it2.next();
                            ObjectHelper.m4363e(next, "The publisher returned by the iterator is null");
                            Publisher<? extends T> publisher = (Publisher) next;
                            Publisher<? extends T>[] publisherArr2 = publisherArr;
                            if (i == publisherArr.length) {
                                publisherArr2 = new Publisher[(i >> 2) + i];
                                System.arraycopy(publisherArr, 0, publisherArr2, 0, i);
                            }
                            publisherArr2[i] = publisher;
                            i++;
                            publisherArr = publisherArr2;
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            EmptySubscription.error(th, subscriber);
                            return;
                        }
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        EmptySubscription.error(th2, subscriber);
                        return;
                    }
                }
            } catch (Throwable th3) {
                Exceptions.m4428b(th3);
                EmptySubscription.error(th3, subscriber);
                return;
            }
        } else {
            i = publisherArr.length;
        }
        if (i == 0) {
            EmptySubscription.complete(subscriber);
        } else if (i == 1) {
            publisherArr[0].mo5c(new FlowableMap.MapSubscriber(subscriber, new SingletonArrayFunc()));
        } else {
            CombineLatestCoordinator combineLatestCoordinator = new CombineLatestCoordinator(subscriber, this.f15610i, i, this.f15611j, this.f15612k);
            subscriber.onSubscribe(combineLatestCoordinator);
            combineLatestCoordinator.m4282n(publisherArr, i);
        }
    }
}
