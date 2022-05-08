package io.reactivex.internal.operators.flowable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Flowable;
import io.reactivex.FlowableSubscriber;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToFlowable;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable.class */
public final class FlowableFlatMapCompletableCompletable<T> extends Completable implements FuseToFlowable<T> {

    /* renamed from: f */
    final Flowable<T> f15902f;

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f15903g;

    /* renamed from: h */
    final int f15904h;

    /* renamed from: i */
    final boolean f15905i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber.class */
    static final class FlatMapCompletableMainSubscriber<T> extends AtomicInteger implements FlowableSubscriber<T>, Disposable {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: f */
        final CompletableObserver f15906f;

        /* renamed from: h */
        final Function<? super T, ? extends CompletableSource> f15908h;

        /* renamed from: i */
        final boolean f15909i;

        /* renamed from: k */
        final int f15911k;

        /* renamed from: l */
        Subscription f15912l;

        /* renamed from: m */
        volatile boolean f15913m;

        /* renamed from: g */
        final AtomicThrowable f15907g = new AtomicThrowable();

        /* renamed from: j */
        final CompositeDisposable f15910j = new CompositeDisposable();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableFlatMapCompletableCompletable$FlatMapCompletableMainSubscriber$InnerObserver.class */
        final class InnerObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 8606673141535671828L;

            InnerObserver() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapCompletableMainSubscriber.this.m4235a(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                FlatMapCompletableMainSubscriber.this.m4234b(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        FlatMapCompletableMainSubscriber(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z, int i) {
            this.f15906f = completableObserver;
            this.f15908h = function;
            this.f15909i = z;
            this.f15911k = i;
            lazySet(1);
        }

        /* renamed from: a */
        void m4235a(FlatMapCompletableMainSubscriber<T>.InnerObserver innerObserver) {
            this.f15910j.mo4424c(innerObserver);
            onComplete();
        }

        /* renamed from: b */
        void m4234b(FlatMapCompletableMainSubscriber<T>.InnerObserver innerObserver, Throwable th) {
            this.f15910j.mo4424c(innerObserver);
            onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15913m = true;
            this.f15912l.cancel();
            this.f15910j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15910j.isDisposed();
        }

        @Override // org.reactivestreams.Subscriber
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable b = this.f15907g.m3455b();
                if (b != null) {
                    this.f15906f.onError(b);
                } else {
                    this.f15906f.onComplete();
                }
            } else if (this.f15911k != Integer.MAX_VALUE) {
                this.f15912l.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onError(Throwable th) {
            if (!this.f15907g.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f15909i) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f15906f.onError(this.f15907g.m3455b());
                }
            } else if (decrementAndGet() == 0) {
                this.f15906f.onError(this.f15907g.m3455b());
            } else if (this.f15911k != Integer.MAX_VALUE) {
                this.f15912l.request(1L);
            }
        }

        @Override // org.reactivestreams.Subscriber
        public void onNext(T t) {
            try {
                Object apply = this.f15908h.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) apply;
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.f15913m && this.f15910j.mo4425b(innerObserver)) {
                    completableSource.mo4514b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f15912l.cancel();
                onError(th);
            }
        }

        @Override // io.reactivex.FlowableSubscriber, org.reactivestreams.Subscriber
        public void onSubscribe(Subscription subscription) {
            if (SubscriptionHelper.validate(this.f15912l, subscription)) {
                this.f15912l = subscription;
                this.f15906f.onSubscribe(this);
                int i = this.f15911k;
                if (i == Integer.MAX_VALUE) {
                    subscription.request(Long.MAX_VALUE);
                } else {
                    subscription.request(i);
                }
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15902f.m4493v(new FlatMapCompletableMainSubscriber(completableObserver, this.f15903g, this.f15905i, this.f15904h));
    }
}
