package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.QueueSubscription;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat.class */
public final class CompletableConcat extends Completable {

    /* renamed from: f */
    final Publisher<? extends CompletableSource> f15244f;

    /* renamed from: g */
    final int f15245g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber.class */
    static final class CompletableConcatSubscriber extends AtomicInteger implements FlowableSubscriber<CompletableSource>, Disposable {
        private static final long serialVersionUID = 9032184911934499404L;

        /* renamed from: f */
        final CompletableObserver f15246f;

        /* renamed from: g */
        final int f15247g;

        /* renamed from: h */
        final int f15248h;

        /* renamed from: i */
        final ConcatInnerObserver f15249i = new ConcatInnerObserver(this);

        /* renamed from: j */
        final AtomicBoolean f15250j = new AtomicBoolean();

        /* renamed from: k */
        int f15251k;

        /* renamed from: l */
        int f15252l;

        /* renamed from: m */
        SimpleQueue<CompletableSource> f15253m;

        /* renamed from: n */
        Subscription f15254n;

        /* renamed from: o */
        volatile boolean f15255o;

        /* renamed from: p */
        volatile boolean f15256p;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableConcat$CompletableConcatSubscriber$ConcatInnerObserver.class */
        public static final class ConcatInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = -5454794857847146511L;

            /* renamed from: f */
            final CompletableConcatSubscriber f15257f;

            ConcatInnerObserver(CompletableConcatSubscriber completableConcatSubscriber) {
                this.f15257f = completableConcatSubscriber;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f15257f.m4337b();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f15257f.m4336c(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }
        }

        CompletableConcatSubscriber(CompletableObserver completableObserver, int i) {
            this.f15246f = completableObserver;
            this.f15247g = i;
            this.f15248h = i - (i >> 2);
        }

        /* renamed from: a */
        void m4338a() {
            if (getAndIncrement() == 0) {
                while (!isDisposed()) {
                    if (!this.f15256p) {
                        boolean z = this.f15255o;
                        try {
                            CompletableSource poll = this.f15253m.poll();
                            boolean z2 = poll == null;
                            if (!z || !z2) {
                                if (!z2) {
                                    this.f15256p = true;
                                    poll.mo4514b(this.f15249i);
                                    m4334e();
                                }
                            } else if (this.f15250j.compareAndSet(false, true)) {
                                this.f15246f.onComplete();
                                return;
                            } else {
                                return;
                            }
                        } catch (Throwable th) {
                            Exceptions.m4428b(th);
                            m4336c(th);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        /* renamed from: b */
        void m4337b() {
            this.f15256p = false;
            m4338a();
        }

        /* renamed from: c */
        void m4336c(Throwable th) {
            if (this.f15250j.compareAndSet(false, true)) {
                this.f15254n.cancel();
                this.f15246f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: d */
        public void onNext(CompletableSource completableSource) {
            if (this.f15251k != 0 || this.f15253m.offer(completableSource)) {
                m4338a();
            } else {
                onError(new MissingBackpressureException());
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15254n.cancel();
            DisposableHelper.dispose(this.f15249i);
        }

        /* renamed from: e */
        void m4334e() {
            if (this.f15251k != 1) {
                int i = this.f15252l + 1;
                if (i == this.f15248h) {
                    this.f15252l = 0;
                    this.f15254n.request(i);
                    return;
                }
                this.f15252l = i;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f15249i.get());
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            this.f15255o = true;
            m4338a();
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (this.f15250j.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f15249i);
                this.f15246f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15254n, subscription)) {
                this.f15254n = subscription;
                int i = this.f15247g;
                long j = i == Integer.MAX_VALUE ? Long.MAX_VALUE : i;
                if (subscription instanceof QueueSubscription) {
                    QueueSubscription queueSubscription = (QueueSubscription) subscription;
                    int requestFusion = queueSubscription.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f15251k = requestFusion;
                        this.f15253m = queueSubscription;
                        this.f15255o = true;
                        this.f15246f.onSubscribe(this);
                        m4338a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f15251k = requestFusion;
                        this.f15253m = queueSubscription;
                        this.f15246f.onSubscribe(this);
                        subscription.request(j);
                        return;
                    }
                }
                if (this.f15247g == Integer.MAX_VALUE) {
                    this.f15253m = new SpscLinkedArrayQueue(Flowable.m4511a());
                } else {
                    this.f15253m = new SpscArrayQueue(this.f15247g);
                }
                this.f15246f.onSubscribe(this);
                subscription.request(j);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        this.f15244f.mo5c(new CompletableConcatSubscriber(completableObserver, this.f15245g));
    }
}
