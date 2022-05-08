package io.reactivex.internal.operators.flowable;

import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.subscribers.QueueDrainSubscriber;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.QueueDrainHelper;
import io.reactivex.subscribers.SerializedSubscriber;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed.class */
public final class FlowableBufferTimed<T, U extends Collection<? super T>> extends AbstractFlowableWithUpstream<T, U> {

    /* renamed from: h */
    final long f15541h;

    /* renamed from: i */
    final long f15542i;

    /* renamed from: j */
    final TimeUnit f15543j;

    /* renamed from: k */
    final Scheduler f15544k;

    /* renamed from: l */
    final Callable<U> f15545l;

    /* renamed from: m */
    final int f15546m;

    /* renamed from: n */
    final boolean f15547n;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactBoundedSubscriber.class */
    static final class BufferExactBoundedSubscriber<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable, Disposable {

        /* renamed from: m */
        final Callable<U> f15548m;

        /* renamed from: n */
        final long f15549n;

        /* renamed from: o */
        final TimeUnit f15550o;

        /* renamed from: p */
        final int f15551p;

        /* renamed from: q */
        final boolean f15552q;

        /* renamed from: r */
        final Scheduler.Worker f15553r;

        /* renamed from: s */
        U f15554s;

        /* renamed from: t */
        Disposable f15555t;

        /* renamed from: u */
        Subscription f15556u;

        /* renamed from: v */
        long f15557v;

        /* renamed from: w */
        long f15558w;

        BufferExactBoundedSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, long j, TimeUnit timeUnit, int i, boolean z, Scheduler.Worker worker) {
            super(subscriber, new MpscLinkedQueue());
            this.f15548m = callable;
            this.f15549n = j;
            this.f15550o = timeUnit;
            this.f15551p = i;
            this.f15552q = z;
            this.f15553r = worker;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            if (!this.f19386j) {
                this.f19386j = true;
                dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            synchronized (this) {
                this.f15554s = null;
            }
            this.f15556u.cancel();
            this.f15553r.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15553r.isDisposed();
        }

        /* renamed from: m */
        public boolean mo3407f(Subscriber<? super U> subscriber, U u) {
            subscriber.onNext(u);
            return true;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            U u;
            synchronized (this) {
                u = this.f15554s;
                this.f15554s = null;
            }
            if (u != null) {
                this.f19385i.offer(u);
                this.f19387k = true;
                if (m3478h()) {
                    QueueDrainHelper.m3401e(this.f19385i, this.f19384h, false, this, this);
                }
                this.f15553r.dispose();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            synchronized (this) {
                this.f15554s = null;
            }
            this.f19384h.onError(th);
            this.f15553r.dispose();
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f15554s;
                if (u != null) {
                    u.add(t);
                    if (u.size() >= this.f15551p) {
                        this.f15554s = null;
                        this.f15557v++;
                        if (this.f15552q) {
                            this.f15555t.dispose();
                        }
                        m3475k(u, false, this);
                        try {
                            U call = this.f15548m.call();
                            ObjectHelper.m4363e(call, "The supplied buffer is null");
                            U u2 = call;
                            synchronized (this) {
                                this.f15554s = u2;
                                this.f15558w++;
                            }
                            if (this.f15552q) {
                                Scheduler.Worker worker = this.f15553r;
                                long j = this.f15549n;
                                this.f15555t = worker.mo3531d(this, j, j, this.f15550o);
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            cancel();
                            this.f19384h.onError(th);
                        }
                    }
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15556u, subscription)) {
                this.f15556u = subscription;
                try {
                    U call = this.f15548m.call();
                    ObjectHelper.m4363e(call, "The supplied buffer is null");
                    this.f15554s = call;
                    this.f19384h.onSubscribe(this);
                    Scheduler.Worker worker = this.f15553r;
                    long j = this.f15549n;
                    this.f15555t = worker.mo3531d(this, j, j, this.f15550o);
                    subscription.request(Long.MAX_VALUE);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15553r.dispose();
                    subscription.cancel();
                    EmptySubscription.error(th, this.f19384h);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U call = this.f15548m.call();
                ObjectHelper.m4363e(call, "The supplied buffer is null");
                U u = call;
                synchronized (this) {
                    U u2 = this.f15554s;
                    if (u2 != null && this.f15557v == this.f15558w) {
                        this.f15554s = u;
                        m3475k(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                this.f19384h.onError(th);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferExactUnboundedSubscriber.class */
    static final class BufferExactUnboundedSubscriber<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable, Disposable {

        /* renamed from: m */
        final Callable<U> f15559m;

        /* renamed from: n */
        final long f15560n;

        /* renamed from: o */
        final TimeUnit f15561o;

        /* renamed from: p */
        final Scheduler f15562p;

        /* renamed from: q */
        Subscription f15563q;

        /* renamed from: r */
        U f15564r;

        /* renamed from: s */
        final AtomicReference<Disposable> f15565s = new AtomicReference<>();

        BufferExactUnboundedSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(subscriber, new MpscLinkedQueue());
            this.f15559m = callable;
            this.f15560n = j;
            this.f15561o = timeUnit;
            this.f15562p = scheduler;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19386j = true;
            this.f15563q.cancel();
            DisposableHelper.dispose(this.f15565s);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            cancel();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15565s.get() == DisposableHelper.DISPOSED;
        }

        /* renamed from: m */
        public boolean mo3407f(Subscriber<? super U> subscriber, U u) {
            this.f19384h.onNext(u);
            return true;
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            DisposableHelper.dispose(this.f15565s);
            synchronized (this) {
                U u = this.f15564r;
                if (u != null) {
                    this.f15564r = null;
                    this.f19385i.offer(u);
                    this.f19387k = true;
                    if (m3478h()) {
                        QueueDrainHelper.m3401e(this.f19385i, this.f19384h, false, null, this);
                    }
                }
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f15565s);
            synchronized (this) {
                this.f15564r = null;
            }
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                U u = this.f15564r;
                if (u != null) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15563q, subscription)) {
                this.f15563q = subscription;
                try {
                    U call = this.f15559m.call();
                    ObjectHelper.m4363e(call, "The supplied buffer is null");
                    this.f15564r = call;
                    this.f19384h.onSubscribe(this);
                    if (!this.f19386j) {
                        subscription.request(Long.MAX_VALUE);
                        Scheduler scheduler = this.f15562p;
                        long j = this.f15560n;
                        Disposable f = scheduler.mo3501f(this, j, j, this.f15561o);
                        if (!this.f15565s.compareAndSet(null, f)) {
                            f.dispose();
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    EmptySubscription.error(th, this.f19384h);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                U call = this.f15559m.call();
                ObjectHelper.m4363e(call, "The supplied buffer is null");
                U u = call;
                synchronized (this) {
                    U u2 = this.f15564r;
                    if (u2 != null) {
                        this.f15564r = u;
                        m3476j(u2, false, this);
                    }
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                cancel();
                this.f19384h.onError(th);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferSkipBoundedSubscriber.class */
    static final class BufferSkipBoundedSubscriber<T, U extends Collection<? super T>> extends QueueDrainSubscriber<T, U, U> implements Subscription, Runnable {

        /* renamed from: m */
        final Callable<U> f15566m;

        /* renamed from: n */
        final long f15567n;

        /* renamed from: o */
        final long f15568o;

        /* renamed from: p */
        final TimeUnit f15569p;

        /* renamed from: q */
        final Scheduler.Worker f15570q;

        /* renamed from: r */
        final List<U> f15571r = new LinkedList();

        /* renamed from: s */
        Subscription f15572s;

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableBufferTimed$BufferSkipBoundedSubscriber$RemoveFromBuffer.class */
        final class RemoveFromBuffer implements Runnable {

            /* renamed from: f */
            private final U f15573f;

            RemoveFromBuffer(U u) {
                this.f15573f = u;
            }

            @Override // java.lang.Runnable
            public void run() {
                synchronized (BufferSkipBoundedSubscriber.this) {
                    BufferSkipBoundedSubscriber.this.f15571r.remove(this.f15573f);
                }
                BufferSkipBoundedSubscriber bufferSkipBoundedSubscriber = BufferSkipBoundedSubscriber.this;
                bufferSkipBoundedSubscriber.m3475k(this.f15573f, false, bufferSkipBoundedSubscriber.f15570q);
            }
        }

        BufferSkipBoundedSubscriber(Subscriber<? super U> subscriber, Callable<U> callable, long j, long j2, TimeUnit timeUnit, Scheduler.Worker worker) {
            super(subscriber, new MpscLinkedQueue());
            this.f15566m = callable;
            this.f15567n = j;
            this.f15568o = j2;
            this.f15569p = timeUnit;
            this.f15570q = worker;
        }

        @Override // org.reactivestreams.Subscription
        public void cancel() {
            this.f19386j = true;
            this.f15572s.cancel();
            this.f15570q.dispose();
            m4294o();
        }

        /* renamed from: m */
        public boolean mo3407f(Subscriber<? super U> subscriber, U u) {
            subscriber.onNext(u);
            return true;
        }

        /* renamed from: o */
        void m4294o() {
            synchronized (this) {
                this.f15571r.clear();
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            ArrayList<Collection> arrayList;
            synchronized (this) {
                arrayList = new ArrayList(this.f15571r);
                this.f15571r.clear();
            }
            for (Collection collection : arrayList) {
                this.f19385i.offer(collection);
            }
            this.f19387k = true;
            if (m3478h()) {
                QueueDrainHelper.m3401e(this.f19385i, this.f19384h, false, this.f15570q, this);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            this.f19387k = true;
            this.f15570q.dispose();
            m4294o();
            this.f19384h.onError(th);
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            synchronized (this) {
                for (U u : this.f15571r) {
                    u.add(t);
                }
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15572s, subscription)) {
                this.f15572s = subscription;
                try {
                    U call = this.f15566m.call();
                    ObjectHelper.m4363e(call, "The supplied buffer is null");
                    U u = call;
                    this.f15571r.add(u);
                    this.f19384h.onSubscribe(this);
                    subscription.request(Long.MAX_VALUE);
                    Scheduler.Worker worker = this.f15570q;
                    long j = this.f15568o;
                    worker.mo3531d(this, j, j, this.f15569p);
                    this.f15570q.mo3228c(new RemoveFromBuffer(u), this.f15567n, this.f15569p);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15570q.dispose();
                    subscription.cancel();
                    EmptySubscription.error(th, this.f19384h);
                }
            }
        }

        @Override // org.reactivestreams.Subscription
        public void request(long j) {
            m3474l(j);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f19386j) {
                try {
                    U call = this.f15566m.call();
                    ObjectHelper.m4363e(call, "The supplied buffer is null");
                    U u = call;
                    synchronized (this) {
                        if (!this.f19386j) {
                            this.f15571r.add(u);
                            this.f15570q.mo3228c(new RemoveFromBuffer(u), this.f15567n, this.f15569p);
                        }
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    cancel();
                    this.f19384h.onError(th);
                }
            }
        }
    }

    @Override // io.reactivex.Flowable
    /* renamed from: w */
    protected void mo3305w(Subscriber<? super U> subscriber) {
        if (this.f15541h == this.f15542i && this.f15546m == Integer.MAX_VALUE) {
            this.f15411g.m4493v(new BufferExactUnboundedSubscriber(new SerializedSubscriber(subscriber), this.f15545l, this.f15541h, this.f15543j, this.f15544k));
            return;
        }
        Scheduler.Worker b = this.f15544k.mo3232b();
        if (this.f15541h == this.f15542i) {
            this.f15411g.m4493v(new BufferExactBoundedSubscriber(new SerializedSubscriber(subscriber), this.f15545l, this.f15541h, this.f15543j, this.f15546m, this.f15547n, b));
        } else {
            this.f15411g.m4493v(new BufferSkipBoundedSubscriber(new SerializedSubscriber(subscriber), this.f15545l, this.f15541h, this.f15542i, this.f15543j, b));
        }
    }
}
